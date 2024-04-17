import 'package:app_example/domain/usecases/example_crypto_usecase.dart';
import 'package:core_crypto/core_crypto.dart';

class ExampleCryptoUseCaseImpl extends ExampleCryptoUseCase {
  CryptoAESRepository cryptoAESRepository;

  ExampleCryptoUseCaseImpl({required this.cryptoAESRepository});

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
}
