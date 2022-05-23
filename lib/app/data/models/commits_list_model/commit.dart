import 'package:json_annotation/json_annotation.dart';

import 'author.dart';
import 'committer.dart';
import 'tree.dart';
import 'verification.dart';

part 'commit.g.dart';

@JsonSerializable()
class Commit {
  final Author? author;
  final Committer? committer;
  final String? message;
  final Tree? tree;
  final String? url;
  @JsonKey(name: 'comment_count')
  final int? commentCount;
  final Verification? verification;

  const Commit({
    this.author,
    this.committer,
    this.message,
    this.tree,
    this.url,
    this.commentCount,
    this.verification,
  });

  factory Commit.fromJson(Map<String, dynamic> json) {
    return _$CommitFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CommitToJson(this);
}
