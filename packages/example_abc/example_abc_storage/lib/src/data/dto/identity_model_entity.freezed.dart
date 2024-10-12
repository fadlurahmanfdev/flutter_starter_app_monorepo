// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'identity_model_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

IdentityModelEntity _$IdentityModelEntityFromJson(Map<String, dynamic> json) {
  return _IdentityModelEntity.fromJson(json);
}

/// @nodoc
mixin _$IdentityModelEntity {
  String get id => throw _privateConstructorUsedError;
  String? get token => throw _privateConstructorUsedError;
  String? get ivToken => throw _privateConstructorUsedError;
  String? get privateKey => throw _privateConstructorUsedError;
  String? get publicKey => throw _privateConstructorUsedError;
  String? get passwordSignature => throw _privateConstructorUsedError;
  String? get pinSignature => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IdentityModelEntityCopyWith<IdentityModelEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IdentityModelEntityCopyWith<$Res> {
  factory $IdentityModelEntityCopyWith(
          IdentityModelEntity value, $Res Function(IdentityModelEntity) then) =
      _$IdentityModelEntityCopyWithImpl<$Res, IdentityModelEntity>;
  @useResult
  $Res call(
      {String id,
      String? token,
      String? ivToken,
      String? privateKey,
      String? publicKey,
      String? passwordSignature,
      String? pinSignature});
}

/// @nodoc
class _$IdentityModelEntityCopyWithImpl<$Res, $Val extends IdentityModelEntity>
    implements $IdentityModelEntityCopyWith<$Res> {
  _$IdentityModelEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? token = freezed,
    Object? ivToken = freezed,
    Object? privateKey = freezed,
    Object? publicKey = freezed,
    Object? passwordSignature = freezed,
    Object? pinSignature = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      ivToken: freezed == ivToken
          ? _value.ivToken
          : ivToken // ignore: cast_nullable_to_non_nullable
              as String?,
      privateKey: freezed == privateKey
          ? _value.privateKey
          : privateKey // ignore: cast_nullable_to_non_nullable
              as String?,
      publicKey: freezed == publicKey
          ? _value.publicKey
          : publicKey // ignore: cast_nullable_to_non_nullable
              as String?,
      passwordSignature: freezed == passwordSignature
          ? _value.passwordSignature
          : passwordSignature // ignore: cast_nullable_to_non_nullable
              as String?,
      pinSignature: freezed == pinSignature
          ? _value.pinSignature
          : pinSignature // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IdentityModelEntityImplCopyWith<$Res>
    implements $IdentityModelEntityCopyWith<$Res> {
  factory _$$IdentityModelEntityImplCopyWith(_$IdentityModelEntityImpl value,
          $Res Function(_$IdentityModelEntityImpl) then) =
      __$$IdentityModelEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String? token,
      String? ivToken,
      String? privateKey,
      String? publicKey,
      String? passwordSignature,
      String? pinSignature});
}

/// @nodoc
class __$$IdentityModelEntityImplCopyWithImpl<$Res>
    extends _$IdentityModelEntityCopyWithImpl<$Res, _$IdentityModelEntityImpl>
    implements _$$IdentityModelEntityImplCopyWith<$Res> {
  __$$IdentityModelEntityImplCopyWithImpl(_$IdentityModelEntityImpl _value,
      $Res Function(_$IdentityModelEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? token = freezed,
    Object? ivToken = freezed,
    Object? privateKey = freezed,
    Object? publicKey = freezed,
    Object? passwordSignature = freezed,
    Object? pinSignature = freezed,
  }) {
    return _then(_$IdentityModelEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      ivToken: freezed == ivToken
          ? _value.ivToken
          : ivToken // ignore: cast_nullable_to_non_nullable
              as String?,
      privateKey: freezed == privateKey
          ? _value.privateKey
          : privateKey // ignore: cast_nullable_to_non_nullable
              as String?,
      publicKey: freezed == publicKey
          ? _value.publicKey
          : publicKey // ignore: cast_nullable_to_non_nullable
              as String?,
      passwordSignature: freezed == passwordSignature
          ? _value.passwordSignature
          : passwordSignature // ignore: cast_nullable_to_non_nullable
              as String?,
      pinSignature: freezed == pinSignature
          ? _value.pinSignature
          : pinSignature // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IdentityModelEntityImpl implements _IdentityModelEntity {
  const _$IdentityModelEntityImpl(
      {required this.id,
      this.token,
      this.ivToken,
      this.privateKey,
      this.publicKey,
      this.passwordSignature,
      this.pinSignature});

  factory _$IdentityModelEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$IdentityModelEntityImplFromJson(json);

  @override
  final String id;
  @override
  final String? token;
  @override
  final String? ivToken;
  @override
  final String? privateKey;
  @override
  final String? publicKey;
  @override
  final String? passwordSignature;
  @override
  final String? pinSignature;

  @override
  String toString() {
    return 'IdentityModelEntity(id: $id, token: $token, ivToken: $ivToken, privateKey: $privateKey, publicKey: $publicKey, passwordSignature: $passwordSignature, pinSignature: $pinSignature)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IdentityModelEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.ivToken, ivToken) || other.ivToken == ivToken) &&
            (identical(other.privateKey, privateKey) ||
                other.privateKey == privateKey) &&
            (identical(other.publicKey, publicKey) ||
                other.publicKey == publicKey) &&
            (identical(other.passwordSignature, passwordSignature) ||
                other.passwordSignature == passwordSignature) &&
            (identical(other.pinSignature, pinSignature) ||
                other.pinSignature == pinSignature));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, token, ivToken, privateKey,
      publicKey, passwordSignature, pinSignature);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IdentityModelEntityImplCopyWith<_$IdentityModelEntityImpl> get copyWith =>
      __$$IdentityModelEntityImplCopyWithImpl<_$IdentityModelEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IdentityModelEntityImplToJson(
      this,
    );
  }
}

abstract class _IdentityModelEntity implements IdentityModelEntity {
  const factory _IdentityModelEntity(
      {required final String id,
      final String? token,
      final String? ivToken,
      final String? privateKey,
      final String? publicKey,
      final String? passwordSignature,
      final String? pinSignature}) = _$IdentityModelEntityImpl;

  factory _IdentityModelEntity.fromJson(Map<String, dynamic> json) =
      _$IdentityModelEntityImpl.fromJson;

  @override
  String get id;
  @override
  String? get token;
  @override
  String? get ivToken;
  @override
  String? get privateKey;
  @override
  String? get publicKey;
  @override
  String? get passwordSignature;
  @override
  String? get pinSignature;
  @override
  @JsonKey(ignore: true)
  _$$IdentityModelEntityImplCopyWith<_$IdentityModelEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
