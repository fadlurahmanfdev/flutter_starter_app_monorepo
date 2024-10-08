part of 'create_password_bloc.dart';

@freezed
class CreatePasswordEvent with _$CreatePasswordEvent {
  const factory CreatePasswordEvent.process({required String password}) = _Process;
}