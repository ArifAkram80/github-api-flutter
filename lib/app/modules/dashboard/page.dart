import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:github_api_flutter/core/utils/size_util.dart';

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
            items: const [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_outlined,
                ),
                label: 'Commits',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.history_toggle_off,
                ),
                label: 'User',
              ),
            ],
          ),
        ),
      );
    });
  }
}
