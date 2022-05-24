import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../../data/models/user_profile/user_profile.dart';

class UserNameInfo extends StatelessWidget {
  final UserProfile userProfile;
  const UserNameInfo({required this.userProfile, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            userProfile.name ?? "",
            style: Get.textTheme.headline5
                ?.copyWith(color: Colors.white, height: 0.795),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          SizedBox(
            height: .5.h,
          ),
          Text(
            "@${userProfile.login ?? ""}",
            style: Get.textTheme.bodyText1?.copyWith(color: Colors.white),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
