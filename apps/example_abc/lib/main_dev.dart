import 'package:core_config/core_config.dart';
import 'package:core_auth/core_auth.dart';
import 'package:example_abc_config/example_abc_config.dart';
import 'package:example_abc_storage/example_abc_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:example_abc_auth/example_abc_auth.dart';

final _devRouteModules = <RouteModule>[
  CoreConfigRouteModule(),
  ExampleAbcAuthRouteModule(),
];

final _devModules = <ClassModule>[
  CoreConfigModule(),
  CoreAuthModule(),
  ExampleAbcStorageModule(),
  ExampleAbcAuthModule(),
];

final devSetting = AppRunnerSettingModel(
  c: GetIt.I,
  routeModules: _devRouteModules,
  classModules: _devModules,
  app: const App(),
);

Future<void> main() async {
  appRunner(setting: devSetting);
}
