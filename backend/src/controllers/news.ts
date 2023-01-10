import {Request, Response} from 'express';
import {cache} from '../cache';
import NewsService from '../services/news';


class NewsController {
  public static async getNews(request: Request, response: Response): Promise<Response> {
    const cachedNewsData = await cache.getItem('news');

    if (cachedNewsData) {
      return response.status(200).json(cachedNewsData);
    }

    const newsApiService = new NewsService();
    const newsData = await newsApiService.getNewsData();

    if (newsData) {
      await cache.setItem('news', newsData, {ttl: 3600});
      return response.status(200).json(newsData);
    }

    return response.status(400).json({message: 'Ocorreu um erro, tente novamente.'});
  }
}

export default NewsController;
