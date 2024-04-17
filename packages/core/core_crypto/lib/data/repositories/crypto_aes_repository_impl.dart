import 'dart:convert';
import 'dart:math';

import 'package:core_crypto/data/dto/exception/core_crypto_exception.dart';
import 'package:core_crypto/data/repositories/crypto_aes_repository.dart';
import 'package:encrypt/encrypt.dart';
import 'package:logger/logger.dart';

class CryptoAESRepositoryImpl extends CryptoAESRepository {
  Logger logger;

  CryptoAESRepositoryImpl({required this.logger});

  String generateRandomKey(int length) {
    const mChars =
        'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
    return String.fromCharCodes(
      Iterable.generate(
        length,
        (_) => mChars.codeUnitAt(Random.secure().nextInt(mChars.length)),
      ),
    );
  }

  @override
  String getKey(int size) {
    if (size == 16 || size == 24 || size == 32) {
      return generateRandomKey(size);
    }
    throw CoreCryptoException(
      code: 'SIZE_NOT_VALID',
      message: 'Size must be 16/24/32',
    );
  }

  @override
  String getIVKey() {
    return generateRandomKey(16);
  }

  @override
  String? encrypt({
    required String key,
    required String ivKey,
    required String plainText,
  }) {
    try {
      final encrypter = Encrypter(AES(Key.fromUtf8(key), mode: AESMode.cbc));
      final iv = IV.fromUtf8(ivKey);
      return encrypter.encrypt(plainText, iv: iv).base64;
    } on Exception catch (e) {
      logger.e("failed encrypt: $e");
      return null;
    }
  }

  @override
  String? decrypt({
    required String key,
    required String ivKey,
    required String encryptedText,
  }) {
    try {
      logger.d("encrypted text: $encryptedText");
      final encrypter = Encrypter(AES(Key.fromUtf8(key), mode: AESMode.cbc));
      final iv = IV.fromUtf8(ivKey);
      return encrypter.decrypt(Encrypted.fromBase64(encryptedText), iv: iv);
    } on Error catch (e) {
      logger.e("failed decrypt err: $e");
      return null;
    } on Exception catch (e) {
      logger.e("failed decrypt exc: $e");
      return null;
    }
  }
}
