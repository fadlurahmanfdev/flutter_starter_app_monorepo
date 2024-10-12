// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'activation_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ActivationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkPassword,
    required TResult Function(String password) createPassword,
    required TResult Function(String pin) createPIN,
    required TResult Function(String password) verifyPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkPassword,
    TResult? Function(String password)? createPassword,
    TResult? Function(String pin)? createPIN,
    TResult? Function(String password)? verifyPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkPassword,
    TResult Function(String password)? createPassword,
    TResult Function(String pin)? createPIN,
    TResult Function(String password)? verifyPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckPassword value) checkPassword,
    required TResult Function(_CreatePassword value) createPassword,
    required TResult Function(_CreatePIN value) createPIN,
    required TResult Function(_VerifyPassword value) verifyPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckPassword value)? checkPassword,
    TResult? Function(_CreatePassword value)? createPassword,
    TResult? Function(_CreatePIN value)? createPIN,
    TResult? Function(_VerifyPassword value)? verifyPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckPassword value)? checkPassword,
    TResult Function(_CreatePassword value)? createPassword,
    TResult Function(_CreatePIN value)? createPIN,
    TResult Function(_VerifyPassword value)? verifyPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActivationEventCopyWith<$Res> {
  factory $ActivationEventCopyWith(
          ActivationEvent value, $Res Function(ActivationEvent) then) =
      _$ActivationEventCopyWithImpl<$Res, ActivationEvent>;
}

/// @nodoc
class _$ActivationEventCopyWithImpl<$Res, $Val extends ActivationEvent>
    implements $ActivationEventCopyWith<$Res> {
  _$ActivationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CheckPasswordImplCopyWith<$Res> {
  factory _$$CheckPasswordImplCopyWith(
          _$CheckPasswordImpl value, $Res Function(_$CheckPasswordImpl) then) =
      __$$CheckPasswordImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckPasswordImplCopyWithImpl<$Res>
    extends _$ActivationEventCopyWithImpl<$Res, _$CheckPasswordImpl>
    implements _$$CheckPasswordImplCopyWith<$Res> {
  __$$CheckPasswordImplCopyWithImpl(
      _$CheckPasswordImpl _value, $Res Function(_$CheckPasswordImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CheckPasswordImpl implements _CheckPassword {
  const _$CheckPasswordImpl();

  @override
  String toString() {
    return 'ActivationEvent.checkPassword()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CheckPasswordImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkPassword,
    required TResult Function(String password) createPassword,
    required TResult Function(String pin) createPIN,
    required TResult Function(String password) verifyPassword,
  }) {
    return checkPassword();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkPassword,
    TResult? Function(String password)? createPassword,
    TResult? Function(String pin)? createPIN,
    TResult? Function(String password)? verifyPassword,
  }) {
    return checkPassword?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkPassword,
    TResult Function(String password)? createPassword,
    TResult Function(String pin)? createPIN,
    TResult Function(String password)? verifyPassword,
    required TResult orElse(),
  }) {
    if (checkPassword != null) {
      return checkPassword();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckPassword value) checkPassword,
    required TResult Function(_CreatePassword value) createPassword,
    required TResult Function(_CreatePIN value) createPIN,
    required TResult Function(_VerifyPassword value) verifyPassword,
  }) {
    return checkPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckPassword value)? checkPassword,
    TResult? Function(_CreatePassword value)? createPassword,
    TResult? Function(_CreatePIN value)? createPIN,
    TResult? Function(_VerifyPassword value)? verifyPassword,
  }) {
    return checkPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckPassword value)? checkPassword,
    TResult Function(_CreatePassword value)? createPassword,
    TResult Function(_CreatePIN value)? createPIN,
    TResult Function(_VerifyPassword value)? verifyPassword,
    required TResult orElse(),
  }) {
    if (checkPassword != null) {
      return checkPassword(this);
    }
    return orElse();
  }
}

abstract class _CheckPassword implements ActivationEvent {
  const factory _CheckPassword() = _$CheckPasswordImpl;
}

/// @nodoc
abstract class _$$CreatePasswordImplCopyWith<$Res> {
  factory _$$CreatePasswordImplCopyWith(_$CreatePasswordImpl value,
          $Res Function(_$CreatePasswordImpl) then) =
      __$$CreatePasswordImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String password});
}

/// @nodoc
class __$$CreatePasswordImplCopyWithImpl<$Res>
    extends _$ActivationEventCopyWithImpl<$Res, _$CreatePasswordImpl>
    implements _$$CreatePasswordImplCopyWith<$Res> {
  __$$CreatePasswordImplCopyWithImpl(
      _$CreatePasswordImpl _value, $Res Function(_$CreatePasswordImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
  }) {
    return _then(_$CreatePasswordImpl(
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CreatePasswordImpl implements _CreatePassword {
  const _$CreatePasswordImpl({required this.password});

  @override
  final String password;

  @override
  String toString() {
    return 'ActivationEvent.createPassword(password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreatePasswordImpl &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreatePasswordImplCopyWith<_$CreatePasswordImpl> get copyWith =>
      __$$CreatePasswordImplCopyWithImpl<_$CreatePasswordImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkPassword,
    required TResult Function(String password) createPassword,
    required TResult Function(String pin) createPIN,
    required TResult Function(String password) verifyPassword,
  }) {
    return createPassword(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkPassword,
    TResult? Function(String password)? createPassword,
    TResult? Function(String pin)? createPIN,
    TResult? Function(String password)? verifyPassword,
  }) {
    return createPassword?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkPassword,
    TResult Function(String password)? createPassword,
    TResult Function(String pin)? createPIN,
    TResult Function(String password)? verifyPassword,
    required TResult orElse(),
  }) {
    if (createPassword != null) {
      return createPassword(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckPassword value) checkPassword,
    required TResult Function(_CreatePassword value) createPassword,
    required TResult Function(_CreatePIN value) createPIN,
    required TResult Function(_VerifyPassword value) verifyPassword,
  }) {
    return createPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckPassword value)? checkPassword,
    TResult? Function(_CreatePassword value)? createPassword,
    TResult? Function(_CreatePIN value)? createPIN,
    TResult? Function(_VerifyPassword value)? verifyPassword,
  }) {
    return createPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckPassword value)? checkPassword,
    TResult Function(_CreatePassword value)? createPassword,
    TResult Function(_CreatePIN value)? createPIN,
    TResult Function(_VerifyPassword value)? verifyPassword,
    required TResult orElse(),
  }) {
    if (createPassword != null) {
      return createPassword(this);
    }
    return orElse();
  }
}

abstract class _CreatePassword implements ActivationEvent {
  const factory _CreatePassword({required final String password}) =
      _$CreatePasswordImpl;

  String get password;
  @JsonKey(ignore: true)
  _$$CreatePasswordImplCopyWith<_$CreatePasswordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreatePINImplCopyWith<$Res> {
  factory _$$CreatePINImplCopyWith(
          _$CreatePINImpl value, $Res Function(_$CreatePINImpl) then) =
      __$$CreatePINImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String pin});
}

/// @nodoc
class __$$CreatePINImplCopyWithImpl<$Res>
    extends _$ActivationEventCopyWithImpl<$Res, _$CreatePINImpl>
    implements _$$CreatePINImplCopyWith<$Res> {
  __$$CreatePINImplCopyWithImpl(
      _$CreatePINImpl _value, $Res Function(_$CreatePINImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pin = null,
  }) {
    return _then(_$CreatePINImpl(
      pin: null == pin
          ? _value.pin
          : pin // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CreatePINImpl implements _CreatePIN {
  const _$CreatePINImpl({required this.pin});

  @override
  final String pin;

  @override
  String toString() {
    return 'ActivationEvent.createPIN(pin: $pin)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreatePINImpl &&
            (identical(other.pin, pin) || other.pin == pin));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pin);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreatePINImplCopyWith<_$CreatePINImpl> get copyWith =>
      __$$CreatePINImplCopyWithImpl<_$CreatePINImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkPassword,
    required TResult Function(String password) createPassword,
    required TResult Function(String pin) createPIN,
    required TResult Function(String password) verifyPassword,
  }) {
    return createPIN(pin);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkPassword,
    TResult? Function(String password)? createPassword,
    TResult? Function(String pin)? createPIN,
    TResult? Function(String password)? verifyPassword,
  }) {
    return createPIN?.call(pin);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkPassword,
    TResult Function(String password)? createPassword,
    TResult Function(String pin)? createPIN,
    TResult Function(String password)? verifyPassword,
    required TResult orElse(),
  }) {
    if (createPIN != null) {
      return createPIN(pin);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckPassword value) checkPassword,
    required TResult Function(_CreatePassword value) createPassword,
    required TResult Function(_CreatePIN value) createPIN,
    required TResult Function(_VerifyPassword value) verifyPassword,
  }) {
    return createPIN(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckPassword value)? checkPassword,
    TResult? Function(_CreatePassword value)? createPassword,
    TResult? Function(_CreatePIN value)? createPIN,
    TResult? Function(_VerifyPassword value)? verifyPassword,
  }) {
    return createPIN?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckPassword value)? checkPassword,
    TResult Function(_CreatePassword value)? createPassword,
    TResult Function(_CreatePIN value)? createPIN,
    TResult Function(_VerifyPassword value)? verifyPassword,
    required TResult orElse(),
  }) {
    if (createPIN != null) {
      return createPIN(this);
    }
    return orElse();
  }
}

abstract class _CreatePIN implements ActivationEvent {
  const factory _CreatePIN({required final String pin}) = _$CreatePINImpl;

  String get pin;
  @JsonKey(ignore: true)
  _$$CreatePINImplCopyWith<_$CreatePINImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VerifyPasswordImplCopyWith<$Res> {
  factory _$$VerifyPasswordImplCopyWith(_$VerifyPasswordImpl value,
          $Res Function(_$VerifyPasswordImpl) then) =
      __$$VerifyPasswordImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String password});
}

/// @nodoc
class __$$VerifyPasswordImplCopyWithImpl<$Res>
    extends _$ActivationEventCopyWithImpl<$Res, _$VerifyPasswordImpl>
    implements _$$VerifyPasswordImplCopyWith<$Res> {
  __$$VerifyPasswordImplCopyWithImpl(
      _$VerifyPasswordImpl _value, $Res Function(_$VerifyPasswordImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
  }) {
    return _then(_$VerifyPasswordImpl(
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$VerifyPasswordImpl implements _VerifyPassword {
  const _$VerifyPasswordImpl({required this.password});

  @override
  final String password;

  @override
  String toString() {
    return 'ActivationEvent.verifyPassword(password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyPasswordImpl &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifyPasswordImplCopyWith<_$VerifyPasswordImpl> get copyWith =>
      __$$VerifyPasswordImplCopyWithImpl<_$VerifyPasswordImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkPassword,
    required TResult Function(String password) createPassword,
    required TResult Function(String pin) createPIN,
    required TResult Function(String password) verifyPassword,
  }) {
    return verifyPassword(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkPassword,
    TResult? Function(String password)? createPassword,
    TResult? Function(String pin)? createPIN,
    TResult? Function(String password)? verifyPassword,
  }) {
    return verifyPassword?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkPassword,
    TResult Function(String password)? createPassword,
    TResult Function(String pin)? createPIN,
    TResult Function(String password)? verifyPassword,
    required TResult orElse(),
  }) {
    if (verifyPassword != null) {
      return verifyPassword(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckPassword value) checkPassword,
    required TResult Function(_CreatePassword value) createPassword,
    required TResult Function(_CreatePIN value) createPIN,
    required TResult Function(_VerifyPassword value) verifyPassword,
  }) {
    return verifyPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckPassword value)? checkPassword,
    TResult? Function(_CreatePassword value)? createPassword,
    TResult? Function(_CreatePIN value)? createPIN,
    TResult? Function(_VerifyPassword value)? verifyPassword,
  }) {
    return verifyPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckPassword value)? checkPassword,
    TResult Function(_CreatePassword value)? createPassword,
    TResult Function(_CreatePIN value)? createPIN,
    TResult Function(_VerifyPassword value)? verifyPassword,
    required TResult orElse(),
  }) {
    if (verifyPassword != null) {
      return verifyPassword(this);
    }
    return orElse();
  }
}

abstract class _VerifyPassword implements ActivationEvent {
  const factory _VerifyPassword({required final String password}) =
      _$VerifyPasswordImpl;

  String get password;
  @JsonKey(ignore: true)
  _$$VerifyPasswordImplCopyWith<_$VerifyPasswordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ActivationState {
  CreatePasswordState get createPasswordState =>
      throw _privateConstructorUsedError;
  CreatePINState get createPINState => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ActivationStateCopyWith<ActivationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActivationStateCopyWith<$Res> {
  factory $ActivationStateCopyWith(
          ActivationState value, $Res Function(ActivationState) then) =
      _$ActivationStateCopyWithImpl<$Res, ActivationState>;
  @useResult
  $Res call(
      {CreatePasswordState createPasswordState, CreatePINState createPINState});
}

/// @nodoc
class _$ActivationStateCopyWithImpl<$Res, $Val extends ActivationState>
    implements $ActivationStateCopyWith<$Res> {
  _$ActivationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createPasswordState = null,
    Object? createPINState = null,
  }) {
    return _then(_value.copyWith(
      createPasswordState: null == createPasswordState
          ? _value.createPasswordState
          : createPasswordState // ignore: cast_nullable_to_non_nullable
              as CreatePasswordState,
      createPINState: null == createPINState
          ? _value.createPINState
          : createPINState // ignore: cast_nullable_to_non_nullable
              as CreatePINState,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ActivationStateImplCopyWith<$Res>
    implements $ActivationStateCopyWith<$Res> {
  factory _$$ActivationStateImplCopyWith(_$ActivationStateImpl value,
          $Res Function(_$ActivationStateImpl) then) =
      __$$ActivationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CreatePasswordState createPasswordState, CreatePINState createPINState});
}

/// @nodoc
class __$$ActivationStateImplCopyWithImpl<$Res>
    extends _$ActivationStateCopyWithImpl<$Res, _$ActivationStateImpl>
    implements _$$ActivationStateImplCopyWith<$Res> {
  __$$ActivationStateImplCopyWithImpl(
      _$ActivationStateImpl _value, $Res Function(_$ActivationStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createPasswordState = null,
    Object? createPINState = null,
  }) {
    return _then(_$ActivationStateImpl(
      createPasswordState: null == createPasswordState
          ? _value.createPasswordState
          : createPasswordState // ignore: cast_nullable_to_non_nullable
              as CreatePasswordState,
      createPINState: null == createPINState
          ? _value.createPINState
          : createPINState // ignore: cast_nullable_to_non_nullable
              as CreatePINState,
    ));
  }
}

/// @nodoc

class _$ActivationStateImpl implements _ActivationState {
  const _$ActivationStateImpl(
      {required this.createPasswordState, required this.createPINState});

  @override
  final CreatePasswordState createPasswordState;
  @override
  final CreatePINState createPINState;

  @override
  String toString() {
    return 'ActivationState(createPasswordState: $createPasswordState, createPINState: $createPINState)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActivationStateImpl &&
            (identical(other.createPasswordState, createPasswordState) ||
                other.createPasswordState == createPasswordState) &&
            (identical(other.createPINState, createPINState) ||
                other.createPINState == createPINState));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, createPasswordState, createPINState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ActivationStateImplCopyWith<_$ActivationStateImpl> get copyWith =>
      __$$ActivationStateImplCopyWithImpl<_$ActivationStateImpl>(
          this, _$identity);
}

abstract class _ActivationState implements ActivationState {
  const factory _ActivationState(
      {required final CreatePasswordState createPasswordState,
      required final CreatePINState createPINState}) = _$ActivationStateImpl;

  @override
  CreatePasswordState get createPasswordState;
  @override
  CreatePINState get createPINState;
  @override
  @JsonKey(ignore: true)
  _$$ActivationStateImplCopyWith<_$ActivationStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
