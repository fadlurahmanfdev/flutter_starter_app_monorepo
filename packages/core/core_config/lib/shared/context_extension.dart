import 'package:core_config/shared/core_config_shared.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

extension BuildContextX on BuildContext {
  GetIt get getIt {
    return CoreConfigShared.I.getIt;
  }

  T get<T extends Object>(
      {String? instanceName, dynamic param1, dynamic param2, Type? type}) {
    return getIt.get<T>(
        instanceName: instanceName, param1: param1, param2: param2, type: type);
  }

  // T read2<T extends StateStreamableSource<Object?>>({
  //   bool listen = false,
  // }) {
  //   return BlocProvider.of<T>(this, listen: listen);
  // }
}
