abstract class ExampleCryptoUseCase {
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
}
