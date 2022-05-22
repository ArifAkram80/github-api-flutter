import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:github_api_flutter/core/theme/app_theme.dart';

import '../routes/pages.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: kDebugMode,
      initialRoute: Routes.dashboard,
      defaultTransition: Transition.fade,
      themeMode: ThemeMode.system,
      navigatorKey: Get.key,
      getPages: AppPages.pages,
      theme: AppThemeData.getThemeData(),
    );
  }
}
