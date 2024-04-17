import 'package:core_config/module/class_module.dart';
import 'package:core_config/module/route_module.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class AppRunnerSettingModel {
  final GetIt c;
  final List<RouteModule> routeModules;
  final List<ClassModule> classModules;
  final Widget app;

  AppRunnerSettingModel({
    required this.c,
    required this.routeModules,
    required this.classModules,
    required this.app,
  });
}