import '../../../core/networking/api_result.dart';
import '../../data/models/commits_list_model/commits_list_model.dart';
import '../../data/provider/github_provider.dart';

class CommitsRepository {
  final GithubProvider githubProvider;
  CommitsRepository({required this.githubProvider});

  Future<Result<List<CommitsListModel>>> getCommitsList(
          {required String owner,
          required String repo,
          int? pageSize,
          int? page}) =>
      githubProvider.getCommitsList(
          owner: owner, repo: repo, page: page, pageSize: pageSize);
}
