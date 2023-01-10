import express from 'express';
import AuthController from '../controllers/auth';
import UserController from '../controllers/user';
import QuizController from '../controllers/quiz';
import GraphicsController from '../controllers/graphics';
import NewsController from '../controllers/news';

import {validateUser} from '../middleware/Validators/ValidateUser';
import {validateLogin} from '../middleware/Validators/ValidateLogin';
import {authenticateToken} from '../middleware/auth';

const routes = express();

routes.post('/auth/login', validateLogin(), AuthController.login);

routes.post('/user/create', validateUser(), UserController.registerUser);
routes.put('/user/update/:userId', UserController.updateUser);
routes.get('/users', authenticateToken, UserController.getUsers);
routes.get('/user/:userId', authenticateToken, UserController.getUserById);

routes.get('/quiz', authenticateToken, QuizController.getQuiz);
routes.get('/quiz/answers/:userId', authenticateToken, QuizController.getQuizAnswersByUser);
routes.get('/quiz/answer/:quizAnswerId', authenticateToken, QuizController.getAnsweredQuizById);
routes.post('/quiz/answers/:quizId', authenticateToken, QuizController.submitQuiz);

routes.get('/graphics/quiz', authenticateToken, GraphicsController.getGraphicalData);
routes.get('/news', NewsController.getNews);

export default routes;
