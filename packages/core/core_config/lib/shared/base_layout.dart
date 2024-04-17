import 'package:core_config/shared/core_config_shared.dart';
import 'package:core_config/shared/navigator_utility.dart';

mixin BaseLayout {
  final navigator = NavigatorUtility.I;
  final getIt = CoreConfigShared.I.getIt;
}
