import 'package:get/get.dart';

import '../../../core/networking/api_result.dart';
import '../../data/models/commits_list_model/commits_list_model.dart';
import 'repository.dart';

class CommitsController extends GetxController {
  static const tag = "CommitsController";
  static const owner = "flutter";
  static const repo = "flutter";
  static const pageSize = 10;

  int pageNumber = 1;

  final CommitsRepository repository;
  CommitsController(this.repository);

  var commitsList = Result<List<CommitsListModel>>.empty().obs;

  @override
  void onInit() {
    super.onInit();
    _getCommitList();
  }

  Future<void> onRetry() async {
    pageNumber = 1;
    _getCommitList();
  }

  Future<void> _getCommitList() async {
    commitsList.value = Result.loading();
    commitsList.value = await repository.getCommitsList(
      owner: owner,
      repo: repo,
      page: pageNumber,
      pageSize: 10,
    );
  }
}
