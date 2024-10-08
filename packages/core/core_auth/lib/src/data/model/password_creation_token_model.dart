class PasswordCreationTokenModel {
  final String token;
  final String ivToken;
  final String privateKey;
  final String publicKey;
  final String encryptedPassword;
  final String passwordSignature;

  PasswordCreationTokenModel({
    required this.token,
    required this.ivToken,
    required this.privateKey,
    required this.publicKey,
    required this.encryptedPassword,
    required this.passwordSignature,
  });
}
