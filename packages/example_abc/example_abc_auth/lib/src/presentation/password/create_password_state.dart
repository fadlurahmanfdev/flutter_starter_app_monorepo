part of 'create_password_bloc.dart';

@freezed
class CreatePasswordState with _$CreatePasswordState {
  const factory CreatePasswordState({
    required CreatePasswordLocallyState createPasswordState,
  }) = _CreatePasswordState;

  factory CreatePasswordState.initialize() => CreatePasswordState(
        createPasswordState: CreatePasswordLocallyIdle(),
      );
}

abstract class CreatePasswordLocallyState {}

class CreatePasswordLocallyIdle extends CreatePasswordLocallyState {}

class CreatePasswordLocallyLoading extends CreatePasswordLocallyState {}

class CreatePasswordLocallySuccess extends CreatePasswordLocallyState {}

class CreatePasswordLocallyFailed extends CreatePasswordLocallyState {}
