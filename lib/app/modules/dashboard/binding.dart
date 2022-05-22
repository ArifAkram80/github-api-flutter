import 'package:get/get.dart';

import 'controller.dart';
import 'repository.dart';

//injeção de dependências
class DashboardBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashboardController>(
      () => DashboardController(
        DashboardRepository(),
      ),
    );
  }
}
