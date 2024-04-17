import 'package:core_config/core_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp();
  }
}

class MaterialApp extends StatefulWidget {
  const MaterialApp({super.key});

  @override
  State<MaterialApp> createState() => _MaterialAppState();
}

class _MaterialAppState extends State<MaterialApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'App',
      navigatorKey: Get.key,
      // navigatorKey: AppFactory.I.alice?.getNavigatorKey() ?? AppFactory.I.navigatorKey,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // locale: currentLocale,
      getPages: CoreConfigUtility.generateRoute(context,
          routes: CoreConfigShared.I.routes),
      // translationsKeys: AppFactory.I.translationMap,
      initialRoute:
          CoreConfigUtility.getInitialRoute(CoreConfigShared.I.routes),
      unknownRoute: CoreConfigUtility.mapRouteModelToGetPage(
        context,
        routeModel: CoreConfigShared.I.routes.firstWhere(
          (routeModel) =>
              routeModel.screenType.toString() == '$UnknownRouteScreen' &&
              routeModel.moduleType.toString() == '$CoreConfigRouteModule',
        ),
      ),
    );
  }
}
