import axios, {AxiosInstance} from 'axios';

class ApiService {
  protected api: AxiosInstance;

  constructor() {
    this.api = axios.create({
      timeout: 1000 * 10,
    });
  }

  getApi(): AxiosInstance {
    return this.api;
  }
}

export default ApiService;
