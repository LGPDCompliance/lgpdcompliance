import {NextFunction, Response, Request} from 'express';
import colors from '../../log/colors';
import logger from '../../log';


const customLogger = (request: Request, response: Response, next: NextFunction) => {
  const date = new Date().toLocaleString('pt-BR', {timeZone: 'America/Recife'});
  console.log(colors.fgYellow, `${date} | New request registered on backend service.`);

  console.log(colors.fgGreen, 'Request Headers:');
  logger.debug(request.headers);

  console.log(colors.fgGreen, 'Request Body:');
  logger.debug(request.body);

  console.log(colors.fgGreen, 'Request Params:');
  logger.debug(request.params);

  next();
};

export {customLogger};
