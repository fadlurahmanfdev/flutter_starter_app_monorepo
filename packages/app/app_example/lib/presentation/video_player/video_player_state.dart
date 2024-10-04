part of 'video_player_bloc.dart';

@freezed
class VideoPlayerState with _$VideoPlayerState {
  const factory VideoPlayerState({
    required List<HlsQualityModel> qualities,
    HlsQualityModel? selectedQuality,
    @Default(false) bool isQualitySelectByUser,
    required List<HlsSubtitleModel> subtitles,
    HlsSubtitleModel? selectedSubtitle,
    String? subtitleText,
  }) = _VideoPlayerState;

  factory VideoPlayerState.initialize() => const VideoPlayerState(
        qualities: [],
        subtitles: [],
      );
}
