import 'dart:developer';

import 'package:app_example/domain/usecases/example_crypto_usecase.dart';
import 'package:core_crypto/data/dto/model/crypto_key.dart';
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
        generateRSAKey: (event) async => await _onGenerateRSAKey(event, emit),
        encryptRSA: (event) async => await _onEncryptRSA(event, emit),
        decryptRSA: (event) async => await _onDecryptRSA(event, emit),
        generateRSASignature: (event) async =>
            await _onGenerateRSASignature(event, emit),
        verifyRSASignature: (event) async => _onVerifyRSASignature(event, emit),
        generateED25519Key: (event) async => _onGenerateED25519Key(event, emit),
        generateED25519Signature: (event) async =>
            _onGenerateED25519Signature(event, emit),
        verifyED25519Signature: (event) async =>
            _onVerifyED25519Signature(event, emit),
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
    logger.d("ENCRYPTED AES: $encryptedText");
    emit(state.copyWith(encryptedAES: encryptedText));
  }

  Future<void> _onDecryptAES(
      _DecryptAES event, Emitter<ExampleCryptoState> emit) async {
    final decryptedText = exampleCryptoUseCase.decryptAES(
      key: state.aesKey!,
      ivKey: state.aesIVKey!,
      encryptedText: state.encryptedAES!,
    );
    logger.d("DECRYPTED AES: $decryptedText");
  }

  Future<void> _onGenerateRSAKey(
      _GenerateRSAKey event, Emitter<ExampleCryptoState> emit) async {
    final key = exampleCryptoUseCase.generateRSAKey();
    logger.d("RSA PUBLIC KEY: ${key.publicKey}");
    logger.d("RSA PRIVATE KEY: ${key.privateKey}");
    emit(state.copyWith(rsaKey: key));
  }

  Future<void> _onEncryptRSA(
      _EncryptRSA event, Emitter<ExampleCryptoState> emit) async {
    final encrypted = exampleCryptoUseCase.encryptRSA(
        encodedPublicKey: state.rsaKey!.publicKey, plainText: "TES_VALUE_RSA");
    logger.d("ENCRYPTED RSA: $encrypted");
    emit(state.copyWith(encryptedRSA: encrypted));
  }

  Future<void> _onDecryptRSA(
      _DecryptRSA event, Emitter<ExampleCryptoState> emit) async {
    final decrypted = exampleCryptoUseCase.decryptRSA(
        encodedPrivateKey: state.rsaKey!.privateKey,
        encryptedText: state.encryptedRSA!);
    logger.d("DECRYPTED RSA: $decrypted");
  }

  Future<void> _onGenerateRSASignature(
      _GenerateRSASignature event, Emitter<ExampleCryptoState> emit) async {
    final signature = exampleCryptoUseCase.generateRSASignature(
        encodedPrivateKey: state.rsaKey!.privateKey,
        plainText: "TES_RSA_SIGNATURE");
    logger.d("SIGNATURE RSA: $signature");
    emit(state.copyWith(signatureRSA: signature));
  }

  Future<void> _onVerifyRSASignature(
      _VerifyRSASignature event, Emitter<ExampleCryptoState> emit) async {
    final isVerify = exampleCryptoUseCase.verifyRSASignature(
        encodedPublicKey: state.rsaKey!.publicKey,
        encodedSignature: state.signatureRSA!,
        plainText: "TES_RSA_SIGNATURE");
    logger.d("IS VERIFY SIGNATURE RSA: $isVerify");
  }

  Future<void> _onGenerateED25519Key(
      _GenerateED25519Key event, Emitter<ExampleCryptoState> emit) async {
    final key = exampleCryptoUseCase.generateED25519Key();
    log("ED25519 KEY:"
        "\n\n"
        "PRIVATE KEY: ${key.privateKey}"
        "\n\n"
        "-----------------------------"
        "\n\n"
        "PUBLIC KEY: ${key.publicKey}");
    emit(state.copyWith(ed25519Key: key));
  }

  Future<void> _onGenerateED25519Signature(
      _GenerateED25519Signature event, Emitter<ExampleCryptoState> emit) async {
    final signature = exampleCryptoUseCase.generateED25519Signature(
        encodedPrivateKey: state.ed25519Key!.privateKey,
        plainText: "TES_SIGNATURE_ED25519");
    log("SIGNATURE ED25519: $signature");
    emit(state.copyWith(signatureED25519: signature));
  }

  Future<void> _onVerifyED25519Signature(
      _VerifyED25519Signature event, Emitter<ExampleCryptoState> emit) async {
    final isVerify = exampleCryptoUseCase.verifyED25519Signature(
      encodedPrivateKey: state.ed25519Key!.privateKey,
      encodedSignature: state.signatureED25519!,
      plainText: "TES_SIGNATURE_ED25518",
    );
    log("IS SIGNATURE ED25519 VERIFY: $isVerify");
  }
}
