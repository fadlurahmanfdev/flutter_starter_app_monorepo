part of 'activation_bloc.dart';

@freezed
class ActivationState with _$ActivationState {
  const factory ActivationState({
    required CreatePasswordState createPasswordState,
    required CreatePINState createPINState,
  }) = _ActivationState;

  factory ActivationState.initialize() => ActivationState(
        createPasswordState: CreatePasswordIdle(),
        createPINState: CreatePINIdle(),
      );
}

abstract class CreatePasswordState {}

class CreatePasswordIdle extends CreatePasswordState {}

class CreatePasswordLoading extends CreatePasswordState {}

class CreatePasswordSuccess extends CreatePasswordState {}

class CreatePasswordAlreadyCreated extends CreatePasswordState {}

class CreatePasswordFailed extends CreatePasswordState {}

abstract class CreatePINState {}

class CreatePINIdle extends CreatePINState {}

class CreatePINLoading extends CreatePINState {}

class CreatePINSuccess extends CreatePINState {}

class CreatePINFailed extends CreatePINState {}
