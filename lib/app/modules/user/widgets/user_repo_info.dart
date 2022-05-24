import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../../data/models/user_profile/user_profile.dart';

class UserRepoInfo extends StatelessWidget {
  final UserProfile userProfile;
  const UserRepoInfo({required this.userProfile, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Public Repos: ${userProfile.publicRepos}",
            style: Get.textTheme.bodyText1?.copyWith(color: Colors.white),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          SizedBox(
            height: 1.h,
          ),
          Text(
            "Public Gists: ${userProfile.publicGists}",
            style: Get.textTheme.bodyText1?.copyWith(color: Colors.white),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          SizedBox(
            height: 1.h,
          ),
          Text(
            "Private Repos: ${userProfile.publicRepos}",
            style: Get.textTheme.bodyText1?.copyWith(color: Colors.white),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
