import 'package:core_config/data/dto/model/route_model.dart';
import 'package:core_config/module/class_module.dart';
import 'package:core_config/module/route_module.dart';
import 'package:core_config/presentation/unknown_route_screen.dart';
import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';

class CoreConfigRouteModule extends RouteModule {
  @override
  List<RouteModel> get routes => [
        RouteModel(
          moduleType: CoreConfigRouteModule,
          screenType: UnknownRouteScreen,
          page: (context) => const UnknownRouteScreen(),
        ),
      ];
}

class CoreConfigModule extends ClassModule {
  @override
  Future<void> registerDependency(GetIt c) async {
    c.registerFactory<Logger>(() => Logger());
  }
}
