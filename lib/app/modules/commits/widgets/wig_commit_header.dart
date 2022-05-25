import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class CommitHeaderWidget extends StatelessWidget {
  const CommitHeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 2.7.h,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Flexible(
            flex: 4,
            child: Text(
              "Flutter Commit List",
              style: Get.textTheme.headline6,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
          ),
          SizedBox(
            width: 1.5.w,
          ),
          Card(
            margin: EdgeInsets.symmetric(
              horizontal: 1.5.w,
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 1.5.w,
              ),
              child: Text(
                "master",
                style: Get.textTheme.headline6,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
            ),
          )
        ],
      ),
    );
  }
}
