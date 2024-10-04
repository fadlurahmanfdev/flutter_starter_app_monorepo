import 'package:feature_video_player/feature_video_player.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'video_player_bloc.freezed.dart';

part 'video_player_event.dart';

part 'video_player_state.dart';

class VideoPlayerBloc extends Bloc<VideoPlayerEvent, VideoPlayerState> {
  VideoPlayerBloc() : super(VideoPlayerState.initialize()) {
    on<VideoPlayerEvent>((events, emit) async {
      await events.map(
        setQualities: (event) async => await _onSetQualities(event, emit),
        setSelectedQuality: (event) async =>
            await _onSetSelectedQuality(event, emit),
        setSubtitles: (event) async => await _onSetSubtitles(event, emit),
        setSelectedSubtitle: (event) async =>
            await _onSetSelectedSubtitle(event, emit),
        setSubtitleText: (event) async => await _onSetSubtitleText(event, emit),
      );
    });
  }

  Future<void> _onSetQualities(
      _SetQualities event, Emitter<VideoPlayerState> emit) async {
    emit(state.copyWith(qualities: event.qualities));
  }

  Future<void> _onSetSelectedQuality(
      _SetSelectedQuality event, Emitter<VideoPlayerState> emit) async {
    emit(state.copyWith(
      selectedQuality: event.quality,
      isQualitySelectByUser: event.isSelectedByUser,
    ));
  }

  Future<void> _onSetSubtitles(
      _SetSubtitles event, Emitter<VideoPlayerState> emit) async {
    emit(state.copyWith(subtitles: event.subtitles));
  }

  Future<void> _onSetSelectedSubtitle(
      _SetSelectedSubtitle event, Emitter<VideoPlayerState> emit) async {
    emit(state.copyWith(selectedSubtitle: event.subtitle));
  }

  Future<void> _onSetSubtitleText(
      _SetSubtitleText event, Emitter<VideoPlayerState> emit) async {
    emit(state.copyWith(subtitleText: event.subtitleText));
  }
}
