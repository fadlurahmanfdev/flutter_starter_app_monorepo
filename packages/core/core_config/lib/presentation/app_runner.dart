import 'package:core_config/data/dto/model/app_runner_setting_model.dart';
import 'package:core_config/module/register_module.dart';
import 'package:core_config/shared/core_config_shared.dart';
import 'package:flutter/material.dart';

Future<void> appRunner({required AppRunnerSettingModel setting}) async {
  WidgetsFlutterBinding.ensureInitialized();
  CoreConfigShared.I.setGetIt(setting.c);
  registerRouteModule(setting.routeModules);
  await registerClassModule(setting.c, classModules: setting.classModules);
  runApp(setting.app);
}
