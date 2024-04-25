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
    FeatureModel(
      title: 'Generate RSA Key',
      desc: 'Generate RSA Key',
      key: 'GENERATE_RSA_KEY',
    ),
    FeatureModel(
      title: 'Encrypt RSA',
      desc: 'Encrypt RSA',
      key: 'ENCRYPT_RSA',
    ),
    FeatureModel(
      title: 'Decrypt RSA',
      desc: 'Decrypt RSA',
      key: 'DECRYPT_RSA',
    ),
    FeatureModel(
      title: 'Encrypt RSA Combined With AES',
      desc: 'Encrypt RSA Combined With AES',
      key: 'ENCRYPT_RSA_COMBINED_WITH_AES',
    ),
    FeatureModel(
      title: 'Decrypt RSA Combined With AES',
      desc: 'Decrypt RSA Combined With AES',
      key: 'DECRYPT_RSA_COMBINED_WITH_AES',
    ),
    FeatureModel(
      title: 'Generate RSA Signature',
      desc: 'Generate RSA Signature',
      key: 'GENERATE_RSA_SIGNATURE',
    ),
    FeatureModel(
      title: 'Verify RSA Signature',
      desc: 'Verify RSA Signature',
      key: 'VERIFY_RSA_SIGNATURE',
    ),
    FeatureModel(
      title: 'Generate ED25519 Key',
      desc: 'Generate ED25519 Key',
      key: 'GENERATE_ED25519_KEY',
    ),
    FeatureModel(
      title: 'Generate ED25519 Signature',
      desc: 'Generate ED25519 Signature',
      key: 'GENERATE_ED25519_SIGNATURE',
    ),
    FeatureModel(
      title: 'Verify ED25519 Signature',
      desc: 'Verify ED25519 Signature',
      key: 'VERIFY_ED25519_SIGNATURE',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Example Crypto')),
      body: ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 10),
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
                case 'GENERATE_RSA_KEY':
                  context
                      .read<ExampleCryptoBloc>()
                      .add(const ExampleCryptoEvent.generateRSAKey());
                case 'ENCRYPT_RSA':
                  context
                      .read<ExampleCryptoBloc>()
                      .add(const ExampleCryptoEvent.encryptRSA());
                case 'DECRYPT_RSA':
                  context
                      .read<ExampleCryptoBloc>()
                      .add(const ExampleCryptoEvent.decryptRSA());
                  break;
                case 'ENCRYPT_RSA_COMBINED_WITH_AES':
                  context
                      .read<ExampleCryptoBloc>()
                      .add(const ExampleCryptoEvent.encryptRSACombinedWithAES());
                case 'DECRYPT_RSA_COMBINED_WITH_AES':
                  context
                      .read<ExampleCryptoBloc>()
                      .add(const ExampleCryptoEvent.decryptRSACombinedWithAES());
                  break;
                case 'GENERATE_RSA_SIGNATURE':
                  context
                      .read<ExampleCryptoBloc>()
                      .add(const ExampleCryptoEvent.generateRSASignature());
                case 'VERIFY_RSA_SIGNATURE':
                  context
                      .read<ExampleCryptoBloc>()
                      .add(const ExampleCryptoEvent.verifyRSASignature());
                  break;
                case 'GENERATE_ED25519_KEY':
                  context
                      .read<ExampleCryptoBloc>()
                      .add(const ExampleCryptoEvent.generateED25519Key());
                case 'GENERATE_ED25519_SIGNATURE':
                  context
                      .read<ExampleCryptoBloc>()
                      .add(const ExampleCryptoEvent.generateED25519Signature());
                  break;
                case 'VERIFY_ED25519_SIGNATURE':
                  context
                      .read<ExampleCryptoBloc>()
                      .add(const ExampleCryptoEvent.verifyED25519Signature());
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
