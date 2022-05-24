import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:sizer/sizer.dart';

import '../../../../core/values/colors.dart';

class ShimmerCommitsItem extends StatelessWidget {
  const ShimmerCommitsItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      enabled: true,
      baseColor: Colors.blueGrey.shade300,
      highlightColor: Colors.blueGrey.shade100,
      child: const CommitListItemWidget(),
    );
  }
}

class CommitListItemWidget extends StatelessWidget {
  const CommitListItemWidget({Key? key}) : super(key: key);

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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 2.h,
                      width: double.infinity,
                      color: colorShimmer,
                    ),
                    SizedBox(
                      height: .5.h,
                    ),
                    Container(
                      width: 50.w,
                      height: 2.h,
                      color: colorShimmer,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 5.2.w,
              ),
              Container(
                width: 10.w,
                height: 1.h,
                color: colorShimmer,
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
                Container(
                  width: 5.33.w,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: colorShimmer,
                  ),
                ),
                SizedBox(
                  width: 2.13.w,
                ),
                Container(
                  width: 20.w,
                  height: 1.h,
                  color: colorShimmer,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 1.h,
          ),
          Container(
            width: double.infinity,
            height: .05.h,
            color: colorShimmer,
          ),
        ],
      ),
    );
  }
}
