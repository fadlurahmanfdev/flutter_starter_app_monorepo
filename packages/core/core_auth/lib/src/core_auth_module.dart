import 'package:core_auth/src/data/repository/core_auth_repository.dart';
import 'package:core_auth/src/data/repository/core_auth_repository_impl.dart';
import 'package:core_config/core_config.dart';
import 'package:flutter_feature_crypto/flutter_feature_crypto.dart';
import 'package:get_it/get_it.dart';

class CoreAuthModule extends ClassModule {
  @override
  Future<void> registerDependency(GetIt c) async {
    c
      ..registerFactory<CryptoRSARepository>(() => CryptoRSARepositoryImpl())
      ..registerFactory<CryptoAESRepository>(() => CryptoAESRepositoryImpl())
      ..registerFactory<CryptoED25519Repository>(() => CryptoED25519RepositoryIml())
      ..registerFactory<CoreAuthRepository>(
        () => CoreAuthRepositoryImpl(
          rsaRepository: c.get<CryptoRSARepository>(),
          aesRepository: c.get<CryptoAESRepository>(),
          ed25519repository: c.get<CryptoED25519Repository>(),
        ),
      );
  }
}
