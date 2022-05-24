import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:github_api_flutter/app/modules/commits/widgets/wig_commits_list.dart';
import 'package:github_api_flutter/app/widgets/wig_error_state.dart';
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
          case Status.success:
            return RefreshIndicator(
              onRefresh: () async {
                return controller.onRetry();
              },
              child: CommitsListWidget(listOfCommits: res.data!),
            );
          case Status.error:
            return WigErrorState(
              message: "Opps! Somthing went worng \n${res.message ?? ""}",
              onRetry: () {
                controller.onRetry();
              },
            );
          case Status.empty:
            return WigErrorState(
              message: "Opps! Empty list \n No Data Is Available.",
              onRetry: () {
                controller.onRetry();
              },
            );
        }
      },
    );
  }
}
