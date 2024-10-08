// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'identity_model_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

IdentityModelEntity _$IdentityModelEntityFromJson(Map json) =>
    IdentityModelEntity(
      id: json['id'] as String,
      token: json['token'] as String?,
      ivToken: json['ivToken'] as String?,
      privateKeyPassword: json['privateKeyPassword'] as String?,
      publicKeyPassword: json['publicKeyPassword'] as String?,
      encryptedPassword: json['encryptedPassword'] as String?,
      passwordSignature: json['passwordSignature'] as String?,
    );

Map<String, dynamic> _$IdentityModelEntityToJson(
        IdentityModelEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'token': instance.token,
      'ivToken': instance.ivToken,
      'privateKeyPassword': instance.privateKeyPassword,
      'publicKeyPassword': instance.publicKeyPassword,
      'encryptedPassword': instance.encryptedPassword,
      'passwordSignature': instance.passwordSignature,
    };
