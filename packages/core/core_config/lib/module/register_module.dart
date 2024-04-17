import 'package:core_config/module/class_module.dart';
import 'package:core_config/module/route_module.dart';
import 'package:get_it/get_it.dart';

void registerRouteModule(List<RouteModule> routeModules) {
  for (final route in routeModules) {
    route.addPages();
  }
}

Future<void> registerClassModule(
  GetIt c, {
  required List<ClassModule> classModules,
}) async {
  await Future.forEach(
    classModules,
    (element) async => await element.registerDependency(c),
  );
}
