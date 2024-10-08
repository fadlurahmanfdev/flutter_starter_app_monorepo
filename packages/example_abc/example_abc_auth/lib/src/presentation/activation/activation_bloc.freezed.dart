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
  String get password => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String password) process,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String password)? process,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String password)? process,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Process value) process,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Process value)? process,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Process value)? process,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ActivationEventCopyWith<ActivationEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActivationEventCopyWith<$Res> {
  factory $ActivationEventCopyWith(
          ActivationEvent value, $Res Function(ActivationEvent) then) =
      _$ActivationEventCopyWithImpl<$Res, ActivationEvent>;
  @useResult
  $Res call({String password});
}

/// @nodoc
class _$ActivationEventCopyWithImpl<$Res, $Val extends ActivationEvent>
    implements $ActivationEventCopyWith<$Res> {
  _$ActivationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProcessImplCopyWith<$Res>
    implements $ActivationEventCopyWith<$Res> {
  factory _$$ProcessImplCopyWith(
          _$ProcessImpl value, $Res Function(_$ProcessImpl) then) =
      __$$ProcessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String password});
}

/// @nodoc
class __$$ProcessImplCopyWithImpl<$Res>
    extends _$ActivationEventCopyWithImpl<$Res, _$ProcessImpl>
    implements _$$ProcessImplCopyWith<$Res> {
  __$$ProcessImplCopyWithImpl(
      _$ProcessImpl _value, $Res Function(_$ProcessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
  }) {
    return _then(_$ProcessImpl(
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ProcessImpl implements _Process {
  const _$ProcessImpl({required this.password});

  @override
  final String password;

  @override
  String toString() {
    return 'ActivationEvent.process(password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProcessImpl &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProcessImplCopyWith<_$ProcessImpl> get copyWith =>
      __$$ProcessImplCopyWithImpl<_$ProcessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String password) process,
  }) {
    return process(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String password)? process,
  }) {
    return process?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String password)? process,
    required TResult orElse(),
  }) {
    if (process != null) {
      return process(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Process value) process,
  }) {
    return process(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Process value)? process,
  }) {
    return process?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Process value)? process,
    required TResult orElse(),
  }) {
    if (process != null) {
      return process(this);
    }
    return orElse();
  }
}

abstract class _Process implements ActivationEvent {
  const factory _Process({required final String password}) = _$ProcessImpl;

  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$ProcessImplCopyWith<_$ProcessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ActivationState {
  CreatePasswordState get createPasswordState =>
      throw _privateConstructorUsedError;

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
  $Res call({CreatePasswordState createPasswordState});
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
  }) {
    return _then(_value.copyWith(
      createPasswordState: null == createPasswordState
          ? _value.createPasswordState
          : createPasswordState // ignore: cast_nullable_to_non_nullable
              as CreatePasswordState,
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
  $Res call({CreatePasswordState createPasswordState});
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
  }) {
    return _then(_$ActivationStateImpl(
      createPasswordState: null == createPasswordState
          ? _value.createPasswordState
          : createPasswordState // ignore: cast_nullable_to_non_nullable
              as CreatePasswordState,
    ));
  }
}

/// @nodoc

class _$ActivationStateImpl implements _ActivationState {
  const _$ActivationStateImpl({required this.createPasswordState});

  @override
  final CreatePasswordState createPasswordState;

  @override
  String toString() {
    return 'ActivationState(createPasswordState: $createPasswordState)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActivationStateImpl &&
            (identical(other.createPasswordState, createPasswordState) ||
                other.createPasswordState == createPasswordState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, createPasswordState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ActivationStateImplCopyWith<_$ActivationStateImpl> get copyWith =>
      __$$ActivationStateImplCopyWithImpl<_$ActivationStateImpl>(
          this, _$identity);
}

abstract class _ActivationState implements ActivationState {
  const factory _ActivationState(
          {required final CreatePasswordState createPasswordState}) =
      _$ActivationStateImpl;

  @override
  CreatePasswordState get createPasswordState;
  @override
  @JsonKey(ignore: true)
  _$$ActivationStateImplCopyWith<_$ActivationStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
