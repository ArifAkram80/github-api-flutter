import 'package:json_annotation/json_annotation.dart';

part 'verification.g.dart';

@JsonSerializable()
class Verification {
  final bool? verified;
  final String? reason;
  final String? signature;
  final String? payload;

  const Verification({
    this.verified,
    this.reason,
    this.signature,
    this.payload,
  });

  factory Verification.fromJson(Map<String, dynamic> json) {
    return _$VerificationFromJson(json);
  }

  Map<String, dynamic> toJson() => _$VerificationToJson(this);
}
