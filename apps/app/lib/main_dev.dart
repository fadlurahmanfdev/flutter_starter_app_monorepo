import 'package:app_config/app_config.dart';
import 'package:app_example/app_example.dart';
import 'package:app_example/module/app_example_module.dart';
import 'package:core_config/core_config.dart';
import 'package:core_crypto/core_crypto.dart';
import 'package:get_it/get_it.dart';

final _devRouteModules = <RouteModule>[
  CoreConfigRouteModule(),
  AppExampleRouteModule(),
];

final _devModules = <ClassModule>[
  CoreConfigModule(),
  CoreCryptoModule(),
  AppExampleModule(),
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
