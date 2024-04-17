import 'package:app_example/domain/usecases/example_crypto_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/logger.dart';

part 'example_crypto_bloc.freezed.dart';

part 'example_crypto_event.dart';

part 'example_crypto_state.dart';

class ExampleCryptoBloc extends Bloc<ExampleCryptoEvent, ExampleCryptoState> {
  ExampleCryptoUseCase exampleCryptoUseCase;
  Logger logger;

  ExampleCryptoBloc({
    required this.exampleCryptoUseCase,
    required this.logger,
  }) : super(ExampleCryptoState.initialize()) {
    on<ExampleCryptoEvent>((events, emit) async {
      await events.map(
        generateAESKey: (event) async => await _onGenerateAESKey(event, emit),
        encryptAES: (event) async => await _onEncryptAES(event, emit),
        decryptAES: (event) async => await _onDecryptAES(event, emit),
      );
    });
  }

  Future<void> _onGenerateAESKey(
      _GenerateAESKey event, Emitter<ExampleCryptoState> emit) async {
    final ivKey = exampleCryptoUseCase.generateIVKey();
    logger.d("IV KEY: $ivKey");
    final aesKey = exampleCryptoUseCase.generateAESKey(32);
    logger.d("AES KEY: $aesKey");
    emit(state.copyWith(aesKey: aesKey, aesIVKey: ivKey));
  }

  Future<void> _onEncryptAES(
      _EncryptAES event, Emitter<ExampleCryptoState> emit) async {
    final encryptedText = exampleCryptoUseCase.encryptAES(
      key: state.aesKey!,
      ivKey: state.aesIVKey!,
      plainText: "TES_VALUE_AES",
    );
    logger.d("ENCRYPTED TEXT: $encryptedText");
    emit(state.copyWith(encryptedAES: encryptedText));
  }

  Future<void> _onDecryptAES(
      _DecryptAES event, Emitter<ExampleCryptoState> emit) async {
    final decryptedText = exampleCryptoUseCase.decryptAES(
      key: state.aesKey!,
      ivKey: state.aesIVKey!,
      encryptedText: state.encryptedAES!,
    );
    logger.d("DECRYPTED TEXT: $decryptedText");
  }
}
