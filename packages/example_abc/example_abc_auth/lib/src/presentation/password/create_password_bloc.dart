import 'package:example_abc_auth/src/domain/usecase/examble_abc_auth_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_password_bloc.freezed.dart';

part 'create_password_event.dart';

part 'create_password_state.dart';

class CreatePasswordBloc extends Bloc<CreatePasswordEvent, CreatePasswordState> {
  ExampleAbcAuthUseCase exampleAbcAuthUseCase;

  CreatePasswordBloc({
    required this.exampleAbcAuthUseCase,
  }) : super(CreatePasswordState.initialize()) {
    on<CreatePasswordEvent>((events, emit) async {
      await events.map(
        process: (event) async => await _onProcess(event, emit),
      );
    });
  }

  Future<void> _onProcess(_Process event, Emitter<CreatePasswordState> emit) async {
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
