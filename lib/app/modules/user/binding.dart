import 'package:get/get.dart';

import 'controller.dart';
import 'repository.dart';

class UserBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UserController>(
      () => UserController(
        UserRepository(),
      ),
    );
  }
}
