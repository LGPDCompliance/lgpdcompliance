import {Request, Response} from 'express';
import jwt from 'jsonwebtoken';
import config from '../config';
import {UserQuery} from '../types';
import ValidatorsUtil from '../utils/ValidatorsUtil';
import AuthUtil from '../utils/AuthUtil';
import {User} from '@prisma/client';
import UserUtil from '../utils/UserUtil';

class AuthController {
  private static generateAccessToken(user: User): string {
    return jwt.sign(user, config.accessSecretToken, {expiresIn: '24h'});
  };

  static async login(request:Request, response:Response) {
    const {email, password} = request.body;

    const errors = ValidatorsUtil.validate(request);
    if (!errors.isEmpty()) {
      return response.status(400).json({errors: errors.array()});
    }

    const userAuth = await AuthUtil.getAuthenticationByEmail(email);

    if (!userAuth) {
      return response.status(404).json({
        message: 'Usuário não cadastrado ou email inválido',
      });
    }

    const isAuthenticated = await AuthUtil.authenticateUser(userAuth, password);

    if (!isAuthenticated) {
      return response.status(404).json({
        message: 'Senha inválida',
      });
    }

    const user: UserQuery = await UserUtil.getUserByEmail(userAuth.email);

    if (user) {
      const accessToken = AuthController.generateAccessToken(user);
      const refreshToken = jwt.sign(user, config.refreshSecretToken);
      return response.json({user, accessToken, refreshToken});
    }

    return response.status(400).json({
      message: 'Não foi possível efetuar login, tente novamente.',
    });
  }
}

export default AuthController;
