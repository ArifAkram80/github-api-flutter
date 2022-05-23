import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:http_interceptor/http_interceptor.dart';

import 'network_interceptor.dart';

class ApiClient {
  final String baseURL;

  ApiClient({required this.baseURL});
  final _client = InterceptedClient.build(
    interceptors: kDebugMode
        ? [
            NetworkInterceptor(),
          ]
        : [],
  );

  Future<http.Response> getHttp(
      {required String endPoint, Map<String, String>? query}) async {
    final uri = Uri.parse(baseURL + endPoint);
    return await _client.get(uri, headers: await _getHeaders(), params: query);
  }

  Future<Map<String, String>> _getHeaders() async {
    return {"content-type": "application/json"};
  }
}
