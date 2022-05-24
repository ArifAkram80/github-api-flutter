import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'widgets/wig_commits_list.dart';
import '../../widgets/wig_error_state.dart';
import 'package:sizer/sizer.dart';

import '../../../core/networking/api_result.dart';
import 'controller.dart';
import 'widgets/shimmer_commits.dart';
import 'widgets/wig_commit_header.dart';

class CommitsPage extends StatelessWidget {
  const CommitsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<CommitsController>();
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 1.8.w,
          vertical: 1.5.h,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            const CommitHeaderWidget(),
            SizedBox(
              height: 1.5.w,
            ),
            Expanded(
              child: getCommitsView(controller),
            ),
          ],
        ),
      ),
    );
  }

  Widget getCommitsView(CommitsController controller) {
    return Obx(
      () {
        var res = controller.commitsList.value;
        switch (res.status) {
          case Status.loading:
            return ListView.builder(
              itemCount: 10,
              itemBuilder: (_, __) => const ShimmerCommitsItem(),
            );

          case Status.error:
            return WigErrorState(
              message: "Opps! Somthing went worng \n${res.message ?? ""}",
              onRetry: () {
                controller.onRetry();
              },
            );

          default:
            return RefreshIndicator(
              onRefresh: () async {
                return controller.onRetry();
              },
              child: const CommitsListWidget(),
            );
        }
      },
    );
  }
}
