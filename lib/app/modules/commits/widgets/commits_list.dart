import 'package:flutter/material.dart';

import '../../../../core/utils/size_util.dart';
import 'commit_item.dart';

class CommitsList extends StatelessWidget {
  const CommitsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScrollController scrollController = ScrollController();
    return Scrollbar(
      controller: scrollController,
      thickness: 1,
      child: ListView.separated(
        controller: scrollController,
        itemCount: 10,
        itemBuilder: (context, index) {
          return const CommitListItem();
        },
        separatorBuilder: (ctx, index) => Divider(
          height: SizeUtil.getAxisY(1),
          thickness: SizeUtil.getAxisY(1),
        ),
      ),
    );
  }
}
