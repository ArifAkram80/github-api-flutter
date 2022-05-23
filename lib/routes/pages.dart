import 'package:get/get.dart';

import '../app/modules/commits/binding.dart';
import '../app/modules/dashboard/binding.dart';
import '../app/modules/dashboard/page.dart';
import '../app/modules/user/binding.dart';

part './routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.dashboard,
      page: () => const DashboardPage(),
      binding: DashboardBinding(),
      bindings: [
        CommitsBinding(),
        UserBinding(),
      ],
    ),
  ];
}
