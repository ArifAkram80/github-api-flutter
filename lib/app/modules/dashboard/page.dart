import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../core/translations/languages/language_keys.dart';
import '../../../core/utils/size_util.dart';
import '../../../core/values/images.dart';
import 'controller.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeUtil.size = MediaQuery.of(context)
        .size; // Initialize the size for one time in intital screen.
    return GetBuilder<DashboardController>(builder: (controller) {
      return SafeArea(
        child: Scaffold(
          body: IndexedStack(
            index: controller.tabIndex,
            children: const [
              // pages
              Scaffold(
                body: Center(child: Text("Page 1")),
              ),
              Scaffold(
                body: Center(child: Text("Page 2")),
              ),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            onTap: controller.changeTabIndex,
            currentIndex: controller.tabIndex,
            items: [
              BottomNavigationBarItem(
                activeIcon: SvgPicture.asset(icCommits),
                icon: SvgPicture.asset(
                  icCommits,
                  color: Get.theme.bottomNavigationBarTheme.unselectedItemColor,
                ),
                label: tr_commits,
              ),
              BottomNavigationBarItem(
                activeIcon: SvgPicture.asset(icUser),
                icon: SvgPicture.asset(
                  icUser,
                  color: Get.theme.bottomNavigationBarTheme.unselectedItemColor,
                ),
                label: tr_user,
              ),
            ],
          ),
        ),
      );
    });
  }
}
