import 'package:flutter/material.dart';

import 'commit_item.dart';

class CommitsList extends StatelessWidget {
  const CommitsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScrollController scrollController = ScrollController();
    return Scrollbar(
      controller: scrollController,
      thickness: 1,
      child: ListView.builder(
        controller: scrollController,
        itemCount: 10,
        itemBuilder: (context, index) {
          return const CommitListItem();
        },
      ),
    );
  }
}
