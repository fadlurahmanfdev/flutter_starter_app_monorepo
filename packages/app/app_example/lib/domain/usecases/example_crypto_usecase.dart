import 'package:core_crypto/data/dto/model/crypto_key.dart';

abstract class ExampleCryptoUseCase {
  /// AES Key Size must be 16/24/32
  String generateAESKey(int size);

  String generateIVKey();

  String? encryptAES({
    required String key,
    required String ivKey,
    required String plainText,
  });

  String? decryptAES({
    required String key,
    required String ivKey,
    required String encryptedText,
  });

  CryptoKey generateRSAKey();

  String? encryptRSA({
    required String encodedPublicKey,
    required String plainText,
  });

  String? decryptRSA({
    required String encodedPrivateKey,
    required String encryptedText,
  });

  String? encryptRSAWithAES({
    required String encodedRSAPrivateKey,
    required String encryptedAESKey,
    required String encryptedIVKey,
    required String plainText,
  });

  String? decryptRSAWithAES({
    required String encodedRSAPrivateKey,
    required String encryptedAESKey,
    required String encryptedIVKey,
    required String encryptedText,
  });

  String? generateRSASignature({
    required String encodedPrivateKey,
    required String plainText,
  });

  bool verifyRSASignature({
    required String encodedPublicKey,
    required String encodedSignature,
    required String plainText,
  });

  CryptoKey generateED25519Key();

  String? generateED25519Signature({
    required String encodedPrivateKey,
    required String plainText,
  });

  bool verifyED25519Signature({
    required String encodedPrivateKey,
    required String encodedSignature,
    required String plainText,
  });
}
