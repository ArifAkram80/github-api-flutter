import 'package:get/get.dart';

import '../../data/provider/github_provider.dart';
import 'controller.dart';
import 'repository.dart';

class CommitsBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CommitsController>(
      () => CommitsController(
        CommitsRepository(githubProvider: GithubProvider()),
      ),
    );
  }
}
