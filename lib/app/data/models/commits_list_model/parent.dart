import 'package:json_annotation/json_annotation.dart';

part 'parent.g.dart';

@JsonSerializable()
class Parent {
  final String? sha;
  final String? url;
  @JsonKey(name: 'html_url')
  final String? htmlUrl;

  const Parent({this.sha, this.url, this.htmlUrl});

  factory Parent.fromJson(Map<String, dynamic> json) {
    return _$ParentFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ParentToJson(this);
}
