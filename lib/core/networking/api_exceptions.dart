import 'package:http/http.dart';

class CustomException implements Exception {
  final String? reason;

  CustomException([this.reason]);
}

class FetchDataException extends CustomException {
  Response? response;
  FetchDataException([this.response]) : super("Error During Communication:");
}

class BadRequestException extends CustomException {
  Response? response;
  BadRequestException(this.response)
      : super("${response?.statusCode}: Invalid Request");
}

class UnauthorisedException extends CustomException {
  Response? response;
  UnauthorisedException(this.response)
      : super("${response?.statusCode}: Unauthorised access prohibated");
}

class ResourceNotFoundException extends CustomException {
  Response? response;
  ResourceNotFoundException(this.response)
      : super("${response?.statusCode}: Resource not found");
}
