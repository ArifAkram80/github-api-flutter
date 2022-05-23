import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/utils/size_util.dart';
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
            height: SizeUtil.getAxisY(8),
          ),
          Text(
            "Public Gists: ${userProfile.publicGists}",
            style: Get.textTheme.bodyText1?.copyWith(color: Colors.white),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          SizedBox(
            height: SizeUtil.getAxisY(8),
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
