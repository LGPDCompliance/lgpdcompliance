import Database from '../database';
import {QuizAnswer as QuizAnswerPrismaModel, Section} from '@prisma/client';
import {QuestionAnswer, Quiz, Feedback, Adequance} from '@prisma/client';
import {QuizAnswer, QuizQuestion, SectionFeedbacks} from '../types';
import adequanceMap from '../locales/pt-br/adequance';
import logger from '../log';


class QuizUtil {
  static async getQuiz(): Promise<Quiz | null> {
    const database = Database.getInstance();
    try {
      const quiz = await database.quiz.findFirst({
        include: {
          sections: {
            include: {
              questions: {
                include: {
                  alternatives: true,
                },
              },
            },
          },
        },
      });
      return quiz;
    } catch (err) {
      console.log(err);
    }
    return null;
  }

  static async getMaxScore(id:string):Promise<number | null> {
    const database = Database.getInstance();
    try {
      const quiz = await database.quiz.findUnique({
        where: {
          id,
        },
        select: {
          maxScore: true,
        },
      });

      return quiz ? quiz.maxScore : null;
    } catch (err) {
      console.log(err);
    }
    return null;
  }


  static getAdequanceLevel(score: number) {
    if (score <= 29) return Adequance.STARTER;
    if (score <= 49) return Adequance.BASIC;
    if (score <= 69) return Adequance.INTERMEDIATE;
    if (score <= 89) return Adequance.IMPROVEMENT;
    return Adequance.ENHANCED;
  }

  static calculateScore(answers:QuestionAnswer[], scoreMax:number) {
    const scoreSum = answers.reduce((score, answer) => score + answer.score, 0);
    const value = Math.trunc((scoreSum*100)/scoreMax);
    return value;
  }

  static async getFeedbacks(): Promise< Feedback[] | null> {
    const database = Database.getInstance();
    try {
      const feedbacks: Feedback[] = await database.feedback.findMany();
      return feedbacks;
    } catch (error) {
      console.log(error);
    }
    return null;
  }

  static async getSections(): Promise<Section[] | null> {
    const database = Database.getInstance();
    try {
      const sections: Section[] = await database.section.findMany();
      return sections;
    } catch (error) {
      console.log(error);
    }
    return null;
  }

  static aggregateFeedbacksWithSections(quizfeedbacks: Feedback[], sections: Section[]): SectionFeedbacks[] {
    const response: SectionFeedbacks[] = [];
    for (const section of sections) {
      const sectionTitle = section.title;
      const sectionFeedbacks = quizfeedbacks.filter((feedback) => feedback.sectionId === section.id);
      response.push({sectionTitle, sectionFeedbacks});
    }
    return response;
  }

  static getQuizAnswerFeedBacks(feedbacks: Feedback[], answers: QuestionAnswer[]): Feedback[] {
    const quizFeedbacks: Feedback[] = [];
    const checkedAnswers = new Map<string, boolean>();
    for (const answer of answers) {
      checkedAnswers.set(answer.alternativeId, true);
    }
    for (const feedback of feedbacks) {
      if (checkedAnswers.has(feedback.alternativeId)) {
        quizFeedbacks.push(feedback);
      }
    }
    return quizFeedbacks;
  }

  static async submitQuiz(answers:QuestionAnswer[], userId:string, quizId: string): Promise<QuizAnswer | null> {
    const database = Database.getInstance();

    logger.info('Getting Max-Score value from database.');
    const scoreMax = await this.getMaxScore(quizId);

    logger.info('Getting quiz FeedBacks from database.');
    const allfeedbacks = await this.getFeedbacks() || [];

    logger.info('Getting quiz Sections from database.');
    const sections = await this.getSections() || [];

    logger.info('Provide feedbacks to user by response quiz.');
    const quizFeedbacks = this.getQuizAnswerFeedBacks(allfeedbacks, answers);

    logger.info('Aggregating feedbacks into sections');
    const feedbacksBySection = this.aggregateFeedbacksWithSections(quizFeedbacks, sections);


    try {
      if (scoreMax && scoreMax !== 0) {
        logger.info('Calculating quiz score.');
        const score = this.calculateScore(answers, scoreMax);
        const adequance = this.getAdequanceLevel(score);
        const quizAnswer = await database.quizAnswer.create({
          data: {
            quizId,
            userId,
            score,
            adequance,
            answers: {
              create: answers,
            },
          },
        }) as QuizAnswer;


        const response: QuizAnswer = {...quizAnswer, feedbacks: feedbacksBySection};
        response.adequance = adequanceMap.get(quizAnswer.adequance as Adequance);
        return response;
      }
    } catch (err) {
      console.log(err);
    }
    return null;
  }

  static async getQuizAnswersByUser(userId:string): Promise<QuizAnswerPrismaModel[] | null> {
    const database = Database.getInstance();
    try {
      const quizAnswers = await database.quizAnswer.findMany(
          {
            where: {
              userId,
            },
          },
      );

      const response = quizAnswers.map((quizAnswer) => {
        quizAnswer.adequance = adequanceMap.get(quizAnswer.adequance) as Adequance;
        return quizAnswer;
      });

      return response;
    } catch (err) {
      console.log(err);
    }
    return null;
  }

  static createFeebacksMap(feedbacks: Feedback[]) {
    const feedbacksMapByAlternativeID = new Map<string, string>();
    feedbacks.forEach((feedback) => {
      feedbacksMapByAlternativeID.set(feedback.alternativeId, feedback.description);
    });
    return feedbacksMapByAlternativeID;
  }


  static async getAnsweredQuestions(quizAnswer: QuizAnswer) {
    const {quiz} = quizAnswer;
    const {answers} = quizAnswer;
    const questions: Map<string, QuizQuestion> = new Map();
    const answeredQuestions: QuizQuestion[] = [];
    const allfeedbacks = await this.getFeedbacks() || [] as Feedback[];
    const feedbacksMap = this.createFeebacksMap(allfeedbacks);

    quiz.questions.forEach((question) => {
      questions.set(question.id, question);
    });

    for (const answer of answers) {
      const {alternativeId, questionId} = answer;
      const questionsAnswered = questions.get(questionId);
      if (questionsAnswered) {
        questionsAnswered.answer = alternativeId;
        questionsAnswered.feedback = feedbacksMap.get(alternativeId) || null;
        answeredQuestions.push(questionsAnswered);
      }
    };

    return {id: quiz.id, questions: answeredQuestions};
  }

  static async getQuizAnswerById(quizAnswerId:string): Promise<QuizAnswerPrismaModel | null> {
    const database = Database.getInstance();
    try {
      const quizAnswer = await database.quizAnswer.findFirst(
          {
            where: {
              id: quizAnswerId,
            },
            include: {
              answers: true,
              quiz: {
                include: {
                  questions: {
                    include: {
                      alternatives: true,
                    },
                  },
                },
              },
            },
          },
      );
      return quizAnswer;
    } catch (err) {
      console.log(err);
    }
    return null;
  }
}

export default QuizUtil;
