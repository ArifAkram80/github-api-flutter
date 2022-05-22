import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:http_interceptor/http_interceptor.dart';

import '../../../../core/utils/app_info.dart';
import 'apiExceptions.dart';
import 'networkInterceptor.dart';

class ApiClient {
  // static Map<String, String> _headers = Map();
  static final String baseUrl = AppInfo.api.baseUrl;

  final _client = InterceptedClient.build(
    interceptors: kDebugMode
        ? [
            NetworkInterceptor(),
          ]
        : [],
  );

  Future<http.Response> getHttp(url, {Map<String, String>? query}) async {
    String repoUrl = baseUrl + url;
    return _response(await _client.get(Uri.parse(repoUrl),
        headers: await _getHeaders(), params: query));
  }

  dynamic _response(http.Response response) {
    switch (response.statusCode) {
      case 200:
        return response;
      case 400:
        throw BadRequestException("400 This action is not valid", response);
      case 401:
        throw UnauthorisedException("401 This action is not allowed", response);
      case 403:
        throw UnauthorisedException("403 This action is not allowed", response);
      case 500:
      default:
        throw FetchDataException(
            'Error communicating to server: ${response.statusCode}', response);
    }
  }

  Future<http.Response> postHttp(url, {Map<String, String>? body}) async {
    return _response(
      await _client.post(
        Uri.parse(baseUrl + url),
        body: jsonEncode(body),
        headers: await _getHeaders(),
      ),
    );
  }

  Future<http.Response> postHttpWithJsonBody(url, {String body = ""}) async {
    final _kHeaders = await _getHeaders();
    _kHeaders.putIfAbsent("Content-type", () => "Application/json");
    return _response(
      await _client.post(
        Uri.parse(baseUrl + url),
        body: body,
        headers: await _getHeaders(),
      ),
    );
  }

  Future<http.Response> putHttp(url, {Map<String, String>? body}) async {
    return _response(await _client.put(Uri.parse(baseUrl + url),
        body: body, headers: await _getHeaders()));
  }

  Future<http.Response> putHttpWithJsonBody(url, {String body = ""}) async {
    final _kHeaders = await _getHeaders();
    _kHeaders.putIfAbsent("Content-type", () => "Application/json");
    return _response(await _client.put(Uri.parse(baseUrl + url),
        body: body, headers: _kHeaders));
  }

  Future<Map<String, String>> _getHeaders() async {
    String? token = "";
    return {
      if (token != null) "Authorization": "Token $token",
      "content-type": "application/json"
    };
  }
}
