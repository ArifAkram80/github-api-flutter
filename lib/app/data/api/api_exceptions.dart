import 'package:http/http.dart';

class CustomException implements Exception {
  final String? message;
  final String? reason;

  CustomException([this.message, this.reason]);
}

class FetchDataException extends CustomException {
  Response? response;
  FetchDataException([String? message, this.response])
      : super(message, "Error During Communication: ${response?.body}");
}

class BadRequestException extends CustomException {
  Response? response;
  BadRequestException([message, this.response])
      : super(message, "Invalid Request:  ${response?.body}");
}

class UnauthorisedException extends CustomException {
  Response? response;
  UnauthorisedException([message, this.response])
      : super(message, "Unauthorised:  ${response?.body}");
}

class InvalidInputException extends CustomException {
  InvalidInputException([String? message]) : super(message, "Invalid Input: ");
}
