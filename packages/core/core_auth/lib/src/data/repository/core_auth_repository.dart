import 'package:core_auth/src/data/model/password_creation_token_model.dart';

abstract class CoreAuthRepository {
  PasswordCreationTokenModel createPasswordCreationToken({
    required String password,
  });

  bool verifyPassword({
    required String password,
    required String publicKey,
    required String passwordSignature,
  });

  String createPIN({required String privateKey, required String pin});

  bool verifyPIN({
    required String publicKey,
    required String pinSignature,
    required String pin,
  });
}
