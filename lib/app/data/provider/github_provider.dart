import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

import '../../../core/networking/api_client.dart';
import '../../../core/networking/api_exceptions.dart';
import '../../../core/networking/api_result.dart';
import '../../../core/utils/app_info.dart';
import '../models/user_profile/user_profile.dart';

class GithubProvider extends ApiClient {
  static const tag = "GithubProvider";
  GithubProvider() : super(baseURL: AppInfo.api.baseUrl);

  Future<Result<UserProfile>> getUserProfile(String username) async {
    final response = await getHttp(endPoint: "users/$username");
    try {
      final userResponse = _response(response);
      return Result.success(
        UserProfile.fromJson(
          jsonDecode(userResponse.body),
        ),
      );
    } on SocketException {
      return Result.error("No Internet Connection");
    } on ResourceNotFoundException {
      return Result.error("Invalid User not found");
    } on CustomException catch (e) {
      return Result.error("Error: Fetching user ${e.reason}");
    } catch (e) {
      return Result.error("Unknown Error.");
    }
  }

  /// Wrapper method for throwing network error
  http.Response _response(http.Response response) {
    switch (response.statusCode) {
      case 200:
        return response;
      case 404:
        throw ResourceNotFoundException(response);
      default:
        throw FetchDataException(response);
    }
  }
}
