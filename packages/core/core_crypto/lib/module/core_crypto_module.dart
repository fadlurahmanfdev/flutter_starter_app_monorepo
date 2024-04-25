import 'package:core_config/core_config.dart';
import 'package:core_crypto/data/repositories/crypto_aes_repository.dart';
import 'package:core_crypto/data/repositories/crypto_aes_repository_impl.dart';
import 'package:core_crypto/data/repositories/crypto_ed25519_repository.dart';
import 'package:core_crypto/data/repositories/crypto_ed25519_repository_impl.dart';
import 'package:core_crypto/data/repositories/crypto_rsa_repository.dart';
import 'package:core_crypto/data/repositories/crypto_rsa_repository_impl.dart';
import 'package:get_it/get_it.dart';

class CoreCryptoModule extends ClassModule {
  @override
  Future<void> registerDependency(GetIt c) async {
    c
      ..registerFactory<CryptoAESRepository>(() => CryptoAESRepositoryImpl())
      ..registerFactory<CryptoRSARepository>(() => CryptoRSARepositoryImpl())
      ..registerFactory<CryptoED25519Repository>(
          () => CryptoED25519RepositoryIml());
  }
}
