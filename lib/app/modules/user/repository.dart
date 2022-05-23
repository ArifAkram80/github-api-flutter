import 'package:github_api_flutter/app/data/models/user_profile/user_profile.dart';
import 'package:github_api_flutter/core/networking/api_result.dart';

import '../../data/provider/github_provider.dart';

class UserRepository {
  final GithubProvider githubProvider;
  UserRepository(this.githubProvider);

  Future<Result<UserProfile>> getUserProfile({required String username}) =>
      githubProvider.getUserProfile(username);
}
