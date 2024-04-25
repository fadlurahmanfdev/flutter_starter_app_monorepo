import 'package:app_example/domain/usecases/example_crypto_usecase.dart';
import 'package:core_crypto/core_crypto.dart';
import 'package:core_crypto/data/dto/model/crypto_key.dart';
import 'package:core_crypto/data/repositories/crypto_rsa_repository.dart';

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
  CryptoKey generateRSAKey() {
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
