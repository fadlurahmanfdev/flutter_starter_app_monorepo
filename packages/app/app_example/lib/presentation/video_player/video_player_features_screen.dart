import 'dart:convert';
import 'dart:developer';

import 'package:app_example/presentation/video_player/video_player_bloc.dart';
import 'package:core_config/core_config.dart';
import 'package:core_config/shared/context_extension.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:feature_video_player/feature_video_player.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerFeaturesScreen extends StatefulWidget with WrapperState {
  VideoPlayerFeaturesScreen({super.key});

  @override
  State<VideoPlayerFeaturesScreen> createState() =>
      _VideoPlayerFeaturesScreenState();

  @override
  Widget wrap(BuildContext context) {
    return BlocProvider(
      create: (context) => context.get<VideoPlayerBloc>(),
      child: this,
    );
  }
}

class _VideoPlayerFeaturesScreenState extends State<VideoPlayerFeaturesScreen> {
  late VideoPlayerService videoPlayerService;
  bool isAlreadyInitialized = false;
  bool isSelectingQualityOfVideo = false;
  bool isSelectingSubtitleOfVideo = false;

  void onVideoPlayerControllerInitialize() {
    isAlreadyInitialized = true;
    setState(() {});
  }

  void onGetQualitiesOfVideo(List<HlsQualityModel> qualitiesVideo) {
    context
        .read<VideoPlayerBloc>()
        .add(VideoPlayerEvent.setQualities(qualitiesVideo));
    for (var quality in qualitiesVideo) {
      log("QUALITY OF VIDEO: ${quality.name}");
      log("URL: ${quality.url}");
    }
  }

  void onQualityChanged(
    HlsQualityModel quality, {
    required bool isSelectedByUser,
  }) {
    context.read<VideoPlayerBloc>().add(VideoPlayerEvent.setSelectedQuality(
        quality,
        isSelectedByUser: isSelectedByUser));
  }

  void onGetSubtitlesOfVideo(List<HlsSubtitleModel> subtitlesVideo) {
    context
        .read<VideoPlayerBloc>()
        .add(VideoPlayerEvent.setSubtitles(subtitlesVideo));
  }

  void onSubtitleChanged(HlsSubtitleModel subtitle) {
    context
        .read<VideoPlayerBloc>()
        .add(VideoPlayerEvent.setSelectedSubtitle(subtitle));
  }

  void onSubtitleTextChanged(String? subtitleText) {
    context
        .read<VideoPlayerBloc>()
        .add(VideoPlayerEvent.setSubtitleText(subtitleText));
  }

  @override
  void initState() {
    super.initState();
    videoPlayerService = VideoPlayerService(
      onVideoPlayerControllerInitialize: onVideoPlayerControllerInitialize,
    );
    videoPlayerService.playHLS(
      "https://bitdash-a.akamaihd.net/content/sintel/hls/playlist.m3u8",
      // "https://mtoczko.github.io/hls-test-streams/test-group/playlist.m3u8",
      // "https://sfux-ext.sfux.info/hls/chapter/105/1588724110/1588724110.m3u8",
      onGetQualitiesOfVideo: onGetQualitiesOfVideo,
      onQualityChanged: onQualityChanged,
      onGetSubtitlesOfVideo: onGetSubtitlesOfVideo,
      onSubtitleChanged: onSubtitleChanged,
      onSubtitleTextChanged: onSubtitleTextChanged,
    );
  }

  @override
  void dispose() {
    videoPlayerService.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: isAlreadyInitialized
            ? Column(
                children: [
                  AspectRatio(
                    aspectRatio:
                        videoPlayerService.controller.value.aspectRatio,
                    child: VideoPlayer(videoPlayerService.controller),
                  ),
                  const SizedBox(height: 10),
                  BlocBuilder<VideoPlayerBloc, VideoPlayerState>(
                    buildWhen: (previous, current) =>
                        previous.subtitleText != current.subtitleText,
                    builder: (context, state) {
                      return Visibility(
                        visible: state.subtitleText != null,
                        child: ClosedCaption(
                          text: state.subtitleText,
                        ),
                      );
                    },
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: videoControlWidget(),
                    ),
                  ),
                ],
              )
            : Container(),
      ),
    );
  }

  Widget videoControlWidget() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            BlocBuilder<VideoPlayerBloc, VideoPlayerState>(
              buildWhen: (previous, current) =>
                  previous.selectedQuality?.url !=
                      current.selectedQuality?.url ||
                  previous.isQualitySelectByUser !=
                      current.isQualitySelectByUser,
              builder: (context, state) {
                return GestureDetector(
                  onTap: () async {
                    setState(() {
                      isSelectingQualityOfVideo = !isSelectingQualityOfVideo;
                    });
                  },
                  child: Row(
                    children: [
                      const Icon(Icons.settings),
                      const SizedBox(width: 5),
                      Text(
                          "${state.selectedQuality?.name}${state.isQualitySelectByUser ? "" : " (Auto)"}"),
                    ],
                  ),
                );
              },
            ),
            BlocBuilder<VideoPlayerBloc, VideoPlayerState>(
              buildWhen: (previous, current) =>
                  previous.selectedSubtitle?.language !=
                  current.selectedSubtitle?.language,
              builder: (context, state) {
                return GestureDetector(
                  onTap: () async {
                    setState(() {
                      isSelectingSubtitleOfVideo = !isSelectingSubtitleOfVideo;
                    });
                  },
                  child: Row(
                    children: [
                      Icon(
                        state.selectedSubtitle != null
                            ? Icons.closed_caption
                            : Icons.closed_caption_disabled,
                      ),
                      const SizedBox(width: 5),
                      Text(
                        state.selectedSubtitle != null
                            ? "${state.selectedSubtitle?.language}"
                            : "-",
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
        Visibility(
          visible: isSelectingQualityOfVideo,
          child: BlocBuilder<VideoPlayerBloc, VideoPlayerState>(
            buildWhen: (previous, current) =>
                previous.qualities.length != current.qualities.length ||
                json.encode(previous.qualities) !=
                    json.encode(current.qualities) ||
                previous.selectedQuality?.name != current.selectedQuality?.name,
            builder: (context, state) {
              return qualitiesOfVideoWidget(
                state.qualities,
                selectedQuality: state.selectedQuality,
              );
            },
          ),
        ),
        Visibility(
          visible: isSelectingSubtitleOfVideo,
          child: BlocBuilder<VideoPlayerBloc, VideoPlayerState>(
            buildWhen: (previous, current) =>
                previous.subtitles.length != current.subtitles.length ||
                json.encode(previous.subtitles) !=
                    json.encode(current.subtitles) ||
                previous.selectedSubtitle?.language !=
                    current.selectedSubtitle?.language,
            builder: (context, state) {
              return subtitlesOfVideoWidget(
                state.subtitles,
                selectedSubtitle: state.selectedSubtitle,
              );
            },
          ),
        ),
      ],
    );
  }

  Widget qualitiesOfVideoWidget(
    List<HlsQualityModel> qualitiesOfVideo, {
    HlsQualityModel? selectedQuality,
  }) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(height: 20),
         Text("Resolution Of Video ${selectedQuality?.name}"),
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: qualitiesOfVideo
              .map((e) => GestureDetector(
                    onTap: () async {
                      setState(() {
                        isSelectingQualityOfVideo = false;
                      });
                      videoPlayerService.setQuality(e);
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(e.name),
                        Visibility(
                          visible: selectedQuality?.name == e.name,
                          child: const Icon(Icons.check),
                        ),
                      ],
                    ),
                  ))
              .toList(),
        )
      ],
    );
  }

  Widget subtitlesOfVideoWidget(
    List<HlsSubtitleModel> subtitlesOfVideo, {
    HlsSubtitleModel? selectedSubtitle,
  }) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(height: 20),
        const Text("Subtitles Of Video"),
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: subtitlesOfVideo
              .map((e) => GestureDetector(
                    onTap: () async {
                      setState(() {
                        isSelectingSubtitleOfVideo = false;
                      });
                      videoPlayerService.setSubtitle(e);
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(e.language),
                        Visibility(
                          visible: selectedSubtitle?.language == e.language,
                          child: const Icon(Icons.check),
                        ),
                      ],
                    ),
                  ))
              .toList(),
        )
      ],
    );
  }
}
