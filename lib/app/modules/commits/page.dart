import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/networking/api_result.dart';
import '../../../core/utils/size_util.dart';
import 'controller.dart';
import 'widgets/wig_commit_header.dart';
import 'widgets/wig_commits_list.dart';

class CommitsPage extends StatelessWidget {
  const CommitsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<CommitsController>();
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(
          horizontal: SizeUtil.getAxisX(13),
          vertical: SizeUtil.getAxisY(11),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            const CommitHeaderWidget(),
            SizedBox(
              height: SizeUtil.getAxisY(10),
            ),
            Flexible(
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
            return const CircularProgressIndicator();
          case Status.success:
            return CommitsListWidget(listOfCommits: res.data!);
          case Status.error:
            return Text("Error: ${res.message}");
          default:
            return Container();
        }
      },
    );
  }
}
