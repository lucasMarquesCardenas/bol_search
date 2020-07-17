import 'package:bemol_drogaria/Service/response/interceptors.dart';
import 'package:dio/dio.dart';

const BASE_URL = "192.168.1.8:5051";

class ServiceDio {
  final Dio client;

  ServiceDio(this.client) {
    client.options.baseUrl = BASE_URL;
    client.interceptors.add(ServiceIntercept());
  }
}
