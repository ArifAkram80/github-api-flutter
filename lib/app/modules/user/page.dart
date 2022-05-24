import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:github_api_flutter/app/widgets/wig_error_state.dart';
import 'package:sizer/sizer.dart';

import '../../../core/networking/api_result.dart';
import '../../data/models/user_profile/user_profile.dart';
import '../../widgets/wig_circular_network_image.dart';
import 'controller.dart';
import 'widgets/shimmer_user_profile.dart';
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
        margin: EdgeInsets.symmetric(vertical: 3.69.h, horizontal: 4.26.w),
        child: Obx(
          () {
            var res = controller.userProfile.value;
            switch (res.status) {
              case Status.loading:
                return const ShimmerUserPofile();
              case Status.success:
                //  return const ShimmerUserPofile();
                return getUserInfo(res.data!);
              case Status.error:
                return WigErrorState(
                  message: "Opps! Somthing went wrong! \n${res.message ?? ""}",
                  onRetry: () {
                    controller.onRetry();
                  },
                );
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
            dimension: 43.75.w,
          ),
          SizedBox(
            height: 2.0.h,
          ),
          UserNameInfo(userProfile: userProfile),
          SizedBox(
            height: 2.0.h,
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
            height: 2.0.h,
          ),
          UserRepoInfo(userProfile: userProfile),
        ],
      ),
    );
  }
}
