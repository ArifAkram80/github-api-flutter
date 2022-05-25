import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../core/networking/api_result.dart';
import '../../data/models/commits_list_model/commits_list_model.dart';
import 'repository.dart';

class CommitsController extends GetxController {
  static const tag = "CommitsController";
  static const owner = "flutter";
  static const repo = "flutter";
  static const maxAuthor = 10;
  static const pageSize = 50;

  int pageNumber = 1;

  final CommitsRepository repository;
  CommitsController(this.repository);

  // last fetched commits
  var commitsList = Result<List<CommitsListModel>>.empty().obs;

  // filtered commits with commit author
  RxList<CommitsListModel> filteredList = RxList<CommitsListModel>();
  RxBool canLoadMore = true.obs;

  @override
  void onInit() {
    super.onInit();
    _getFilteredCommitsList();
  }

  bool isEmptyFilteredList() =>
      canLoadMore.isTrue &&
      filteredList.isEmpty &&
      commitsList.value.status == Status.empty;

  Future<void> onRetry() async {
    pageNumber = 1;
    canLoadMore.value = true; // _getCommitList();
    filteredList.clear();
    commitsList.value = Result.empty();
    _getFilteredCommitsList();
  }

  // Fetching last [pageSize] commits.
  // Itterating over the commits and
  // saving commits that doesnot contain letter 'x' or 'g'.
  // this can be optimised with a backend api
  // which allows rexeg as a query parameter for commit author.

  Future<void> _getFilteredCommitsList() async {
    while (filteredList.length < maxAuthor && canLoadMore.isTrue) {
      if (filteredList.isEmpty) commitsList.value = Result.loading();
      await _getCommitList();
      pageNumber++;
      if (commitsList.value.status == Status.empty ||
          commitsList.value.status == Status.error) break;
      final data = commitsList.value.data!;
      if (data.length < pageSize - 1) {
        canLoadMore.value = false;
      }
      _filterTheDataAddToList(data);
    }
    debugPrint("$tag filteredList len ${filteredList.length}");
  }

  Future<void> _getCommitList() async {
    commitsList.value = await repository.getCommitsList(
      owner: owner,
      repo: repo,
      page: pageNumber,
      pageSize: pageSize,
    );
  }

  void _filterTheDataAddToList(List<CommitsListModel> commits) {
    for (var commit in commits) {
      if (filteredList.length >= maxAuthor) break;
      String? name = commit.commit?.author?.name;
      if (name == null) return;

      if (name.contains(RegExp(r"^[^gx]*$"))) {
        filteredList.add(commit);
      }
    }
  }
}
