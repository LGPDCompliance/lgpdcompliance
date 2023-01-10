import {Request, Response} from 'express';
import GraphicsUtil from '../utils/GraphicsUtil';

class GraphicsController {
  static async getGraphicalData(request: Request, response: Response) {
    try {
      const datas = await GraphicsUtil.getGraphicalData();
      return response.status(200).json(datas);
    } catch (err) {
      console.log(err);
    }
    return response.status(400).json({message: 'Ocorreu um erro ao buscar os dados.'});
  };
}

export default GraphicsController;
