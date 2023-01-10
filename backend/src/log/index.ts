import winston from 'winston';

const logger = winston.createLogger({
  transports: [new winston.transports.Console({level: 'debug'})],
  format: winston.format.combine(
      winston.format((info: any) => {
        info.level = info.level.toUpperCase();
        return info;
      })(),
      winston.format.json(),
      winston.format.colorize({all: true}),
  ),
});


export default logger;
