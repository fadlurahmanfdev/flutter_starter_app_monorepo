import 'package:app_example/data/model/feature_model.dart';
import 'package:app_example/module/index.dart';
import 'package:app_example/presentation/crypto/example_crypto_screen.dart';
import 'package:app_example/presentation/video_player/video_player_features_screen.dart';
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
    FeatureModel(
      title: 'Video Player',
      desc: 'List of Video Player Feature',
      key: 'VIDEO_PLAYER',
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
                case 'VIDEO_PLAYER':
                  navigator.push(AppExampleRouteModule, VideoPlayerFeaturesScreen);
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
}
