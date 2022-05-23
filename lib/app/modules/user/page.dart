import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/utils/size_util.dart';
import '../../../core/values/images.dart';
import '../../widgets/wig_circular_network_image.dart';
import 'widgets/user_name_info.dart';
import 'widgets/user_repo_info.dart';

class UserPage extends StatelessWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.topCenter,
        margin: EdgeInsets.symmetric(vertical: SizeUtil.getAxisY(30)),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircularNetworkImage(
                url: imgDummyImage,
                dimension: SizeUtil.getAxisX(164),
              ),
              SizedBox(
                height: SizeUtil.getAxisY(16),
              ),
              const UserNameInfo(),
              SizedBox(
                height: SizeUtil.getAxisY(16),
              ),
              Text(
                "Bio: There once was...",
                style: Get.textTheme.bodyText1?.copyWith(color: Colors.white),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(
                height: SizeUtil.getAxisY(16),
              ),
              const UserRepoInfo(),
            ],
          ),
        ),
      ),
    );
  }
}
