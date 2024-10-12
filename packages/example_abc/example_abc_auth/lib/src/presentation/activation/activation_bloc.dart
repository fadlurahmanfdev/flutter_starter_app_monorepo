import 'package:example_abc_auth/src/domain/usecase/examble_abc_auth_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'activation_bloc.freezed.dart';

part 'activation_event.dart';

part 'activation_state.dart';

class ActivationBloc extends Bloc<ActivationEvent, ActivationState> {
  ExampleAbcAuthUseCase exampleAbcAuthUseCase;

  ActivationBloc({
    required this.exampleAbcAuthUseCase,
  }) : super(ActivationState.initialize()) {
    on<ActivationEvent>((events, emit) async {
      await events.map(
        checkPassword: (event) async => await _onCheckPassword(event, emit),
        createPassword: (event) async => await _onCreatePassword(event, emit),
        createPIN: (event) async => await _onCreatePIN(event, emit),
        verifyPassword: (event) async => await _onVerifyPassword(event, emit),
      );
    });
  }

  Future<void> _onCheckPassword(_CheckPassword event, Emitter<ActivationState> emit) async {
    final res = await exampleAbcAuthUseCase.isPasswordAlreadyCreated();
    res.fold(
      (l) {},
      (isPasswordAlreadyCreated) {
        if (isPasswordAlreadyCreated) {
          emit(state.copyWith(createPasswordState: CreatePasswordAlreadyCreated()));
        }
      },
    );
  }

  Future<void> _onCreatePassword(_CreatePassword event, Emitter<ActivationState> emit) async {
    try {
      final res = await exampleAbcAuthUseCase.createPassword(password: event.password);
      res.fold(
        (l) => throw l,
        (r) {
          emit(state.copyWith(createPasswordState: CreatePasswordSuccess()));
        },
      );
    } catch (e) {
      emit(state.copyWith(createPasswordState: CreatePasswordFailed()));
    }
  }

  Future<void> _onCreatePIN(_CreatePIN event, Emitter<ActivationState> emit) async {
    try {
      final res = await exampleAbcAuthUseCase.createPIN(pin: event.pin);
      res.fold(
        (l) => throw l,
        (r) {
          emit(state.copyWith(createPasswordState: CreatePasswordSuccess()));
        },
      );
    } catch (e) {
      emit(state.copyWith(createPasswordState: CreatePasswordFailed()));
    }
  }

  Future<void> _onVerifyPassword(_VerifyPassword event, Emitter<ActivationState> emit) async {}
}
