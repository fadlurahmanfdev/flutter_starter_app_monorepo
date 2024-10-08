import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';

part 'identity_model_entity.g.dart';

@JsonSerializable(explicitToJson: true, anyMap: true)
class IdentityModelEntity {
  final String id;
  final String? token;
  final String? ivToken;
  final String? privateKeyPassword;
  final String? publicKeyPassword;
  final String? encryptedPassword;
  final String? passwordSignature;

  const IdentityModelEntity({
    required this.id,
    this.token,
    this.ivToken,
    this.privateKeyPassword,
    this.publicKeyPassword,
    this.encryptedPassword,
    this.passwordSignature,
  });

  factory IdentityModelEntity.fromJson(Map<String, dynamic> json) => _$IdentityModelEntityFromJson(json);

  Map<String, dynamic> toJson() => _$IdentityModelEntityToJson(this);

  String serialize() => jsonEncode(toJson());

  static IdentityModelEntity? deserialize(String? value) =>
      value == null ? null : IdentityModelEntity.fromJson(jsonDecode(value));
}
