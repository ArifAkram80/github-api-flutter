import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../../../core/extensions/ext_datetime.dart';
import '../../../../core/values/colors.dart';
import '../../../data/models/commits_list_model/commits_list_model.dart';
import '../../../widgets/wig_circular_network_image.dart';

class CommitListItemWidget extends StatelessWidget {
  final CommitsListModel item;
  const CommitListItemWidget({required this.item, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.w,
      padding: EdgeInsets.symmetric(
        vertical: 3.2.w,
        horizontal: 0.5.h,
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
                width: 3.2.w,
              ),
              Text(
                "${item.commit?.author?.date?.toTimeWeekdayDate()}",
                style: Get.textTheme.bodyText2?.copyWith(
                  color: colorDateTime,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 1.01.h,
          ),
          SizedBox(
            height: 2.5.h,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                CircularNetworkImage(
                  url: item.author?.avatarUrl,
                  dimension: 5.33.w,
                  boxFit: BoxFit.cover,
                ),
                SizedBox(
                  width: 2.13.w,
                ),
                Text(
                  "${item.commit?.author?.name}",
                  style: Get.textTheme.bodyText2?.copyWith(
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
