import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'shimmer_commits.dart';
import 'package:sizer/sizer.dart';

import '../../../widgets/wig_error_state.dart';
import '../controller.dart';
import 'wig_commit_item.dart';

class CommitsListWidget extends StatelessWidget {
  const CommitsListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<CommitsController>();
    ScrollController scrollController = ScrollController();

    return Obx(() {
      if (controller.isEmptyFilteredList()) {
        return WigErrorState(
          message: "Opps! \nNo Data Available",
          onRetry: () {
            controller.onRetry();
          },
        );
      }
      final list = controller.filteredList;
      final listLen = list.length;
      final showLoader = controller.canLoadMore.isTrue &&
          controller.filteredList.length < CommitsController.maxAuthor;

      return Scrollbar(
        controller: scrollController,
        thickness: 0.2.w,
        child: ListView.separated(
          controller: scrollController,
          itemCount: showLoader ? listLen + 1 : list.length,
          itemBuilder: (context, index) {
            if (showLoader && index == listLen) {
              return const ShimmerCommitsItem();
            }
            return CommitListItemWidget(
              item: list.elementAt(index),
            );
          },
          separatorBuilder: (ctx, index) => Divider(
            height: .123.h,
            thickness: .123.h,
          ),
        ),
      );
    });
  }
}
