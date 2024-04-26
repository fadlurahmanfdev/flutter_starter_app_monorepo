import 'package:app_example/data/model/feature_model.dart';
import 'package:app_example/module/index.dart';
import 'package:app_example/presentation/crypto/example_crypto_screen.dart';
import 'package:app_example/presentation/widget/feature_widget.dart';
import 'package:core_config/core_config.dart';
import 'package:flutter/material.dart';

class ExampleFeaturesScreen extends StatefulWidget {
  const ExampleFeaturesScreen({super.key});

  @override
  State<ExampleFeaturesScreen> createState() => _ExampleFeaturesScreenState();
}

class _ExampleFeaturesScreenState extends State<ExampleFeaturesScreen>
    with BaseLayout {
  List<FeatureModel> features = [
    FeatureModel(
      title: 'Crypto',
      desc: 'List of Cryptography Feature',
      key: 'CRYPTO',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('List of Feature')),
      body: ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 10),
        itemCount: features.length,
        itemBuilder: (context, index) {
          final feature = features[index];
          return GestureDetector(
            onTap: () async {
              switch (feature.key) {
                case 'CRYPTO':
                  navigator.push(AppExampleRouteModule, ExampleCryptoScreen);
                  break;
              }
            },
            child: ItemFeatureWidget(
              feature: features[index],
            ),
          );
        },
      ),
    );
  }

  void testMasterFunction(){
    // "test master function 1"
    // "test master function 2"
    // "test master function 3"
  }
}
