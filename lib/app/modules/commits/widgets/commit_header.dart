import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/utils/size_util.dart';

class CommitHeader extends StatelessWidget {
  const CommitHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeUtil.getAxisY(32),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            "Flutter Commit List",
            style: Get.textTheme.headline6,
          ),
          SizedBox(
            width: SizeUtil.getAxisX(16),
          ),
          Card(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: SizeUtil.getAxisX(8)),
              child: Text(
                "master",
                style: Get.textTheme.headline6,
              ),
            ),
          )
        ],
      ),
    );
  }
}
