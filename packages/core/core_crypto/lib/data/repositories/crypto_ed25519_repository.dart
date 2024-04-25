import 'package:core_crypto/data/dto/model/crypto_key.dart';

abstract class CryptoED25519Repository {
  CryptoKey generateKey();

  String? generateSignature({
    required String encodedPrivateKey,
    required String plainText,
  });

  bool verifySignature({
    required String encodedPrivateKey,
    required String encodedSignature,
    required String plainText,
  });
}
