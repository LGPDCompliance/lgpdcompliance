import {NextFunction, Response, Request} from 'express';
import {ValidationChain, validationResult} from 'express-validator';
import {check} from 'express-validator';


const rules: ValidationChain[] = [
  check('password')
      .notEmpty()
      .withMessage('O campo senha é obrigatório')
      .isLength({min: 6, max: 20})
      .withMessage('A Senha deve conter no mínimo 6 caracteres'),

  check('email')
      .notEmpty()
      .withMessage('O campo email é obrigatório')
      .isEmail()
      .withMessage('Email inválido, digite um email válido')
      .normalizeEmail()
      .trim(),
];

const validateLogin = () => {
  return async (request: Request, response: Response, next: NextFunction) => {
    for (const validation of rules) {
      const result = await validation.run(request);
      if (!result.isEmpty()) break;
    }

    const errors = validationResult(response);
    if (errors.isEmpty()) {
      return next();
    }

    response.status(400).json({errors: errors.array()});
  };
};


export {validateLogin};
