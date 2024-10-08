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
        process: (event) async => await _onProcess(event, emit),
      );
    });
  }

  Future<void> _onProcess(_Process event, Emitter<ActivationState> emit) async {
    try {
      final res = await exampleAbcAuthUseCase.createPassword(password: event.password);
      res.fold(
        (l) => throw l,
        (r) {
          emit(state.copyWith(createPasswordState: CreatePasswordLocallySuccess()));
        },
      );
    } catch (e) {
      emit(state.copyWith(createPasswordState: CreatePasswordLocallyFailed()));
    }
  }
}
