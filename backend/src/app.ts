import express from 'express';
import routes from './routes/routes';
import cors from 'cors';
import helmet from 'helmet';
import morgan from 'morgan';
import config from './config';
import {customLogger} from './middleware/debug';

const app = express();

app.use(cors({origin: config.clientURL}));
app.use(express.json());
app.use(helmet());
app.use(morgan('dev'));
app.use('/', customLogger, routes);

export default app;
