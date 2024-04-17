import 'package:core_config/data/dto/model/route_model.dart';
import 'package:core_config/shared/core_config_shared.dart';

abstract class RouteModule {
  List<RouteModel> get routes;

  void addPages() {
    for (var route in routes) {
      CoreConfigShared.I.addRoute(route);
    }
  }
}
