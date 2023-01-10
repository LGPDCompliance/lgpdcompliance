/* eslint-disable no-unused-vars */
import {Alternative, Feedback, QuestionAnswer, User, UserRegister} from '@prisma/client';

export interface UserSession {
  email: string
  password: string
}
export interface UserSessionToken {
  user: User
  token: string,
  refreshToken: string
}

export interface UpdateUserData {
  name?: string,
  email?: string
}

export type UserQuery = User | null
export type UserRegisterQuery = UserRegister | null

export interface QuizQuestion {
  id: string
  title: string
  type: string,
  complianceId: string,
  alternatives?: Alternative[]
  answer?: string
  feedback: string | null
}

export interface Quiz {
  id: string,
  questions: QuizQuestion[]
}

export interface QuizAnswer {
  id: string,
  quizId: string,
  userId: string,
  score: number,
  createdAt: Date,
  answers: QuestionAnswer[],
  quiz: Quiz
  adequance?: string,
  feedbacks?: SectionFeedbacks[]
}

export interface QuizStatistics {
  weekAmount: AmountDay[],
  amountEachTrack: AmountTrack[]
}

export interface AmountDay{
  writingDay: string,
  day: number,
  amount: number
}

export interface AmountTrack{
  track: number,
  amount: number,
  description: string
}

export interface DataQuizAnswer {
  score: number,
  createdAt: Date
}


export interface SectionFeedbacks {
  sectionTitle: string
  sectionFeedbacks: Feedback[]
}
