import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RouteModel {
  Type moduleType;
  Type screenType;
  Transition? transition;
  Widget Function(BuildContext context) page;
  bool isFirstRoute;

  String get fullPath {
    if (isFirstRoute && transition == null) {
      return '/';
    } else {
      if (transition != null) {
        return '/${moduleType}_${screenType}_$transition';
      } else {
        return '/${moduleType}_$screenType';
      }
    }
  }

  RouteModel({
    required this.moduleType,
    required this.screenType,
    required this.page,
    this.transition,
    this.isFirstRoute = false,
  });

  RouteModel copyWith({Transition? transition}) {
    return RouteModel(
      moduleType: moduleType,
      screenType: screenType,
      page: page,
      transition: transition ?? this.transition,
    );
  }
}
