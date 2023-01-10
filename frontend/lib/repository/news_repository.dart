import 'package:dio/dio.dart';
import 'package:lgpb_compliance/core/api.dart';
import 'package:lgpb_compliance/models/news_model.dart';

class NewsRepository {
  final Dio _dio = Dio(kDioOptionsLGPD);

  Future<List<NewsModel>> getNews() async {
    try {
      final response = await _dio.get('/news');
      return List<NewsModel>.from(
          response.data['articles'].map((x) => NewsModel.fromMap(x)));
    } on DioError catch (e) {
      print("NewsRepository.getNews | $e");
      return Future.error(e);
    }
  }
}