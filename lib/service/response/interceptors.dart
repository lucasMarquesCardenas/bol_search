import 'package:dio/dio.dart';

class ServiceIntercept extends InterceptorsWrapper {
  @override
  Future onRequest(RequestOptions options) {
    print("RESQUEST[${options.method}] => PATH: [${options.path}]");
    return super.onRequest(options);
  }

  @override
  Future onResponse(Response response) {
    print(
        "RESPONSE[${response.statusCode}] => PATH: [${response.request.path}]");
    return super.onResponse(response);
  }

  @override
  Future onError(DioError err) {
    print(
        "ERRO_RESPONSE[${err.response.statusCode}] => PATH: [${err.response.request.path}]");
    return super.onError(err);
  }
}
