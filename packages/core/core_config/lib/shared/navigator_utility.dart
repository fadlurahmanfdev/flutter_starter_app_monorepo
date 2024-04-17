import 'package:core_config/module/core_config_module.dart';
import 'package:core_config/presentation/unknown_route_screen.dart';
import 'package:core_config/shared/core_config_shared.dart';
import 'package:get/get.dart';

class NavigatorUtility {
  NavigatorUtility._();

  static NavigatorUtility? _instance;

  factory NavigatorUtility() => _instance ??= NavigatorUtility._();

  factory NavigatorUtility.newInstance() => _instance ??= NavigatorUtility._();

  static NavigatorUtility get I => NavigatorUtility();

  static NavigatorUtility get instance => NavigatorUtility();

  String _getFullPathNamed(
    String module,
    String screen, {
    Transition? transition,
  }) {
    final route = CoreConfigShared.I.routes
            .firstWhereOrNull((element) =>
                element.fullPath
                    .contains('/${module}_${screen}_${transition.hashCode}') ||
                element.fullPath.contains('/${module}_$screen'))
            ?.fullPath ??
        '/${CoreConfigRouteModule}_$UnknownRouteScreen';
    return route;
  }

  Future<T?>? push<T>(Type module, Type screen, {Transition? transition}) {
    return pushNamed('$module', '$screen', transition: transition);
  }

  Future<T?>? pushNamed<T>(
    String module,
    String screen, {
    dynamic arguments,
    Transition? transition,
  }) {
    final route = _getFullPathNamed(module, screen, transition: transition);
    return Get.toNamed(route, arguments: arguments);
  }

  Future<T?>? pushReplaceAll<T>(
    Type module,
    Type screen, {
    Transition? transition,
  }) {
    return pushReplaceAllNamed('$module', '$screen', transition: transition);
  }

  Future<T?>? pushReplaceAllNamed<T>(String module, String screen,
      {Transition? transition}) {
    final route = _getFullPathNamed(module, screen, transition: transition);
    return Get.offAllNamed(route);
  }

  void back<T>({T? result}) {
    return Get.back(result: result);
  }
}
