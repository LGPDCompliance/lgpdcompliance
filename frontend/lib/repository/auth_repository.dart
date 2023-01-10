import 'package:dio/dio.dart';
import 'package:lgpb_compliance/core/api.dart';
import 'package:lgpb_compliance/models/user_model.dart';

class AuthRepository {
  final Dio _dio = Dio(kDioOptionsLGPD);

  Future<CurrentUser> signIn(UserModel user) async {
    try {
      final response = await _dio.post(
        '/auth/login',
        data: {
          'email': user.email,
          'password': user.password,
        },
      );
      return CurrentUser.fromMap(response.data);
    } on DioError catch (e) {
      return Future.error(e);
    }
  }

  Future<void> signUp(String name, String email, String pass) async {
    try {
      await _dio.post(
        '/user/create',
        data: {
          'name': name,
          'email': email,
          'password': pass
        },
      );
    } on DioError catch (e) {
      return Future.error(e);
    }
  }

  Future<UserModel> updateUser(String id, String name, String email) async {
    try {
      final response = await _dio.put(
        '/user/update/$id',
        data: {
          'name': name,
          'email': email,
        },
      );
      return UserModel.fromMap(response.data);
    } on DioError catch (e) {
      return Future.error(e);
    }
  }
}
