import 'package:json_annotation/json_annotation.dart';

part 'tree.g.dart';

@JsonSerializable()
class Tree {
  final String? sha;
  final String? url;

  const Tree({this.sha, this.url});

  factory Tree.fromJson(Map<String, dynamic> json) => _$TreeFromJson(json);

  Map<String, dynamic> toJson() => _$TreeToJson(this);
}
