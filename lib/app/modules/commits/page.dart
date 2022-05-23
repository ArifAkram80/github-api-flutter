import 'package:flutter/material.dart';
import 'widgets/commit_header.dart';
import 'widgets/commits_list.dart';

import '../../../core/utils/size_util.dart';

class CommitsPage extends StatelessWidget {
  const CommitsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(
          horizontal: SizeUtil.getAxisX(13),
          vertical: SizeUtil.getAxisY(11),
        ),
        child: Column(
          children: [
            const CommitHeader(),
            SizedBox(
              height: SizeUtil.getAxisY(10),
            ),
            const Expanded(
              child: CommitsList(),
            ),
          ],
        ),
      ),
    );
  }
}
