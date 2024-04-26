import 'dart:developer';

import 'package:app_example/domain/usecases/example_crypto_usecase.dart';
import 'package:flutter_core_crypto/flutter_core_crypto.dart';

class ExampleCryptoUseCaseImpl extends ExampleCryptoUseCase {
  CryptoAESRepository cryptoAESRepository;
  CryptoRSARepository cryptoRSARepository;
  CryptoED25519Repository cryptoED25519Repository;

  ExampleCryptoUseCaseImpl({
    required this.cryptoAESRepository,
    required this.cryptoRSARepository,
    required this.cryptoED25519Repository,
  });

  @override
  String generateAESKey(int size) {
    return cryptoAESRepository.getKey(size);
  }

  @override
  String generateIVKey() {
    return cryptoAESRepository.getIVKey();
  }

  @override
  String? encryptAES({
    required String key,
    required String ivKey,
    required String plainText,
  }) {
    return cryptoAESRepository.encrypt(
      key: key,
      ivKey: ivKey,
      plainText: plainText,
    );
  }

  @override
  String? decryptAES({
    required String key,
    required String ivKey,
    required String encryptedText,
  }) {
    return cryptoAESRepository.decrypt(
      key: key,
      ivKey: ivKey,
      encryptedText: encryptedText,
    );
  }

  @override
  Future<CryptoKey> generateRSAKey() {
    return cryptoRSARepository.generateKey();
  }

  @override
  String? encryptRSA({
    required String encodedPublicKey,
    required String plainText,
  }) {
    return cryptoRSARepository.encrypt(
        encodedPublicKey: encodedPublicKey, plainText: plainText);
  }

  @override
  String? decryptRSA({
    required String encodedPrivateKey,
    required String encryptedText,
  }) {
    return cryptoRSARepository.decrypt(
        encodedPrivateKey: encodedPrivateKey, encryptedText: encryptedText);
  }

  @override
  String? encryptRSAWithAES({
    required String encodedRSAPrivateKey,
    required String encryptedAESKey,
    required String encryptedIVKey,
    required String plainText,
  }) {
    final decryptedAESKey = cryptoRSARepository.decrypt(
      encodedPrivateKey: encodedRSAPrivateKey,
      encryptedText: encryptedAESKey,
    );
    if (decryptedAESKey == null) {
      log("failed encryptRSAWithAES, decryptedAESKey is missing");
      return null;
    }
    final decryptedIVKey = cryptoRSARepository.decrypt(
      encodedPrivateKey: encodedRSAPrivateKey,
      encryptedText: encryptedIVKey,
    );
    if (decryptedIVKey == null) {
      log("failed encryptRSAWithAES, decryptedIVKey is missing");
      return null;
    }
    return cryptoAESRepository.encrypt(
      key: decryptedAESKey,
      ivKey: decryptedIVKey,
      plainText: plainText,
    );
  }

  @override
  String? decryptRSAWithAES({
    required String encodedRSAPrivateKey,
    required String encryptedAESKey,
    required String encryptedIVKey,
    required String encryptedText,
  }) {
    final decryptedAESKey = cryptoRSARepository.decrypt(
      encodedPrivateKey: encodedRSAPrivateKey,
      encryptedText: encryptedAESKey,
    );
    if (decryptedAESKey == null) {
      log("failed decryptRSAWithAES, decryptedAESKey is missing");
      return null;
    }
    final decryptedIVKey = cryptoRSARepository.decrypt(
      encodedPrivateKey: encodedRSAPrivateKey,
      encryptedText: encryptedIVKey,
    );
    if (decryptedIVKey == null) {
      log("failed decryptRSAWithAES, decryptedIVKey is missing");
      return null;
    }
    return cryptoAESRepository.decrypt(
      key: decryptedAESKey,
      ivKey: decryptedIVKey,
      encryptedText: encryptedText,
    );
  }

  @override
  String? generateRSASignature({
    required String encodedPrivateKey,
    required String plainText,
  }) {
    return cryptoRSARepository.generateSignature(
        encodedPrivateKey: encodedPrivateKey, plainText: plainText);
  }

  @override
  bool verifyRSASignature({
    required String encodedPublicKey,
    required String encodedSignature,
    required String plainText,
  }) {
    return cryptoRSARepository.verifySignature(
      encodedPublicKey: encodedPublicKey,
      encodedSignature: encodedSignature,
      plainText: plainText,
    );
  }

  @override
  CryptoKey generateED25519Key() {
    return cryptoED25519Repository.generateKey();
  }

  @override
  String? generateED25519Signature({
    required String encodedPrivateKey,
    required String plainText,
  }) {
    return cryptoED25519Repository.generateSignature(
      encodedPrivateKey: encodedPrivateKey,
      plainText: plainText,
    );
  }

  @override
  bool verifyED25519Signature({
    required String encodedPrivateKey,
    required String encodedSignature,
    required String plainText,
  }) {
    return cryptoED25519Repository.verifySignature(
      encodedPrivateKey: encodedPrivateKey,
      encodedSignature: encodedSignature,
      plainText: plainText,
    );
  }
}
