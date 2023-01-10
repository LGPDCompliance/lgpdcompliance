import {Request, Response} from 'express';
import {QuizAnswer} from '../types';
import QuizUtil from '../utils/QuizUtil';


class QuizController {
  static async getQuiz(request:Request, response:Response): Promise<Response> {
    try {
      const quiz = await QuizUtil.getQuiz();

      return response.json(quiz);
    } catch (err) {
      console.log(err);
    }

    return response.status(400).json({
      message: 'Quiz não encontrado.',
    });
  }

  static async submitQuiz(request:Request, response:Response): Promise<Response> {
    const {quizId} = request.params;
    const {answers, userId} = request.body;
    try {
      const quizAnswer = await QuizUtil.submitQuiz(answers, userId, quizId);

      return response.status(201).json(quizAnswer);
    } catch (err) {
      console.log(err);
    }

    return response.status(400).json({
      message: 'Erro ao submeter respostas ao questionário',
    });
  }

  static async getQuizAnswersByUser(request:Request, response:Response): Promise<Response> {
    const {userId} = request.params;
    try {
      const quizAnswers = await QuizUtil.getQuizAnswersByUser(userId);
      return response.json(quizAnswers);
    } catch (err) {
      console.log(err);
    }

    return response.status(400).json({
      message: 'Não foi possível buscar o histórico',
    });
  }

  static async getAnsweredQuizById(request:Request, response:Response): Promise<Response> {
    const {quizAnswerId} = request.params;

    try {
      const quizAnswer = await QuizUtil.getQuizAnswerById(quizAnswerId) as QuizAnswer;
      if (quizAnswer) {
        const answeredQuestions = await QuizUtil.getAnsweredQuestions(quizAnswer);
        return response.status(200).json(answeredQuestions);
      }
    } catch (err) {
      console.log(err);
    }

    return response.status(400).json({
      message: 'Não foi possível buscar o questionário',
    });
  }
}

export default QuizController;
