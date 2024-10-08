import 'package:core_auth/src/data/model/password_creation_token_model.dart';

abstract class CoreAuthRepository {
  PasswordCreationTokenModel createPasswordCreationToken({
    required String password,
  });

  bool verifyPassword({
    required String password,
    required String publicKeyToken,
    required String passwordSignature,
  });
}
