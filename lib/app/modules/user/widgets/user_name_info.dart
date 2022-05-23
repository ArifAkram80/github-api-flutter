import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/utils/size_util.dart';

class UserNameInfo extends StatelessWidget {
  const UserNameInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Francisco Miles",
            style: Get.textTheme.headline5?.copyWith(color: Colors.white),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          SizedBox(
            height: SizeUtil.getAxisY(4),
          ),
          Text(
            "@fransico_miles",
            style: Get.textTheme.bodyText2?.copyWith(color: Colors.white),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
