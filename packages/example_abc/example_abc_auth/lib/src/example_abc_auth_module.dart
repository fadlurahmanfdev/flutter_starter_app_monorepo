import 'package:core_auth/core_auth.dart';
import 'package:core_config/core_config.dart';
import 'package:example_abc_auth/src/domain/usecase/examble_abc_auth_usecase.dart';
import 'package:example_abc_auth/src/domain/usecase/example_abc_auth_usecase_impl.dart';
import 'package:example_abc_auth/src/presentation/activation/activation_bloc.dart';
import 'package:example_abc_auth/src/presentation/activation/password_screen.dart';
import 'package:example_abc_auth/src/presentation/activation/pin_screen.dart';
import 'package:example_abc_auth/src/presentation/splash/splash_screen.dart';
import 'package:example_abc_storage/example_abc_storage.dart';
import 'package:get_it/get_it.dart';

class ExampleAbcAuthRouteModule extends RouteModule {
  @override
  List<RouteModel> get routes => [
        RouteModel(
          moduleType: ExampleAbcAuthRouteModule,
          screenType: SplashScreen,
          page: (_) => const SplashScreen(),
          isFirstRoute: true,
        ),
        RouteModel(
          moduleType: ExampleAbcAuthRouteModule,
          screenType: CreatePasswordScreen,
          page: (context) => const CreatePasswordScreen().wrap(context),
        ),
        RouteModel(
          moduleType: ExampleAbcAuthRouteModule,
          screenType: CreatePINScreen,
          page: (context) => const CreatePINScreen().wrap(context),
        ),
      ];
}

class ExampleAbcAuthModule extends ClassModule {
  @override
  Future<void> registerDependency(GetIt c) async {
    c
      ..registerFactory<ExampleAbcAuthUseCase>(() => ExampleAbcAuthUseCaseImpl(
            coreAuthRepository: c.get<CoreAuthRepository>(),
            identityStorageRepository: c.get<IdentityStorageRepository>(),
          ))
      ..registerFactory(() => ActivationBloc(exampleAbcAuthUseCase: c.get<ExampleAbcAuthUseCase>()));
  }
}
