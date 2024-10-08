import 'package:core_config/shared/navigator_utility.dart';
import 'package:example_abc_auth/example_abc_auth.dart';
import 'package:example_abc_auth/src/presentation/activation/password_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Future.delayed(const Duration(seconds: 2), () {
        NavigatorUtility.I.pushReplaceAll(ExampleAbcAuthRouteModule, CreatePasswordScreen);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Splash Screen'),
      ),
    );
  }
}
