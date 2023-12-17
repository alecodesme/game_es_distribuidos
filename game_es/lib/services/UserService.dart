import 'package:dio/dio.dart';
import 'package:game_es/api/api.dart';

class UserService {
  final Dio _dio = Dio();
  final Api _api = Api();

  Future<UserResponse> signIn(dynamic user) async {
    try {
      Response response = await _dio.post(_api.login, data: user);

      return UserResponse(
        message: "Sign-in successful",
        code: response.statusCode ?? 200,
        data: response.data,
      );
    } catch (e) {
      print("Sign-in error: $e");

      return UserResponse(
        message: "Sign-in failed",
        code: 500,
        errors: e.toString(),
      );
    }
  }

  Future<UserResponse> signUp(dynamic user) async {
    try {
      Response response = await _dio.post(_api.signup, data: user);

      return UserResponse(
        message: "Sign-up successful",
        code: response.statusCode ?? 201,
        data: response.data,
      );
    } catch (e) {
      print("Sign-up error: $e");

      return UserResponse(
        message: "Sign-up failed",
        code: 500,
        errors: e.toString(),
      );
    }
  }
}

class UserResponse {
  final String message;
  final int code;
  final dynamic data;
  final dynamic errors;

  UserResponse({
    required this.message,
    required this.code,
    this.data,
    this.errors,
  });
}
