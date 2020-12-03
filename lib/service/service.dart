import 'package:bemol_drogaria/Service/response/interceptors.dart';
import 'package:dio/dio.dart';

const BASE_URL = "http://192.168.1.7:3000";

class CustomDio {
  final Dio client;

  CustomDio(this.client) {
    client.options.baseUrl = BASE_URL;
    client.interceptors.add(ServiceIntercept());
    client.options.connectTimeout = 15000;
    client.options.receiveTimeout = 10000;
    client.options.responseType = ResponseType.json;
  }
}
