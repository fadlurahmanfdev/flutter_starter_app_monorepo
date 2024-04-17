import 'package:app_example/data/model/feature_model.dart';
import 'package:app_example/presentation/crypto/example_crypto_bloc.dart';
import 'package:app_example/presentation/widget/feature_widget.dart';
import 'package:core_config/core_config.dart';
import 'package:core_config/shared/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ExampleCryptoScreen extends StatefulWidget with BaseLayout, WrapperState {
  ExampleCryptoScreen({super.key});

  @override
  State<ExampleCryptoScreen> createState() => _ExampleCryptoScreenState();

  @override
  Widget wrap(BuildContext context) {
    return BlocProvider<ExampleCryptoBloc>(
      create: (context) => context.get<ExampleCryptoBloc>(),
      child: this,
    );
  }
}

class _ExampleCryptoScreenState extends State<ExampleCryptoScreen>
    with BaseLayout {
  List<FeatureModel> features = [
    FeatureModel(
      title: 'Generate AES Key',
      desc: 'Generate AES Key',
      key: 'GENERATE_AES_KEY',
    ),
    FeatureModel(
      title: 'Encrypt AES',
      desc: 'Encrypt AES',
      key: 'ENCRYPT_AES',
    ),
    FeatureModel(
      title: 'Decrypt AES',
      desc: 'Decrypt AES',
      key: 'DECRYPT_AES',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Example Crypto')),
      body: ListView.builder(
        itemCount: features.length,
        itemBuilder: (_, index) {
          final feature = features[index];
          return GestureDetector(
            onTap: () async {
              switch (feature.key) {
                case 'GENERATE_AES_KEY':
                  context
                      .read<ExampleCryptoBloc>()
                      .add(const ExampleCryptoEvent.generateAESKey());
                case 'ENCRYPT_AES':
                  context
                      .read<ExampleCryptoBloc>()
                      .add(const ExampleCryptoEvent.encryptAES());
                case 'DECRYPT_AES':
                  context
                      .read<ExampleCryptoBloc>()
                      .add(const ExampleCryptoEvent.decryptAES());
                  break;
              }
            },
            child: ItemFeatureWidget(
              feature: feature,
            ),
          );
        },
      ),
    );
  }
}
