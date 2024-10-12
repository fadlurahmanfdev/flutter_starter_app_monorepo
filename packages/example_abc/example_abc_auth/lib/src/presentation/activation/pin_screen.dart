import 'package:core_config/core_config.dart';
import 'package:core_config/shared/context_extension.dart';
import 'package:core_config/shared/navigator_utility.dart';
import 'package:example_abc_auth/example_abc_auth.dart';
import 'package:example_abc_auth/src/presentation/activation/activation_bloc.dart';
import 'package:example_abc_auth/src/presentation/activation/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CreatePINScreen extends StatefulWidget with WrapperState {
  const CreatePINScreen({super.key});

  @override
  State<CreatePINScreen> createState() => _CreatePINScreenState();

  @override
  Widget wrap(BuildContext context) {
    return BlocProvider(
      create: (context) => context.get<ActivationBloc>(),
      child: this,
    );
  }
}

class _CreatePINScreenState extends State<CreatePINScreen> {
  final pinController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<ActivationBloc, ActivationState>(listener: (context, state) {
          final createPINState = state.createPINState;
          if (createPINState is CreatePINSuccess) {
            Get.showSnackbar(const GetSnackBar(
              title: 'Successfully Create PIN',
              message: 'Successfully Create PIN',
              backgroundColor: Colors.green,
            ));
            NavigatorUtility.I.push(ExampleAbcAuthRouteModule, LoginScreen);
          } else if (createPINState is CreatePINFailed) {
            Get.showSnackbar(const GetSnackBar(
              title: 'Failed Create PIN',
              message: 'Failed Create PIN',
              backgroundColor: Colors.red,
            ));
          }
        })
      ],
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Create PIN'),
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
                      controller: pinController,
                      maxLength: 6,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        hintText: 'PIN',
                        labelText: 'PIN',
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
                    context.read<ActivationBloc>().add(ActivationEvent.createPIN(pin: pinController.text));
                  },
                  child: const Text('Buat PIN'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
