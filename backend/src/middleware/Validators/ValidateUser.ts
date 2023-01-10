import {NextFunction, Response, Request} from 'express';
import {ValidationChain, validationResult} from 'express-validator';
import {body} from 'express-validator';


const rules: ValidationChain[] = [
  body('name')
      .notEmpty()
      .withMessage('O campo nome é obrigatório')
      .matches(/^([a-zA-Zà-úÀ-Ú]|\s)+$/)
      .withMessage('O nome do usuário não deve conter caracteres especiais')
      .isLength({max: 50})
      .withMessage('Este campo deve conter no máximo 50 caracteres')
      .trim(),

  body('password')
      .notEmpty()
      .withMessage('O campo senha é obrigatório')
      .isLength({min: 6, max: 20})
      .withMessage('A Senha deve conter no mínimo 6 caracteres'),

  body('email')
      .notEmpty()
      .withMessage('O campo email é obrigatório')
      .isEmail()
      .withMessage('Email inválido, digite um email válido')
      .normalizeEmail()
      .trim(),
];

const validateUser = () => {
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


export {validateUser};
