import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:sizer/sizer.dart';

import '../../../../core/values/colors.dart';

class ShimmerUserPofile extends StatelessWidget {
  const ShimmerUserPofile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      enabled: true,
      baseColor: Colors.blueGrey.shade300,
      highlightColor: Colors.blueGrey.shade100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 43.75.w,
            height: 43.75.w,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(width: 1.w, color: colorShimmer),
            ),
            child: Icon(
              Icons.person,
              color: colorShimmer,
              size: 30.75.w,
            ),
          ),
          SizedBox(
            height: 2.0.h,
          ),
          Container(
            height: 3.h,
            width: 40.w,
            color: colorShimmer,
          ),
          SizedBox(
            height: .8.h,
          ),
          Container(
            width: 20.w,
            height: 1.5.h,
            color: colorShimmer,
          ),
          SizedBox(
            height: 2.0.h,
          ),
          Container(
            width: 60.w,
            height: 1.5.h,
            color: colorShimmer,
          ),
          SizedBox(
            height: 2.0.h,
          ),
          Container(
            width: 60.w,
            height: 1.5.h,
            color: colorShimmer,
          ),
          SizedBox(
            height: 1.0.h,
          ),
          Container(
            width: 60.w,
            height: 1.5.h,
            color: colorShimmer,
          ),
          SizedBox(
            height: 1.0.h,
          ),
          Container(
            width: 60.w,
            height: 1.5.h,
            color: colorShimmer,
          ),
        ],
      ),
    );
  }
}
