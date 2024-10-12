part of 'activation_bloc.dart';

@freezed
class ActivationEvent with _$ActivationEvent {
  const factory ActivationEvent.checkPassword() = _CheckPassword;
  const factory ActivationEvent.createPassword({required String password}) = _CreatePassword;
  const factory ActivationEvent.createPIN({required String pin}) = _CreatePIN;
  const factory ActivationEvent.verifyPassword({required String password}) = _VerifyPassword;
}