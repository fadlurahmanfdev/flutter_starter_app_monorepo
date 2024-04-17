import 'package:core_config/data/dto/model/route_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CoreConfigUtility {
  static List<GetPage> generateRoute(
    BuildContext context, {
    required List<RouteModel> routes,
  }) {
    return routes
        .map((e) => mapRouteModelToGetPage(context, routeModel: e))
        .toList();
  }

  static String getInitialRoute(List<RouteModel> routes) =>
      routes.firstWhere((element) => element.isFirstRoute).fullPath;

  static GetPage mapRouteModelToGetPage(
    BuildContext context, {
    required RouteModel routeModel,
  }) {
    return GetPage(
      name: routeModel.fullPath,
      page: () => routeModel.page(context),
      transition: routeModel.transition,
    );
  }
}
