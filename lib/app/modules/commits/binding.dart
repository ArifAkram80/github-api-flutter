import 'package:get/get.dart';

import 'controller.dart';
import 'repository.dart';

class CommitsBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CommitsController>(
      () => CommitsController(
        CommitsRepository(),
      ),
    );
  }
}
