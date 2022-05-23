import 'package:flutter/material.dart';
import 'package:http_interceptor/http_interceptor.dart';
import 'package:logger/logger.dart';

class NetworkInterceptor implements InterceptorContract {
  var logger = Logger();

  @override
  Future<RequestData> interceptRequest({required RequestData data}) async {
    logger.i(
        "OnHttpRequest  ${data.url}  header ${data.headers}  body ${data.body}");
    return data;
  }

  @override
  Future<ResponseData> interceptResponse({required ResponseData data}) async {
    debugPrint("onResponse ${data.statusCode}");
    logger
        .w("OnHttpResponse ${data.statusCode} ${data.url}  body ${data.body}");
    return data;
  }
}
