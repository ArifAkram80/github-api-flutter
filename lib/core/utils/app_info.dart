import 'package:flutter/foundation.dart';

class AppInfo {
  static const bool testMode = kDebugMode;
  //TODO: SYNC WITH pubspec.yml . update version code every release.
  static const versionCode = 01;
  AppInfo._();
  static final _EndPoints api = _EndPoints.instance();
}

class _EndPoints {
  _EndPoints.instance();

  final String baseUrl = "https://api.github.com/";
}
