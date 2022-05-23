import 'dart:convert';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

import '../../../core/networking/api_client.dart';
import '../../../core/networking/api_exceptions.dart';
import '../../../core/networking/api_result.dart';
import '../../../core/utils/app_info.dart';
import '../models/commits_list_model/commits_list_model.dart';
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

  Future<Result<List<CommitsListModel>>> getCommitsList(
      {required String owner,
      required String repo,
      int? pageSize,
      int? page}) async {
    final response = await getHttp(
      endPoint: "repos/$owner/$repo/commits",
      query: {
        if (pageSize != null) "per_page": pageSize.toString(),
        if (page != null) "page": page.toString(),
      },
    );
    try {
      final userResponse = _response(response);
      return Result.success((jsonDecode(userResponse.body) as List<dynamic>)
          .map((e) => CommitsListModel.fromJson(e))
          .toList());
    } on SocketException {
      return Result.error("No Internet Connection");
    } on ResourceNotFoundException {
      return Result.empty();
    } on CustomException catch (e) {
      return Result.error("Error: Fetching user ${e.reason}");
    } catch (e, stt) {
      debugPrint("$tag error ${e} ${stt}");
      return Result.error("Unknown Error.");
    }
  }

  /// Wrapper method for throwing network error
  http.Response _response(http.Response response) {
    switch (response.statusCode) {
      case 200:
        return response;
      case 400:
        throw BadRequestException(response);
      case 404:
        throw ResourceNotFoundException(response);
      case 409:
        throw FetchDataException(response);
      case 500:
        throw FetchDataException(response);
      default:
        throw FetchDataException(response);
    }
  }
}
