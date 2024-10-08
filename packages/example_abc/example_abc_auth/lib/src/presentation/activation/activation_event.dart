part of 'activation_bloc.dart';

@freezed
class ActivationEvent with _$ActivationEvent {
  const factory ActivationEvent.process({required String password}) = _Process;
}