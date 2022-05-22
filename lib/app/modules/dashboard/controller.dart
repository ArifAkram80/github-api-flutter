import 'package:get/get.dart';

import 'repository.dart';

class DashboardController extends GetxController {
  static const tag = "HomeController";
  final DashboardRepository repository;
  DashboardController(this.repository);

  var tabIndex = 0;

  void changeTabIndex(int index) {
    tabIndex = index;
    update();
  }
}
