import '../../../core/networking/api_result.dart';
import '../../data/models/user_profile/user_profile.dart';
import '../../data/provider/github_provider.dart';

class UserRepository {
  final GithubProvider githubProvider;
  UserRepository(this.githubProvider);

  Future<Result<UserProfile>> getUserProfile({required String username}) =>
      githubProvider.getUserProfile(username);
}
