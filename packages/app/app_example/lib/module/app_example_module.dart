import 'package:app_example/domain/usecases/example_crypto_usecase.dart';
import 'package:app_example/domain/usecases/example_crypto_usecase_impl.dart';
import 'package:app_example/presentation/crypto/example_crypto_bloc.dart';
import 'package:app_example/presentation/crypto/example_crypto_screen.dart';
import 'package:app_example/presentation/example_features_screen.dart';
import 'package:core_config/core_config.dart';
import 'package:core_crypto/core_crypto.dart';
import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';

class AppExampleRouteModule extends RouteModule {
  @override
  List<RouteModel> get routes => [
        RouteModel(
          moduleType: AppExampleRouteModule,
          screenType: ExampleFeaturesScreen,
          page: (context) => const ExampleFeaturesScreen(),
          isFirstRoute: true,
        ),
        RouteModel(
          moduleType: AppExampleRouteModule,
          screenType: ExampleCryptoScreen,
          page: (context) => ExampleCryptoScreen().wrap(context),
        ),
      ];
}

class AppExampleModule extends ClassModule {
  @override
  Future<void> registerDependency(GetIt c) async {
    c
      ..registerFactory<ExampleCryptoUseCase>(() => ExampleCryptoUseCaseImpl(
            cryptoAESRepository: c.get<CryptoAESRepository>(),
            cryptoRSARepository: c.get<CryptoRSARepository>(),
            cryptoED25519Repository: c.get<CryptoED25519Repository>(),
          ))
      ..registerFactory<ExampleCryptoBloc>(() => ExampleCryptoBloc(
            exampleCryptoUseCase: c.get<ExampleCryptoUseCase>(),
            logger: c.get<Logger>(),
          ));
  }
}
