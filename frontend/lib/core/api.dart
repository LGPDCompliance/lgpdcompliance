import 'package:dio/dio.dart';

// Development Mode:
// const kBaseUrlLGPD = 'http://localhost:8080';
const kBaseUrlLGPD = 'https://apilgpd.site';

final kDioOptionsLGPD = BaseOptions(
  baseUrl: kBaseUrlLGPD,
  connectTimeout: 5000,
  receiveTimeout: 3000,
  contentType: 'application/json;charset=utf-8',
);

BaseOptions optionsRequest(String kTokenUser) {
  return BaseOptions(
    baseUrl: kBaseUrlLGPD,
    connectTimeout: 5000,
    receiveTimeout: 3000,
    contentType: 'application/json;charset=utf-8',
    headers: {
      'Authorization': 'Bearer $kTokenUser',
    },
  );
}
