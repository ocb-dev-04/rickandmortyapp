import 'package:dio/dio.dart';
import 'package:rickandmortyapptest/app/constants/api_values.dart';

class DioClient {
  static Dio getClient(String extraUri) {
    String apiUri = ApiValues.BaseApiUri;
    Dio dio = Dio();
    dio.options.baseUrl = '$apiUri/$extraUri';
    dio.options.connectTimeout = 10 * 1000; // 10 seconds
    dio.options.followRedirects = false;
    return dio;
  }
}
