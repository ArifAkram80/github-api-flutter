import 'package:flutter/material.dart';

import '../../../../core/utils/size_util.dart';
import '../../../data/models/commits_list_model/commits_list_model.dart';
import 'wig_commit_item.dart';

class CommitsListWidget extends StatelessWidget {
  final List<CommitsListModel> listOfCommits;
  const CommitsListWidget({required this.listOfCommits, Key? key})
      : super(key: key);

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
          return CommitListItemWidget(
            item: listOfCommits.elementAt(index),
          );
        },
        separatorBuilder: (ctx, index) => Divider(
          height: SizeUtil.getAxisY(1),
          thickness: SizeUtil.getAxisY(1),
        ),
      ),
    );
  }
}
