import {Request} from 'express';
import {Result, ValidationError, validationResult} from 'express-validator';

class ValidatorsUtil {
  static validate(request: Request): Result<ValidationError> {
    return validationResult(request);
  }
}

export default ValidatorsUtil;
