// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'example_crypto_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ExampleCryptoEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() generateAESKey,
    required TResult Function() encryptAES,
    required TResult Function() decryptAES,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? generateAESKey,
    TResult? Function()? encryptAES,
    TResult? Function()? decryptAES,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? generateAESKey,
    TResult Function()? encryptAES,
    TResult Function()? decryptAES,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GenerateAESKey value) generateAESKey,
    required TResult Function(_EncryptAES value) encryptAES,
    required TResult Function(_DecryptAES value) decryptAES,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GenerateAESKey value)? generateAESKey,
    TResult? Function(_EncryptAES value)? encryptAES,
    TResult? Function(_DecryptAES value)? decryptAES,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GenerateAESKey value)? generateAESKey,
    TResult Function(_EncryptAES value)? encryptAES,
    TResult Function(_DecryptAES value)? decryptAES,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExampleCryptoEventCopyWith<$Res> {
  factory $ExampleCryptoEventCopyWith(
          ExampleCryptoEvent value, $Res Function(ExampleCryptoEvent) then) =
      _$ExampleCryptoEventCopyWithImpl<$Res, ExampleCryptoEvent>;
}

/// @nodoc
class _$ExampleCryptoEventCopyWithImpl<$Res, $Val extends ExampleCryptoEvent>
    implements $ExampleCryptoEventCopyWith<$Res> {
  _$ExampleCryptoEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GenerateAESKeyImplCopyWith<$Res> {
  factory _$$GenerateAESKeyImplCopyWith(_$GenerateAESKeyImpl value,
          $Res Function(_$GenerateAESKeyImpl) then) =
      __$$GenerateAESKeyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GenerateAESKeyImplCopyWithImpl<$Res>
    extends _$ExampleCryptoEventCopyWithImpl<$Res, _$GenerateAESKeyImpl>
    implements _$$GenerateAESKeyImplCopyWith<$Res> {
  __$$GenerateAESKeyImplCopyWithImpl(
      _$GenerateAESKeyImpl _value, $Res Function(_$GenerateAESKeyImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GenerateAESKeyImpl implements _GenerateAESKey {
  const _$GenerateAESKeyImpl();

  @override
  String toString() {
    return 'ExampleCryptoEvent.generateAESKey()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GenerateAESKeyImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() generateAESKey,
    required TResult Function() encryptAES,
    required TResult Function() decryptAES,
  }) {
    return generateAESKey();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? generateAESKey,
    TResult? Function()? encryptAES,
    TResult? Function()? decryptAES,
  }) {
    return generateAESKey?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? generateAESKey,
    TResult Function()? encryptAES,
    TResult Function()? decryptAES,
    required TResult orElse(),
  }) {
    if (generateAESKey != null) {
      return generateAESKey();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GenerateAESKey value) generateAESKey,
    required TResult Function(_EncryptAES value) encryptAES,
    required TResult Function(_DecryptAES value) decryptAES,
  }) {
    return generateAESKey(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GenerateAESKey value)? generateAESKey,
    TResult? Function(_EncryptAES value)? encryptAES,
    TResult? Function(_DecryptAES value)? decryptAES,
  }) {
    return generateAESKey?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GenerateAESKey value)? generateAESKey,
    TResult Function(_EncryptAES value)? encryptAES,
    TResult Function(_DecryptAES value)? decryptAES,
    required TResult orElse(),
  }) {
    if (generateAESKey != null) {
      return generateAESKey(this);
    }
    return orElse();
  }
}

abstract class _GenerateAESKey implements ExampleCryptoEvent {
  const factory _GenerateAESKey() = _$GenerateAESKeyImpl;
}

/// @nodoc
abstract class _$$EncryptAESImplCopyWith<$Res> {
  factory _$$EncryptAESImplCopyWith(
          _$EncryptAESImpl value, $Res Function(_$EncryptAESImpl) then) =
      __$$EncryptAESImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EncryptAESImplCopyWithImpl<$Res>
    extends _$ExampleCryptoEventCopyWithImpl<$Res, _$EncryptAESImpl>
    implements _$$EncryptAESImplCopyWith<$Res> {
  __$$EncryptAESImplCopyWithImpl(
      _$EncryptAESImpl _value, $Res Function(_$EncryptAESImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EncryptAESImpl implements _EncryptAES {
  const _$EncryptAESImpl();

  @override
  String toString() {
    return 'ExampleCryptoEvent.encryptAES()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EncryptAESImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() generateAESKey,
    required TResult Function() encryptAES,
    required TResult Function() decryptAES,
  }) {
    return encryptAES();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? generateAESKey,
    TResult? Function()? encryptAES,
    TResult? Function()? decryptAES,
  }) {
    return encryptAES?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? generateAESKey,
    TResult Function()? encryptAES,
    TResult Function()? decryptAES,
    required TResult orElse(),
  }) {
    if (encryptAES != null) {
      return encryptAES();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GenerateAESKey value) generateAESKey,
    required TResult Function(_EncryptAES value) encryptAES,
    required TResult Function(_DecryptAES value) decryptAES,
  }) {
    return encryptAES(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GenerateAESKey value)? generateAESKey,
    TResult? Function(_EncryptAES value)? encryptAES,
    TResult? Function(_DecryptAES value)? decryptAES,
  }) {
    return encryptAES?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GenerateAESKey value)? generateAESKey,
    TResult Function(_EncryptAES value)? encryptAES,
    TResult Function(_DecryptAES value)? decryptAES,
    required TResult orElse(),
  }) {
    if (encryptAES != null) {
      return encryptAES(this);
    }
    return orElse();
  }
}

abstract class _EncryptAES implements ExampleCryptoEvent {
  const factory _EncryptAES() = _$EncryptAESImpl;
}

/// @nodoc
abstract class _$$DecryptAESImplCopyWith<$Res> {
  factory _$$DecryptAESImplCopyWith(
          _$DecryptAESImpl value, $Res Function(_$DecryptAESImpl) then) =
      __$$DecryptAESImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DecryptAESImplCopyWithImpl<$Res>
    extends _$ExampleCryptoEventCopyWithImpl<$Res, _$DecryptAESImpl>
    implements _$$DecryptAESImplCopyWith<$Res> {
  __$$DecryptAESImplCopyWithImpl(
      _$DecryptAESImpl _value, $Res Function(_$DecryptAESImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DecryptAESImpl implements _DecryptAES {
  const _$DecryptAESImpl();

  @override
  String toString() {
    return 'ExampleCryptoEvent.decryptAES()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DecryptAESImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() generateAESKey,
    required TResult Function() encryptAES,
    required TResult Function() decryptAES,
  }) {
    return decryptAES();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? generateAESKey,
    TResult? Function()? encryptAES,
    TResult? Function()? decryptAES,
  }) {
    return decryptAES?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? generateAESKey,
    TResult Function()? encryptAES,
    TResult Function()? decryptAES,
    required TResult orElse(),
  }) {
    if (decryptAES != null) {
      return decryptAES();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GenerateAESKey value) generateAESKey,
    required TResult Function(_EncryptAES value) encryptAES,
    required TResult Function(_DecryptAES value) decryptAES,
  }) {
    return decryptAES(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GenerateAESKey value)? generateAESKey,
    TResult? Function(_EncryptAES value)? encryptAES,
    TResult? Function(_DecryptAES value)? decryptAES,
  }) {
    return decryptAES?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GenerateAESKey value)? generateAESKey,
    TResult Function(_EncryptAES value)? encryptAES,
    TResult Function(_DecryptAES value)? decryptAES,
    required TResult orElse(),
  }) {
    if (decryptAES != null) {
      return decryptAES(this);
    }
    return orElse();
  }
}

abstract class _DecryptAES implements ExampleCryptoEvent {
  const factory _DecryptAES() = _$DecryptAESImpl;
}

/// @nodoc
mixin _$ExampleCryptoState {
  String? get aesIVKey => throw _privateConstructorUsedError;
  String? get aesKey => throw _privateConstructorUsedError;
  String? get encryptedAES => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ExampleCryptoStateCopyWith<ExampleCryptoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExampleCryptoStateCopyWith<$Res> {
  factory $ExampleCryptoStateCopyWith(
          ExampleCryptoState value, $Res Function(ExampleCryptoState) then) =
      _$ExampleCryptoStateCopyWithImpl<$Res, ExampleCryptoState>;
  @useResult
  $Res call({String? aesIVKey, String? aesKey, String? encryptedAES});
}

/// @nodoc
class _$ExampleCryptoStateCopyWithImpl<$Res, $Val extends ExampleCryptoState>
    implements $ExampleCryptoStateCopyWith<$Res> {
  _$ExampleCryptoStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? aesIVKey = freezed,
    Object? aesKey = freezed,
    Object? encryptedAES = freezed,
  }) {
    return _then(_value.copyWith(
      aesIVKey: freezed == aesIVKey
          ? _value.aesIVKey
          : aesIVKey // ignore: cast_nullable_to_non_nullable
              as String?,
      aesKey: freezed == aesKey
          ? _value.aesKey
          : aesKey // ignore: cast_nullable_to_non_nullable
              as String?,
      encryptedAES: freezed == encryptedAES
          ? _value.encryptedAES
          : encryptedAES // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExampleCryptoStateImplCopyWith<$Res>
    implements $ExampleCryptoStateCopyWith<$Res> {
  factory _$$ExampleCryptoStateImplCopyWith(_$ExampleCryptoStateImpl value,
          $Res Function(_$ExampleCryptoStateImpl) then) =
      __$$ExampleCryptoStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? aesIVKey, String? aesKey, String? encryptedAES});
}

/// @nodoc
class __$$ExampleCryptoStateImplCopyWithImpl<$Res>
    extends _$ExampleCryptoStateCopyWithImpl<$Res, _$ExampleCryptoStateImpl>
    implements _$$ExampleCryptoStateImplCopyWith<$Res> {
  __$$ExampleCryptoStateImplCopyWithImpl(_$ExampleCryptoStateImpl _value,
      $Res Function(_$ExampleCryptoStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? aesIVKey = freezed,
    Object? aesKey = freezed,
    Object? encryptedAES = freezed,
  }) {
    return _then(_$ExampleCryptoStateImpl(
      aesIVKey: freezed == aesIVKey
          ? _value.aesIVKey
          : aesIVKey // ignore: cast_nullable_to_non_nullable
              as String?,
      aesKey: freezed == aesKey
          ? _value.aesKey
          : aesKey // ignore: cast_nullable_to_non_nullable
              as String?,
      encryptedAES: freezed == encryptedAES
          ? _value.encryptedAES
          : encryptedAES // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ExampleCryptoStateImpl implements _ExampleCryptoState {
  const _$ExampleCryptoStateImpl(
      {this.aesIVKey, this.aesKey, this.encryptedAES});

  @override
  final String? aesIVKey;
  @override
  final String? aesKey;
  @override
  final String? encryptedAES;

  @override
  String toString() {
    return 'ExampleCryptoState(aesIVKey: $aesIVKey, aesKey: $aesKey, encryptedAES: $encryptedAES)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExampleCryptoStateImpl &&
            (identical(other.aesIVKey, aesIVKey) ||
                other.aesIVKey == aesIVKey) &&
            (identical(other.aesKey, aesKey) || other.aesKey == aesKey) &&
            (identical(other.encryptedAES, encryptedAES) ||
                other.encryptedAES == encryptedAES));
  }

  @override
  int get hashCode => Object.hash(runtimeType, aesIVKey, aesKey, encryptedAES);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExampleCryptoStateImplCopyWith<_$ExampleCryptoStateImpl> get copyWith =>
      __$$ExampleCryptoStateImplCopyWithImpl<_$ExampleCryptoStateImpl>(
          this, _$identity);
}

abstract class _ExampleCryptoState implements ExampleCryptoState {
  const factory _ExampleCryptoState(
      {final String? aesIVKey,
      final String? aesKey,
      final String? encryptedAES}) = _$ExampleCryptoStateImpl;

  @override
  String? get aesIVKey;
  @override
  String? get aesKey;
  @override
  String? get encryptedAES;
  @override
  @JsonKey(ignore: true)
  _$$ExampleCryptoStateImplCopyWith<_$ExampleCryptoStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
