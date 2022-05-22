import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:github_api_flutter/core/utils/size_util.dart';
import 'package:github_api_flutter/core/values/colors.dart';

class CommitListItem extends StatelessWidget {
  const CommitListItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeUtil.getAxisX(375),
      padding: EdgeInsets.symmetric(
        vertical: SizeUtil.getAxisY(12),
        horizontal: SizeUtil.getAxisX(4),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(
                flex: 7,
                child: Text(
                  "Add module to login and register so that others can add features.",
                  style: Get.textTheme.bodyText1,
                  maxLines: 2,
                  textAlign: TextAlign.start,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const Spacer(),
              Text(
                "09:18",
                style: Get.textTheme.caption?.copyWith(
                  color: colorDateTime,
                ),
              ),
            ],
          ),
          SizedBox(
            height: SizeUtil.getAxisY(8),
          ),
          SizedBox(
            height: SizeUtil.getAxisY(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: SizeUtil.getAxisX(20),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: CachedNetworkImageProvider(
                        "https://avatars.githubusercontent.com/u/48603081?v=4",
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: SizeUtil.getAxisX(8),
                ),
                Text(
                  "Eduardo Mckinney",
                  style: Get.textTheme.caption?.copyWith(
                    color: colorUsername,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
