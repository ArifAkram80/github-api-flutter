import 'package:github_api_flutter/app/data/models/user_profile/user_profile.dart';
import 'package:json_annotation/json_annotation.dart';

import 'author.dart';
import 'commit.dart';
import 'committer.dart';
import 'parent.dart';

part 'commits_list_model.g.dart';

@JsonSerializable()
class CommitsListModel {
  final String? sha;
  @JsonKey(name: 'node_id')
  final String? nodeId;
  final Commit? commit;
  final String? url;
  @JsonKey(name: 'html_url')
  final String? htmlUrl;
  @JsonKey(name: 'comments_url')
  final String? commentsUrl;
  @JsonKey(name: 'author')
  final Author? author;
  @JsonKey(name: 'committer')
  final Committer? committer;
  final List<Parent>? parents;

  const CommitsListModel({
    this.sha,
    this.nodeId,
    this.commit,
    this.url,
    this.htmlUrl,
    this.commentsUrl,
    this.author,
    this.committer,
    this.parents,
  });

  factory CommitsListModel.fromJson(Map<String, dynamic> json) {
    return _$CommitsListModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CommitsListModelToJson(this);
}
