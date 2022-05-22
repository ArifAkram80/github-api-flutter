import 'package:get/get.dart';
import '../app/modules/commits/binding.dart';
import '../app/modules/commits/page.dart';
import '../app/modules/user/binding.dart';
import '../app/modules/user/page.dart';
import '../app/modules/dashboard/binding.dart';
import '../app/modules/dashboard/page.dart';
part './routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.dashboard,
      page: () => const DashboardPage(),
      binding: DashboardBinding(),
    ),
    GetPage(
      name: Routes.commits,
      page: () => const CommitsPage(),
      binding: CommitsBinding(),
    ),
    GetPage(
      name: Routes.user,
      page: () => const UserPage(),
      binding: UserBinding(),
    ),
  ];
}
