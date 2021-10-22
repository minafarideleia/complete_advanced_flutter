import 'package:complete_advanced_flutter/app/constant.dart';
import 'package:dio/dio.dart';

const String APPLICATION_JSON = "application/json";
const String CONTENT_TYPE = "content-type";
const String ACCEPT = "accept";
const String AUTHORIZATION = "authorization";
const String DEFAULT_LANGUAGE = "language";

class DioFactory {
  Future<Dio> getDio() async {
    Dio dio = Dio();
    int _timeOut = 60 * 1000; // 1 min
    Map<String, String> headers = {
      CONTENT_TYPE: APPLICATION_JSON,
      ACCEPT: APPLICATION_JSON,
      AUTHORIZATION: Constant.token,
      DEFAULT_LANGUAGE: "en" // todo get lang from app prefs
    };

    dio.options = BaseOptions(
        baseUrl: Constant.baseUrl,
        connectTimeout: _timeOut,
        receiveTimeout: _timeOut,
        headers: headers);

    return dio;
  }
}
