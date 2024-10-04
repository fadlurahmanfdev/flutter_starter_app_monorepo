// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'video_player_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$VideoPlayerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<HlsQualityModel> qualities) setQualities,
    required TResult Function(HlsQualityModel quality, bool isSelectedByUser)
        setSelectedQuality,
    required TResult Function(List<HlsSubtitleModel> subtitles) setSubtitles,
    required TResult Function(HlsSubtitleModel subtitle) setSelectedSubtitle,
    required TResult Function(String? subtitleText) setSubtitleText,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<HlsQualityModel> qualities)? setQualities,
    TResult? Function(HlsQualityModel quality, bool isSelectedByUser)?
        setSelectedQuality,
    TResult? Function(List<HlsSubtitleModel> subtitles)? setSubtitles,
    TResult? Function(HlsSubtitleModel subtitle)? setSelectedSubtitle,
    TResult? Function(String? subtitleText)? setSubtitleText,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<HlsQualityModel> qualities)? setQualities,
    TResult Function(HlsQualityModel quality, bool isSelectedByUser)?
        setSelectedQuality,
    TResult Function(List<HlsSubtitleModel> subtitles)? setSubtitles,
    TResult Function(HlsSubtitleModel subtitle)? setSelectedSubtitle,
    TResult Function(String? subtitleText)? setSubtitleText,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetQualities value) setQualities,
    required TResult Function(_SetSelectedQuality value) setSelectedQuality,
    required TResult Function(_SetSubtitles value) setSubtitles,
    required TResult Function(_SetSelectedSubtitle value) setSelectedSubtitle,
    required TResult Function(_SetSubtitleText value) setSubtitleText,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetQualities value)? setQualities,
    TResult? Function(_SetSelectedQuality value)? setSelectedQuality,
    TResult? Function(_SetSubtitles value)? setSubtitles,
    TResult? Function(_SetSelectedSubtitle value)? setSelectedSubtitle,
    TResult? Function(_SetSubtitleText value)? setSubtitleText,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetQualities value)? setQualities,
    TResult Function(_SetSelectedQuality value)? setSelectedQuality,
    TResult Function(_SetSubtitles value)? setSubtitles,
    TResult Function(_SetSelectedSubtitle value)? setSelectedSubtitle,
    TResult Function(_SetSubtitleText value)? setSubtitleText,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoPlayerEventCopyWith<$Res> {
  factory $VideoPlayerEventCopyWith(
          VideoPlayerEvent value, $Res Function(VideoPlayerEvent) then) =
      _$VideoPlayerEventCopyWithImpl<$Res, VideoPlayerEvent>;
}

/// @nodoc
class _$VideoPlayerEventCopyWithImpl<$Res, $Val extends VideoPlayerEvent>
    implements $VideoPlayerEventCopyWith<$Res> {
  _$VideoPlayerEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SetQualitiesImplCopyWith<$Res> {
  factory _$$SetQualitiesImplCopyWith(
          _$SetQualitiesImpl value, $Res Function(_$SetQualitiesImpl) then) =
      __$$SetQualitiesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<HlsQualityModel> qualities});
}

/// @nodoc
class __$$SetQualitiesImplCopyWithImpl<$Res>
    extends _$VideoPlayerEventCopyWithImpl<$Res, _$SetQualitiesImpl>
    implements _$$SetQualitiesImplCopyWith<$Res> {
  __$$SetQualitiesImplCopyWithImpl(
      _$SetQualitiesImpl _value, $Res Function(_$SetQualitiesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? qualities = null,
  }) {
    return _then(_$SetQualitiesImpl(
      null == qualities
          ? _value._qualities
          : qualities // ignore: cast_nullable_to_non_nullable
              as List<HlsQualityModel>,
    ));
  }
}

/// @nodoc

class _$SetQualitiesImpl implements _SetQualities {
  const _$SetQualitiesImpl(final List<HlsQualityModel> qualities)
      : _qualities = qualities;

  final List<HlsQualityModel> _qualities;
  @override
  List<HlsQualityModel> get qualities {
    if (_qualities is EqualUnmodifiableListView) return _qualities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_qualities);
  }

  @override
  String toString() {
    return 'VideoPlayerEvent.setQualities(qualities: $qualities)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetQualitiesImpl &&
            const DeepCollectionEquality()
                .equals(other._qualities, _qualities));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_qualities));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetQualitiesImplCopyWith<_$SetQualitiesImpl> get copyWith =>
      __$$SetQualitiesImplCopyWithImpl<_$SetQualitiesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<HlsQualityModel> qualities) setQualities,
    required TResult Function(HlsQualityModel quality, bool isSelectedByUser)
        setSelectedQuality,
    required TResult Function(List<HlsSubtitleModel> subtitles) setSubtitles,
    required TResult Function(HlsSubtitleModel subtitle) setSelectedSubtitle,
    required TResult Function(String? subtitleText) setSubtitleText,
  }) {
    return setQualities(qualities);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<HlsQualityModel> qualities)? setQualities,
    TResult? Function(HlsQualityModel quality, bool isSelectedByUser)?
        setSelectedQuality,
    TResult? Function(List<HlsSubtitleModel> subtitles)? setSubtitles,
    TResult? Function(HlsSubtitleModel subtitle)? setSelectedSubtitle,
    TResult? Function(String? subtitleText)? setSubtitleText,
  }) {
    return setQualities?.call(qualities);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<HlsQualityModel> qualities)? setQualities,
    TResult Function(HlsQualityModel quality, bool isSelectedByUser)?
        setSelectedQuality,
    TResult Function(List<HlsSubtitleModel> subtitles)? setSubtitles,
    TResult Function(HlsSubtitleModel subtitle)? setSelectedSubtitle,
    TResult Function(String? subtitleText)? setSubtitleText,
    required TResult orElse(),
  }) {
    if (setQualities != null) {
      return setQualities(qualities);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetQualities value) setQualities,
    required TResult Function(_SetSelectedQuality value) setSelectedQuality,
    required TResult Function(_SetSubtitles value) setSubtitles,
    required TResult Function(_SetSelectedSubtitle value) setSelectedSubtitle,
    required TResult Function(_SetSubtitleText value) setSubtitleText,
  }) {
    return setQualities(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetQualities value)? setQualities,
    TResult? Function(_SetSelectedQuality value)? setSelectedQuality,
    TResult? Function(_SetSubtitles value)? setSubtitles,
    TResult? Function(_SetSelectedSubtitle value)? setSelectedSubtitle,
    TResult? Function(_SetSubtitleText value)? setSubtitleText,
  }) {
    return setQualities?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetQualities value)? setQualities,
    TResult Function(_SetSelectedQuality value)? setSelectedQuality,
    TResult Function(_SetSubtitles value)? setSubtitles,
    TResult Function(_SetSelectedSubtitle value)? setSelectedSubtitle,
    TResult Function(_SetSubtitleText value)? setSubtitleText,
    required TResult orElse(),
  }) {
    if (setQualities != null) {
      return setQualities(this);
    }
    return orElse();
  }
}

abstract class _SetQualities implements VideoPlayerEvent {
  const factory _SetQualities(final List<HlsQualityModel> qualities) =
      _$SetQualitiesImpl;

  List<HlsQualityModel> get qualities;
  @JsonKey(ignore: true)
  _$$SetQualitiesImplCopyWith<_$SetQualitiesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetSelectedQualityImplCopyWith<$Res> {
  factory _$$SetSelectedQualityImplCopyWith(_$SetSelectedQualityImpl value,
          $Res Function(_$SetSelectedQualityImpl) then) =
      __$$SetSelectedQualityImplCopyWithImpl<$Res>;
  @useResult
  $Res call({HlsQualityModel quality, bool isSelectedByUser});
}

/// @nodoc
class __$$SetSelectedQualityImplCopyWithImpl<$Res>
    extends _$VideoPlayerEventCopyWithImpl<$Res, _$SetSelectedQualityImpl>
    implements _$$SetSelectedQualityImplCopyWith<$Res> {
  __$$SetSelectedQualityImplCopyWithImpl(_$SetSelectedQualityImpl _value,
      $Res Function(_$SetSelectedQualityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quality = null,
    Object? isSelectedByUser = null,
  }) {
    return _then(_$SetSelectedQualityImpl(
      null == quality
          ? _value.quality
          : quality // ignore: cast_nullable_to_non_nullable
              as HlsQualityModel,
      isSelectedByUser: null == isSelectedByUser
          ? _value.isSelectedByUser
          : isSelectedByUser // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SetSelectedQualityImpl implements _SetSelectedQuality {
  const _$SetSelectedQualityImpl(this.quality,
      {required this.isSelectedByUser});

  @override
  final HlsQualityModel quality;
  @override
  final bool isSelectedByUser;

  @override
  String toString() {
    return 'VideoPlayerEvent.setSelectedQuality(quality: $quality, isSelectedByUser: $isSelectedByUser)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetSelectedQualityImpl &&
            (identical(other.quality, quality) || other.quality == quality) &&
            (identical(other.isSelectedByUser, isSelectedByUser) ||
                other.isSelectedByUser == isSelectedByUser));
  }

  @override
  int get hashCode => Object.hash(runtimeType, quality, isSelectedByUser);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetSelectedQualityImplCopyWith<_$SetSelectedQualityImpl> get copyWith =>
      __$$SetSelectedQualityImplCopyWithImpl<_$SetSelectedQualityImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<HlsQualityModel> qualities) setQualities,
    required TResult Function(HlsQualityModel quality, bool isSelectedByUser)
        setSelectedQuality,
    required TResult Function(List<HlsSubtitleModel> subtitles) setSubtitles,
    required TResult Function(HlsSubtitleModel subtitle) setSelectedSubtitle,
    required TResult Function(String? subtitleText) setSubtitleText,
  }) {
    return setSelectedQuality(quality, isSelectedByUser);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<HlsQualityModel> qualities)? setQualities,
    TResult? Function(HlsQualityModel quality, bool isSelectedByUser)?
        setSelectedQuality,
    TResult? Function(List<HlsSubtitleModel> subtitles)? setSubtitles,
    TResult? Function(HlsSubtitleModel subtitle)? setSelectedSubtitle,
    TResult? Function(String? subtitleText)? setSubtitleText,
  }) {
    return setSelectedQuality?.call(quality, isSelectedByUser);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<HlsQualityModel> qualities)? setQualities,
    TResult Function(HlsQualityModel quality, bool isSelectedByUser)?
        setSelectedQuality,
    TResult Function(List<HlsSubtitleModel> subtitles)? setSubtitles,
    TResult Function(HlsSubtitleModel subtitle)? setSelectedSubtitle,
    TResult Function(String? subtitleText)? setSubtitleText,
    required TResult orElse(),
  }) {
    if (setSelectedQuality != null) {
      return setSelectedQuality(quality, isSelectedByUser);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetQualities value) setQualities,
    required TResult Function(_SetSelectedQuality value) setSelectedQuality,
    required TResult Function(_SetSubtitles value) setSubtitles,
    required TResult Function(_SetSelectedSubtitle value) setSelectedSubtitle,
    required TResult Function(_SetSubtitleText value) setSubtitleText,
  }) {
    return setSelectedQuality(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetQualities value)? setQualities,
    TResult? Function(_SetSelectedQuality value)? setSelectedQuality,
    TResult? Function(_SetSubtitles value)? setSubtitles,
    TResult? Function(_SetSelectedSubtitle value)? setSelectedSubtitle,
    TResult? Function(_SetSubtitleText value)? setSubtitleText,
  }) {
    return setSelectedQuality?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetQualities value)? setQualities,
    TResult Function(_SetSelectedQuality value)? setSelectedQuality,
    TResult Function(_SetSubtitles value)? setSubtitles,
    TResult Function(_SetSelectedSubtitle value)? setSelectedSubtitle,
    TResult Function(_SetSubtitleText value)? setSubtitleText,
    required TResult orElse(),
  }) {
    if (setSelectedQuality != null) {
      return setSelectedQuality(this);
    }
    return orElse();
  }
}

abstract class _SetSelectedQuality implements VideoPlayerEvent {
  const factory _SetSelectedQuality(final HlsQualityModel quality,
      {required final bool isSelectedByUser}) = _$SetSelectedQualityImpl;

  HlsQualityModel get quality;
  bool get isSelectedByUser;
  @JsonKey(ignore: true)
  _$$SetSelectedQualityImplCopyWith<_$SetSelectedQualityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetSubtitlesImplCopyWith<$Res> {
  factory _$$SetSubtitlesImplCopyWith(
          _$SetSubtitlesImpl value, $Res Function(_$SetSubtitlesImpl) then) =
      __$$SetSubtitlesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<HlsSubtitleModel> subtitles});
}

/// @nodoc
class __$$SetSubtitlesImplCopyWithImpl<$Res>
    extends _$VideoPlayerEventCopyWithImpl<$Res, _$SetSubtitlesImpl>
    implements _$$SetSubtitlesImplCopyWith<$Res> {
  __$$SetSubtitlesImplCopyWithImpl(
      _$SetSubtitlesImpl _value, $Res Function(_$SetSubtitlesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subtitles = null,
  }) {
    return _then(_$SetSubtitlesImpl(
      null == subtitles
          ? _value._subtitles
          : subtitles // ignore: cast_nullable_to_non_nullable
              as List<HlsSubtitleModel>,
    ));
  }
}

/// @nodoc

class _$SetSubtitlesImpl implements _SetSubtitles {
  const _$SetSubtitlesImpl(final List<HlsSubtitleModel> subtitles)
      : _subtitles = subtitles;

  final List<HlsSubtitleModel> _subtitles;
  @override
  List<HlsSubtitleModel> get subtitles {
    if (_subtitles is EqualUnmodifiableListView) return _subtitles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_subtitles);
  }

  @override
  String toString() {
    return 'VideoPlayerEvent.setSubtitles(subtitles: $subtitles)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetSubtitlesImpl &&
            const DeepCollectionEquality()
                .equals(other._subtitles, _subtitles));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_subtitles));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetSubtitlesImplCopyWith<_$SetSubtitlesImpl> get copyWith =>
      __$$SetSubtitlesImplCopyWithImpl<_$SetSubtitlesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<HlsQualityModel> qualities) setQualities,
    required TResult Function(HlsQualityModel quality, bool isSelectedByUser)
        setSelectedQuality,
    required TResult Function(List<HlsSubtitleModel> subtitles) setSubtitles,
    required TResult Function(HlsSubtitleModel subtitle) setSelectedSubtitle,
    required TResult Function(String? subtitleText) setSubtitleText,
  }) {
    return setSubtitles(subtitles);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<HlsQualityModel> qualities)? setQualities,
    TResult? Function(HlsQualityModel quality, bool isSelectedByUser)?
        setSelectedQuality,
    TResult? Function(List<HlsSubtitleModel> subtitles)? setSubtitles,
    TResult? Function(HlsSubtitleModel subtitle)? setSelectedSubtitle,
    TResult? Function(String? subtitleText)? setSubtitleText,
  }) {
    return setSubtitles?.call(subtitles);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<HlsQualityModel> qualities)? setQualities,
    TResult Function(HlsQualityModel quality, bool isSelectedByUser)?
        setSelectedQuality,
    TResult Function(List<HlsSubtitleModel> subtitles)? setSubtitles,
    TResult Function(HlsSubtitleModel subtitle)? setSelectedSubtitle,
    TResult Function(String? subtitleText)? setSubtitleText,
    required TResult orElse(),
  }) {
    if (setSubtitles != null) {
      return setSubtitles(subtitles);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetQualities value) setQualities,
    required TResult Function(_SetSelectedQuality value) setSelectedQuality,
    required TResult Function(_SetSubtitles value) setSubtitles,
    required TResult Function(_SetSelectedSubtitle value) setSelectedSubtitle,
    required TResult Function(_SetSubtitleText value) setSubtitleText,
  }) {
    return setSubtitles(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetQualities value)? setQualities,
    TResult? Function(_SetSelectedQuality value)? setSelectedQuality,
    TResult? Function(_SetSubtitles value)? setSubtitles,
    TResult? Function(_SetSelectedSubtitle value)? setSelectedSubtitle,
    TResult? Function(_SetSubtitleText value)? setSubtitleText,
  }) {
    return setSubtitles?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetQualities value)? setQualities,
    TResult Function(_SetSelectedQuality value)? setSelectedQuality,
    TResult Function(_SetSubtitles value)? setSubtitles,
    TResult Function(_SetSelectedSubtitle value)? setSelectedSubtitle,
    TResult Function(_SetSubtitleText value)? setSubtitleText,
    required TResult orElse(),
  }) {
    if (setSubtitles != null) {
      return setSubtitles(this);
    }
    return orElse();
  }
}

abstract class _SetSubtitles implements VideoPlayerEvent {
  const factory _SetSubtitles(final List<HlsSubtitleModel> subtitles) =
      _$SetSubtitlesImpl;

  List<HlsSubtitleModel> get subtitles;
  @JsonKey(ignore: true)
  _$$SetSubtitlesImplCopyWith<_$SetSubtitlesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetSelectedSubtitleImplCopyWith<$Res> {
  factory _$$SetSelectedSubtitleImplCopyWith(_$SetSelectedSubtitleImpl value,
          $Res Function(_$SetSelectedSubtitleImpl) then) =
      __$$SetSelectedSubtitleImplCopyWithImpl<$Res>;
  @useResult
  $Res call({HlsSubtitleModel subtitle});
}

/// @nodoc
class __$$SetSelectedSubtitleImplCopyWithImpl<$Res>
    extends _$VideoPlayerEventCopyWithImpl<$Res, _$SetSelectedSubtitleImpl>
    implements _$$SetSelectedSubtitleImplCopyWith<$Res> {
  __$$SetSelectedSubtitleImplCopyWithImpl(_$SetSelectedSubtitleImpl _value,
      $Res Function(_$SetSelectedSubtitleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subtitle = null,
  }) {
    return _then(_$SetSelectedSubtitleImpl(
      null == subtitle
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as HlsSubtitleModel,
    ));
  }
}

/// @nodoc

class _$SetSelectedSubtitleImpl implements _SetSelectedSubtitle {
  const _$SetSelectedSubtitleImpl(this.subtitle);

  @override
  final HlsSubtitleModel subtitle;

  @override
  String toString() {
    return 'VideoPlayerEvent.setSelectedSubtitle(subtitle: $subtitle)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetSelectedSubtitleImpl &&
            (identical(other.subtitle, subtitle) ||
                other.subtitle == subtitle));
  }

  @override
  int get hashCode => Object.hash(runtimeType, subtitle);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetSelectedSubtitleImplCopyWith<_$SetSelectedSubtitleImpl> get copyWith =>
      __$$SetSelectedSubtitleImplCopyWithImpl<_$SetSelectedSubtitleImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<HlsQualityModel> qualities) setQualities,
    required TResult Function(HlsQualityModel quality, bool isSelectedByUser)
        setSelectedQuality,
    required TResult Function(List<HlsSubtitleModel> subtitles) setSubtitles,
    required TResult Function(HlsSubtitleModel subtitle) setSelectedSubtitle,
    required TResult Function(String? subtitleText) setSubtitleText,
  }) {
    return setSelectedSubtitle(subtitle);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<HlsQualityModel> qualities)? setQualities,
    TResult? Function(HlsQualityModel quality, bool isSelectedByUser)?
        setSelectedQuality,
    TResult? Function(List<HlsSubtitleModel> subtitles)? setSubtitles,
    TResult? Function(HlsSubtitleModel subtitle)? setSelectedSubtitle,
    TResult? Function(String? subtitleText)? setSubtitleText,
  }) {
    return setSelectedSubtitle?.call(subtitle);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<HlsQualityModel> qualities)? setQualities,
    TResult Function(HlsQualityModel quality, bool isSelectedByUser)?
        setSelectedQuality,
    TResult Function(List<HlsSubtitleModel> subtitles)? setSubtitles,
    TResult Function(HlsSubtitleModel subtitle)? setSelectedSubtitle,
    TResult Function(String? subtitleText)? setSubtitleText,
    required TResult orElse(),
  }) {
    if (setSelectedSubtitle != null) {
      return setSelectedSubtitle(subtitle);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetQualities value) setQualities,
    required TResult Function(_SetSelectedQuality value) setSelectedQuality,
    required TResult Function(_SetSubtitles value) setSubtitles,
    required TResult Function(_SetSelectedSubtitle value) setSelectedSubtitle,
    required TResult Function(_SetSubtitleText value) setSubtitleText,
  }) {
    return setSelectedSubtitle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetQualities value)? setQualities,
    TResult? Function(_SetSelectedQuality value)? setSelectedQuality,
    TResult? Function(_SetSubtitles value)? setSubtitles,
    TResult? Function(_SetSelectedSubtitle value)? setSelectedSubtitle,
    TResult? Function(_SetSubtitleText value)? setSubtitleText,
  }) {
    return setSelectedSubtitle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetQualities value)? setQualities,
    TResult Function(_SetSelectedQuality value)? setSelectedQuality,
    TResult Function(_SetSubtitles value)? setSubtitles,
    TResult Function(_SetSelectedSubtitle value)? setSelectedSubtitle,
    TResult Function(_SetSubtitleText value)? setSubtitleText,
    required TResult orElse(),
  }) {
    if (setSelectedSubtitle != null) {
      return setSelectedSubtitle(this);
    }
    return orElse();
  }
}

abstract class _SetSelectedSubtitle implements VideoPlayerEvent {
  const factory _SetSelectedSubtitle(final HlsSubtitleModel subtitle) =
      _$SetSelectedSubtitleImpl;

  HlsSubtitleModel get subtitle;
  @JsonKey(ignore: true)
  _$$SetSelectedSubtitleImplCopyWith<_$SetSelectedSubtitleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetSubtitleTextImplCopyWith<$Res> {
  factory _$$SetSubtitleTextImplCopyWith(_$SetSubtitleTextImpl value,
          $Res Function(_$SetSubtitleTextImpl) then) =
      __$$SetSubtitleTextImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? subtitleText});
}

/// @nodoc
class __$$SetSubtitleTextImplCopyWithImpl<$Res>
    extends _$VideoPlayerEventCopyWithImpl<$Res, _$SetSubtitleTextImpl>
    implements _$$SetSubtitleTextImplCopyWith<$Res> {
  __$$SetSubtitleTextImplCopyWithImpl(
      _$SetSubtitleTextImpl _value, $Res Function(_$SetSubtitleTextImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subtitleText = freezed,
  }) {
    return _then(_$SetSubtitleTextImpl(
      freezed == subtitleText
          ? _value.subtitleText
          : subtitleText // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SetSubtitleTextImpl implements _SetSubtitleText {
  const _$SetSubtitleTextImpl(this.subtitleText);

  @override
  final String? subtitleText;

  @override
  String toString() {
    return 'VideoPlayerEvent.setSubtitleText(subtitleText: $subtitleText)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetSubtitleTextImpl &&
            (identical(other.subtitleText, subtitleText) ||
                other.subtitleText == subtitleText));
  }

  @override
  int get hashCode => Object.hash(runtimeType, subtitleText);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetSubtitleTextImplCopyWith<_$SetSubtitleTextImpl> get copyWith =>
      __$$SetSubtitleTextImplCopyWithImpl<_$SetSubtitleTextImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<HlsQualityModel> qualities) setQualities,
    required TResult Function(HlsQualityModel quality, bool isSelectedByUser)
        setSelectedQuality,
    required TResult Function(List<HlsSubtitleModel> subtitles) setSubtitles,
    required TResult Function(HlsSubtitleModel subtitle) setSelectedSubtitle,
    required TResult Function(String? subtitleText) setSubtitleText,
  }) {
    return setSubtitleText(subtitleText);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<HlsQualityModel> qualities)? setQualities,
    TResult? Function(HlsQualityModel quality, bool isSelectedByUser)?
        setSelectedQuality,
    TResult? Function(List<HlsSubtitleModel> subtitles)? setSubtitles,
    TResult? Function(HlsSubtitleModel subtitle)? setSelectedSubtitle,
    TResult? Function(String? subtitleText)? setSubtitleText,
  }) {
    return setSubtitleText?.call(subtitleText);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<HlsQualityModel> qualities)? setQualities,
    TResult Function(HlsQualityModel quality, bool isSelectedByUser)?
        setSelectedQuality,
    TResult Function(List<HlsSubtitleModel> subtitles)? setSubtitles,
    TResult Function(HlsSubtitleModel subtitle)? setSelectedSubtitle,
    TResult Function(String? subtitleText)? setSubtitleText,
    required TResult orElse(),
  }) {
    if (setSubtitleText != null) {
      return setSubtitleText(subtitleText);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetQualities value) setQualities,
    required TResult Function(_SetSelectedQuality value) setSelectedQuality,
    required TResult Function(_SetSubtitles value) setSubtitles,
    required TResult Function(_SetSelectedSubtitle value) setSelectedSubtitle,
    required TResult Function(_SetSubtitleText value) setSubtitleText,
  }) {
    return setSubtitleText(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetQualities value)? setQualities,
    TResult? Function(_SetSelectedQuality value)? setSelectedQuality,
    TResult? Function(_SetSubtitles value)? setSubtitles,
    TResult? Function(_SetSelectedSubtitle value)? setSelectedSubtitle,
    TResult? Function(_SetSubtitleText value)? setSubtitleText,
  }) {
    return setSubtitleText?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetQualities value)? setQualities,
    TResult Function(_SetSelectedQuality value)? setSelectedQuality,
    TResult Function(_SetSubtitles value)? setSubtitles,
    TResult Function(_SetSelectedSubtitle value)? setSelectedSubtitle,
    TResult Function(_SetSubtitleText value)? setSubtitleText,
    required TResult orElse(),
  }) {
    if (setSubtitleText != null) {
      return setSubtitleText(this);
    }
    return orElse();
  }
}

abstract class _SetSubtitleText implements VideoPlayerEvent {
  const factory _SetSubtitleText(final String? subtitleText) =
      _$SetSubtitleTextImpl;

  String? get subtitleText;
  @JsonKey(ignore: true)
  _$$SetSubtitleTextImplCopyWith<_$SetSubtitleTextImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$VideoPlayerState {
  List<HlsQualityModel> get qualities => throw _privateConstructorUsedError;
  HlsQualityModel? get selectedQuality => throw _privateConstructorUsedError;
  bool get isQualitySelectByUser => throw _privateConstructorUsedError;
  List<HlsSubtitleModel> get subtitles => throw _privateConstructorUsedError;
  HlsSubtitleModel? get selectedSubtitle => throw _privateConstructorUsedError;
  String? get subtitleText => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VideoPlayerStateCopyWith<VideoPlayerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoPlayerStateCopyWith<$Res> {
  factory $VideoPlayerStateCopyWith(
          VideoPlayerState value, $Res Function(VideoPlayerState) then) =
      _$VideoPlayerStateCopyWithImpl<$Res, VideoPlayerState>;
  @useResult
  $Res call(
      {List<HlsQualityModel> qualities,
      HlsQualityModel? selectedQuality,
      bool isQualitySelectByUser,
      List<HlsSubtitleModel> subtitles,
      HlsSubtitleModel? selectedSubtitle,
      String? subtitleText});
}

/// @nodoc
class _$VideoPlayerStateCopyWithImpl<$Res, $Val extends VideoPlayerState>
    implements $VideoPlayerStateCopyWith<$Res> {
  _$VideoPlayerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? qualities = null,
    Object? selectedQuality = freezed,
    Object? isQualitySelectByUser = null,
    Object? subtitles = null,
    Object? selectedSubtitle = freezed,
    Object? subtitleText = freezed,
  }) {
    return _then(_value.copyWith(
      qualities: null == qualities
          ? _value.qualities
          : qualities // ignore: cast_nullable_to_non_nullable
              as List<HlsQualityModel>,
      selectedQuality: freezed == selectedQuality
          ? _value.selectedQuality
          : selectedQuality // ignore: cast_nullable_to_non_nullable
              as HlsQualityModel?,
      isQualitySelectByUser: null == isQualitySelectByUser
          ? _value.isQualitySelectByUser
          : isQualitySelectByUser // ignore: cast_nullable_to_non_nullable
              as bool,
      subtitles: null == subtitles
          ? _value.subtitles
          : subtitles // ignore: cast_nullable_to_non_nullable
              as List<HlsSubtitleModel>,
      selectedSubtitle: freezed == selectedSubtitle
          ? _value.selectedSubtitle
          : selectedSubtitle // ignore: cast_nullable_to_non_nullable
              as HlsSubtitleModel?,
      subtitleText: freezed == subtitleText
          ? _value.subtitleText
          : subtitleText // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VideoPlayerStateImplCopyWith<$Res>
    implements $VideoPlayerStateCopyWith<$Res> {
  factory _$$VideoPlayerStateImplCopyWith(_$VideoPlayerStateImpl value,
          $Res Function(_$VideoPlayerStateImpl) then) =
      __$$VideoPlayerStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<HlsQualityModel> qualities,
      HlsQualityModel? selectedQuality,
      bool isQualitySelectByUser,
      List<HlsSubtitleModel> subtitles,
      HlsSubtitleModel? selectedSubtitle,
      String? subtitleText});
}

/// @nodoc
class __$$VideoPlayerStateImplCopyWithImpl<$Res>
    extends _$VideoPlayerStateCopyWithImpl<$Res, _$VideoPlayerStateImpl>
    implements _$$VideoPlayerStateImplCopyWith<$Res> {
  __$$VideoPlayerStateImplCopyWithImpl(_$VideoPlayerStateImpl _value,
      $Res Function(_$VideoPlayerStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? qualities = null,
    Object? selectedQuality = freezed,
    Object? isQualitySelectByUser = null,
    Object? subtitles = null,
    Object? selectedSubtitle = freezed,
    Object? subtitleText = freezed,
  }) {
    return _then(_$VideoPlayerStateImpl(
      qualities: null == qualities
          ? _value._qualities
          : qualities // ignore: cast_nullable_to_non_nullable
              as List<HlsQualityModel>,
      selectedQuality: freezed == selectedQuality
          ? _value.selectedQuality
          : selectedQuality // ignore: cast_nullable_to_non_nullable
              as HlsQualityModel?,
      isQualitySelectByUser: null == isQualitySelectByUser
          ? _value.isQualitySelectByUser
          : isQualitySelectByUser // ignore: cast_nullable_to_non_nullable
              as bool,
      subtitles: null == subtitles
          ? _value._subtitles
          : subtitles // ignore: cast_nullable_to_non_nullable
              as List<HlsSubtitleModel>,
      selectedSubtitle: freezed == selectedSubtitle
          ? _value.selectedSubtitle
          : selectedSubtitle // ignore: cast_nullable_to_non_nullable
              as HlsSubtitleModel?,
      subtitleText: freezed == subtitleText
          ? _value.subtitleText
          : subtitleText // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$VideoPlayerStateImpl implements _VideoPlayerState {
  const _$VideoPlayerStateImpl(
      {required final List<HlsQualityModel> qualities,
      this.selectedQuality,
      this.isQualitySelectByUser = false,
      required final List<HlsSubtitleModel> subtitles,
      this.selectedSubtitle,
      this.subtitleText})
      : _qualities = qualities,
        _subtitles = subtitles;

  final List<HlsQualityModel> _qualities;
  @override
  List<HlsQualityModel> get qualities {
    if (_qualities is EqualUnmodifiableListView) return _qualities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_qualities);
  }

  @override
  final HlsQualityModel? selectedQuality;
  @override
  @JsonKey()
  final bool isQualitySelectByUser;
  final List<HlsSubtitleModel> _subtitles;
  @override
  List<HlsSubtitleModel> get subtitles {
    if (_subtitles is EqualUnmodifiableListView) return _subtitles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_subtitles);
  }

  @override
  final HlsSubtitleModel? selectedSubtitle;
  @override
  final String? subtitleText;

  @override
  String toString() {
    return 'VideoPlayerState(qualities: $qualities, selectedQuality: $selectedQuality, isQualitySelectByUser: $isQualitySelectByUser, subtitles: $subtitles, selectedSubtitle: $selectedSubtitle, subtitleText: $subtitleText)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VideoPlayerStateImpl &&
            const DeepCollectionEquality()
                .equals(other._qualities, _qualities) &&
            (identical(other.selectedQuality, selectedQuality) ||
                other.selectedQuality == selectedQuality) &&
            (identical(other.isQualitySelectByUser, isQualitySelectByUser) ||
                other.isQualitySelectByUser == isQualitySelectByUser) &&
            const DeepCollectionEquality()
                .equals(other._subtitles, _subtitles) &&
            (identical(other.selectedSubtitle, selectedSubtitle) ||
                other.selectedSubtitle == selectedSubtitle) &&
            (identical(other.subtitleText, subtitleText) ||
                other.subtitleText == subtitleText));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_qualities),
      selectedQuality,
      isQualitySelectByUser,
      const DeepCollectionEquality().hash(_subtitles),
      selectedSubtitle,
      subtitleText);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VideoPlayerStateImplCopyWith<_$VideoPlayerStateImpl> get copyWith =>
      __$$VideoPlayerStateImplCopyWithImpl<_$VideoPlayerStateImpl>(
          this, _$identity);
}

abstract class _VideoPlayerState implements VideoPlayerState {
  const factory _VideoPlayerState(
      {required final List<HlsQualityModel> qualities,
      final HlsQualityModel? selectedQuality,
      final bool isQualitySelectByUser,
      required final List<HlsSubtitleModel> subtitles,
      final HlsSubtitleModel? selectedSubtitle,
      final String? subtitleText}) = _$VideoPlayerStateImpl;

  @override
  List<HlsQualityModel> get qualities;
  @override
  HlsQualityModel? get selectedQuality;
  @override
  bool get isQualitySelectByUser;
  @override
  List<HlsSubtitleModel> get subtitles;
  @override
  HlsSubtitleModel? get selectedSubtitle;
  @override
  String? get subtitleText;
  @override
  @JsonKey(ignore: true)
  _$$VideoPlayerStateImplCopyWith<_$VideoPlayerStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
