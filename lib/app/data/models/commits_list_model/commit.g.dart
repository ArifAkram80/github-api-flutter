// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'commit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Commit _$CommitFromJson(Map<String, dynamic> json) => Commit(
      author: json['author'] == null
          ? null
          : Author.fromJson(json['author'] as Map<String, dynamic>),
      committer: json['committer'] == null
          ? null
          : Committer.fromJson(json['committer'] as Map<String, dynamic>),
      message: json['message'] as String?,
      tree: json['tree'] == null
          ? null
          : Tree.fromJson(json['tree'] as Map<String, dynamic>),
      url: json['url'] as String?,
      commentCount: json['comment_count'] as int?,
      verification: json['verification'] == null
          ? null
          : Verification.fromJson(json['verification'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CommitToJson(Commit instance) => <String, dynamic>{
      'author': instance.author,
      'committer': instance.committer,
      'message': instance.message,
      'tree': instance.tree,
      'url': instance.url,
      'comment_count': instance.commentCount,
      'verification': instance.verification,
    };
