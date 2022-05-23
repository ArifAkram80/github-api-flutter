import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/utils/size_util.dart';
import '../../../../core/values/colors.dart';
import '../../../data/models/commits_list_model/commits_list_model.dart';
import '../../../widgets/wig_circular_network_image.dart';
import '../../../../core/extensions/ext_datetime.dart';

class CommitListItemWidget extends StatelessWidget {
  final CommitsListModel item;
  const CommitListItemWidget({required this.item, Key? key}) : super(key: key);

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
              Expanded(
                child: Text(
                  "${item.commit?.message}",
                  style: Get.textTheme.bodyText1,
                  maxLines: 2,
                  textAlign: TextAlign.start,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              SizedBox(
                width: SizeUtil.getAxisX(12),
              ),
              Text(
                "${item.commit?.author?.date?.toDate()}",
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
                CircularNetworkImage(
                  url: item.author?.avatarUrl,
                  dimension: SizeUtil.getAxisX(20),
                  boxFit: BoxFit.cover,
                ),
                SizedBox(
                  width: SizeUtil.getAxisX(8),
                ),
                Text(
                  "${item.commit?.author?.name}",
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
