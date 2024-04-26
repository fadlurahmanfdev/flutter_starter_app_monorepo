import 'package:core_config/core_config.dart';
import 'package:flutter_core_crypto/flutter_core_crypto.dart';
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
