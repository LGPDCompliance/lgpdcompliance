import 'dotenv/config';

const port = process.env.PORT || 8080;
const host = process.env.HOST || 'http://localhost';
const accessSecretToken: string = process.env.ACCESS_TOKEN_SECRET || '';
const refreshSecretToken: string = process.env.REFRESH_TOKEN_SECRET || '';
const newsApiBaseURL: string = process.env.NEWS_API_BASE_URL || '';
const newsApiToken: string = process.env.NEWS_API_TOKEN || '';
const clientURL: string = process.env.CLIENT_URL || '';

export default {
  port,
  host,
  accessSecretToken,
  refreshSecretToken,
  newsApiBaseURL,
  newsApiToken,
  clientURL,
};
