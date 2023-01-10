/* eslint-disable max-len */
import {Request, Response, NextFunction} from 'express';
import jwt from 'jsonwebtoken';
import config from '../config';

const authenticateToken = (request: Request, response: Response, next: NextFunction) => {
  const authHeader = request.headers['authorization'];

  if (!authHeader) {
    return response.sendStatus(401);
  }

  const token = authHeader.split(' ')[1];

  if (!token) {
    return response.sendStatus(401);
  }

  jwt.verify(token, config.accessSecretToken, (err, user) => {
    if (err) return response.sendStatus(401);

    next();
  });
};

export {authenticateToken};
