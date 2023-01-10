import {AxiosResponse} from 'axios';
import config from '../config';
import ApiService from './api';


class NewsService extends ApiService {
  constructor() {
    super();
  }

  async getNewsData(): Promise<AxiosResponse | null> {
    try {
      const {newsApiBaseURL, newsApiToken} = config;
      const response = await this.getApi().get('search', {
        baseURL: newsApiBaseURL,
        params: {q: 'LGPD', token: newsApiToken},
      });
      return response.data;
    } catch (error) {
      //
    }
    return null;
  }
}

export default NewsService;
