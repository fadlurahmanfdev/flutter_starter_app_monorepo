import 'package:core_config/core_config.dart';
import 'package:core_config/shared/context_extension.dart';
import 'package:example_abc_auth/src/presentation/activation/activation_bloc.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatefulWidget with WrapperState {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();

  @override
  Widget wrap(BuildContext context) {
    return BlocProvider(
      create: (context) => context.get<ActivationBloc>(),
      child: this,
    );
  }
}

class _LoginScreenState extends State<LoginScreen> {
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<ActivationBloc, ActivationState>(listener: (context, state) {
          final createPasswordState = state.createPasswordState;
          if (createPasswordState is CreatePasswordSuccess) {
            Get.showSnackbar(const GetSnackBar(
              title: 'Successfully Create Password',
              message: 'Successfully Create Password',
              backgroundColor: Colors.green,
            ));
          } else if (createPasswordState is CreatePasswordFailed) {
            Get.showSnackbar(const GetSnackBar(
              title: 'Failed Create Password',
              message: 'Failed Create Password',
              backgroundColor: Colors.red,
            ));
          }
        })
      ],
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Login Screen'),
          elevation: 2.0,
        ),
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            children: [
              Expanded(
                child: Column(
                  children: [
                    TextField(
                      controller: passwordController,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        hintText: 'Password',
                        labelText: 'Password',
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    FocusScope.of(context).unfocus();
                    context
                        .read<ActivationBloc>()
                        .add(ActivationEvent.createPIN(pin: passwordController.text));
                  },
                  child: const Text('Login'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
