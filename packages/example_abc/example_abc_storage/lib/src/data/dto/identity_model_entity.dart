import 'dart:convert';

import 'package:core_config/core_config.dart';

part 'identity_model_entity.freezed.dart';

part 'identity_model_entity.g.dart';

@freezed
class IdentityModelEntity with _$IdentityModelEntity {

  const factory IdentityModelEntity({
    required String id,
    String? token,
    String? ivToken,
    String? privateKey,
    String? publicKey,
    String? passwordSignature,
    String? pinSignature,
  }) = _IdentityModelEntity;

  factory IdentityModelEntity.fromJson(Map<String, dynamic> json) => _$IdentityModelEntityFromJson(json);
}
