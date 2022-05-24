import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class WigErrorState extends StatelessWidget {
  final String? message;
  final Function? onRetry;
  const WigErrorState({this.onRetry, this.message, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          message ?? "",
          style: Get.textTheme.bodyText1,
          maxLines: 3,
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 1.h,
        ),
        ElevatedButton.icon(
          onPressed: () => onRetry?.call(),
          icon: const Icon(Icons.replay_outlined),
          label: const Text("Retry"),
        )
      ],
    );
  }
}
