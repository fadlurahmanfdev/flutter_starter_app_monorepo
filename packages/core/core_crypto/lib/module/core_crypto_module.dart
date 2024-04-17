import 'package:core_config/core_config.dart';
import 'package:core_crypto/data/repositories/crypto_aes_repository.dart';
import 'package:core_crypto/data/repositories/crypto_aes_repository_impl.dart';
import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';

class CoreCryptoModule extends ClassModule {
  @override
  Future<void> registerDependency(GetIt c) async {
    c.registerFactory<CryptoAESRepository>(() => CryptoAESRepositoryImpl(
      logger: c.get<Logger>(),
    ));
  }
}