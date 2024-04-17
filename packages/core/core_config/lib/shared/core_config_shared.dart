import 'package:core_config/data/dto/model/route_model.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';

class CoreConfigShared {
  CoreConfigShared._();

  static CoreConfigShared? _instance;

  factory CoreConfigShared() => _instance ??= CoreConfigShared._();

  static CoreConfigShared get I => CoreConfigShared();

  late GetIt getIt;

  void setGetIt(GetIt c){
    getIt = c;
  }

  List<RouteModel> routes = [];

  void addRoute(RouteModel p) {
    final transitions = <Transition>[
      Transition.fade,
      Transition.fadeIn,
      Transition.rightToLeft,
      Transition.leftToRight,
      Transition.upToDown,
      Transition.downToUp,
      Transition.rightToLeftWithFade,
      Transition.leftToRightWithFade,
      Transition.zoom,
      Transition.topLevel,
      Transition.noTransition,
      Transition.cupertino,
      Transition.cupertinoDialog,
      Transition.size,
      Transition.circularReveal,
      Transition.native,
    ];
    routes.add(p);
    for (var t in transitions) {
      routes.add(p.copyWith(transition: t));
    }
  }
}
