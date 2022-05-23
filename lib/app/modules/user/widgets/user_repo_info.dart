import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/utils/size_util.dart';

class UserRepoInfo extends StatelessWidget {
  const UserRepoInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Public Repos: 2",
            style: Get.textTheme.bodyText1?.copyWith(color: Colors.white),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          SizedBox(
            height: SizeUtil.getAxisY(8),
          ),
          Text(
            "Public Gists: 5",
            style: Get.textTheme.bodyText1?.copyWith(color: Colors.white),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          SizedBox(
            height: SizeUtil.getAxisY(8),
          ),
          Text(
            "Private Repos: 5",
            style: Get.textTheme.bodyText1?.copyWith(color: Colors.white),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
