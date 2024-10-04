part of 'video_player_bloc.dart';

@freezed
class VideoPlayerEvent with _$VideoPlayerEvent {
  const factory VideoPlayerEvent.setQualities(List<HlsQualityModel> qualities) =
      _SetQualities;

  const factory VideoPlayerEvent.setSelectedQuality(
    HlsQualityModel quality, {
    required bool isSelectedByUser,
  }) = _SetSelectedQuality;

  const factory VideoPlayerEvent.setSubtitles(
      List<HlsSubtitleModel> subtitles) = _SetSubtitles;

  const factory VideoPlayerEvent.setSelectedSubtitle(
      HlsSubtitleModel subtitle) = _SetSelectedSubtitle;

  const factory VideoPlayerEvent.setSubtitleText(
      String? subtitleText) = _SetSubtitleText;
}
