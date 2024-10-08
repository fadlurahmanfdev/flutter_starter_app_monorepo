part of 'activation_bloc.dart';

@freezed
class ActivationState with _$ActivationState {
  const factory ActivationState({
    required CreatePasswordState createPasswordState,
  }) = _ActivationState;

  factory ActivationState.initialize() => ActivationState(
        createPasswordState: CreatePasswordLocallyIdle(),
      );
}

abstract class CreatePasswordState {}

class CreatePasswordLocallyIdle extends CreatePasswordState {}

class CreatePasswordLocallyLoading extends CreatePasswordState {}

class CreatePasswordLocallySuccess extends CreatePasswordState {}

class CreatePasswordLocallyFailed extends CreatePasswordState {}
