import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/networking/api_result.dart';
import '../../../core/utils/size_util.dart';
import '../../data/models/user_profile/user_profile.dart';
import '../../widgets/wig_circular_network_image.dart';
import 'controller.dart';
import 'widgets/user_name_info.dart';
import 'widgets/user_repo_info.dart';

class UserPage extends StatelessWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<UserController>();
    return Scaffold(
      body: Container(
        alignment: Alignment.topCenter,
        margin: EdgeInsets.symmetric(
            vertical: SizeUtil.getAxisY(30), horizontal: SizeUtil.getAxisX(16)),
        child: Obx(
          () {
            var res = controller.userProfile.value;
            switch (res.status) {
              case Status.loading:
                return const CircularProgressIndicator.adaptive();
              case Status.success:
                return getUserInfo(res.data!);
              case Status.error:
                return const Text("Error");
              default:
                return Container();
            }
          },
        ),
      ),
    );
  }

  Widget getUserInfo(UserProfile userProfile) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CircularNetworkImage(
            url: userProfile.avatarUrl,
            dimension: SizeUtil.getAxisX(164),
          ),
          SizedBox(
            height: SizeUtil.getAxisY(16),
          ),
          UserNameInfo(userProfile: userProfile),
          SizedBox(
            height: SizeUtil.getAxisY(16),
          ),
          Text(
            "Bio: ${userProfile.bio ?? ""}",
            style: Get.textTheme.bodyText1?.copyWith(
              color: Colors.white,
            ),
            maxLines: 1,
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
          ),
          SizedBox(
            height: SizeUtil.getAxisY(16),
          ),
          UserRepoInfo(userProfile: userProfile),
        ],
      ),
    );
  }
}
