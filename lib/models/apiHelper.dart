import 'package:dio/dio.dart';

class APIHelper {
  static final APIHelper _instance = APIHelper._internal();
  static const String _baseUrl = "http://192.168.100.5:3000/";
  static const int _timeout = 10; // seconds

  factory APIHelper() {
    return _instance;
  }

  APIHelper._internal();

  Dio _dio = Dio(BaseOptions(
    baseUrl: _baseUrl,
    connectTimeout:
        Duration(seconds: _timeout * 1000), // convert to milliseconds
    receiveTimeout:
        Duration(seconds: _timeout * 1000), // convert to milliseconds
  ));

  Dio get dio => _dio;
}
