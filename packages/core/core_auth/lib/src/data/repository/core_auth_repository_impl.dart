import 'package:core_auth/src/data/model/password_creation_token_model.dart';
import 'package:core_auth/src/data/repository/core_auth_repository.dart';
import 'package:flutter_feature_crypto/flutter_feature_crypto.dart';

class CoreAuthRepositoryImpl extends CoreAuthRepository {
  CryptoRSARepository rsaRepository;
  CryptoAESRepository aesRepository;
  CryptoED25519Repository ed25519repository;

  CoreAuthRepositoryImpl({
    required this.rsaRepository,
    required this.aesRepository,
    required this.ed25519repository,
  });

  @override
  PasswordCreationTokenModel createPasswordCreationToken({required String password}) {
    final key = rsaRepository.generateKey();
    final aesKey = aesRepository.getKey(32);
    final ivKey = aesRepository.getKey(32);
    final encryptedToken = rsaRepository.encrypt(
      encodedPublicKey: key.publicKey,
      plainText: aesKey,
      encoding: CoreCrytoRSAEncoding.pkcs1,
      digest: CoreCryptoRSADigest.sha1,
    );
    final ivToken = rsaRepository.encrypt(
      encodedPublicKey: key.privateKey,
      plainText: ivKey,
      encoding: CoreCrytoRSAEncoding.pkcs1,
      digest: CoreCryptoRSADigest.sha1,
    );

    if (encryptedToken == null || ivToken == null) throw Exception();

    final passwordSignature = rsaRepository.generateSignature(
      encodedPrivateKey: key.privateKey,
      plainText: password,
    );
    final encryptedPassword = aesRepository.encrypt(key: aesKey, ivKey: ivKey, plainText: password);
    if (encryptedPassword == null || passwordSignature == null) throw Exception();

    return PasswordCreationTokenModel(
      token: encryptedToken,
      ivToken: ivToken,
      privateKey: key.privateKey,
      publicKey: key.publicKey,
      passwordSignature: passwordSignature,
      encryptedPassword: encryptedPassword,
    );
  }

  @override
  bool verifyPassword({
    required String password,
    required String publicKeyToken,
    required String passwordSignature,
  }) {
    return rsaRepository.verifySignature(
      encodedPublicKey: publicKeyToken,
      encodedSignature: passwordSignature,
      plainText: password,
    );
  }
}
