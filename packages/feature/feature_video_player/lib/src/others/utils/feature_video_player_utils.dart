import 'dart:convert';
import 'dart:developer';
import 'package:feature_video_player/src/data/model/hls_subtitle_model.dart';
import 'package:feature_video_player/src/data/model/hls_video_model.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_hls_parser/flutter_hls_parser.dart';

class FeatureVideoPlayerUtils {
  static final RegExp regExp = RegExp(
    r"#EXT-X-STREAM-INF:(?:.*,RESOLUTION=(\d+x\d+))?,?(.*)\r?\n(.*)",
    caseSensitive: false,
    multiLine: true,
  );

  static Future<String?> getHlsContent(String videoUrl) async {
    try {
      http.Response response = await http.get(Uri.parse(videoUrl));
      final hlsContent = utf8.decode(response.bodyBytes);
      log("--- HLS Data ----"
          "\n"
          "$hlsContent"
          "\n"
          "-------------------------"
          "\n");
      return hlsContent;
    } on Exception catch (e) {
      log("failed getHlsContent: $e");
      return null;
    }
  }

  // reference [https://github.com/apieceofcode1801/flutter_video_player]
  // reference [https://github.com/flutter/flutter/issues/58854]
  /// get quality of videos from url video
  static Future<List<HlsQualityModel>> getQualitiesOfVideo(
    String videoUrl,
  ) async {
    try {
      List<HlsQualityModel> videos = [];
      String? hlsContent;
      http.Response response = await http.get(Uri.parse(videoUrl));
      if (response.statusCode == 200) {
        hlsContent = utf8.decode(response.bodyBytes);
      }
      log("--- HLS Data ----"
          "\n"
          "$hlsContent"
          "\n"
          "-------------------------"
          "\n");
      if (hlsContent == null) return [];

      List<RegExpMatch> matches = regExp.allMatches(hlsContent).toList();
      for (RegExpMatch regExpMatch in matches) {
        String quality = (regExpMatch.group(1)).toString();
        String sourceURL = (regExpMatch.group(3)).toString();
        final netRegex = RegExp(r'^(http|https):\/\/([\w.]+\/?)\S*');
        final netRegex2 = RegExp(r'(.*)\r?\/');
        final isNetwork = netRegex.hasMatch(sourceURL);
        final match = netRegex2.firstMatch(videoUrl);
        String url;
        if (isNetwork) {
          url = sourceURL;
        } else {
          final dataURL = match!.group(0);
          url = "$dataURL$sourceURL";
        }
        videos.add(HlsQualityModel(name: quality, url: url));
      }
      return videos;
    } on Exception catch (e) {
      log("failed getQualitiesOfVideo: $e");
      return <HlsQualityModel>[];
    }
  }

  // reference [https://github.com/apieceofcode1801/flutter_video_player]
  // reference [https://github.com/flutter/flutter/issues/58854]
  /// get quality of videos from url video with hlsContent
  static Future<List<HlsQualityModel>> getQualitiesOfVideoWithHlsContent(
    String videoUrl, {
    required String hlsContent,
  }) async {
    try {
      List<HlsQualityModel> videos = [];

      List<RegExpMatch> matches = regExp.allMatches(hlsContent).toList();
      for (RegExpMatch regExpMatch in matches) {
        String quality = (regExpMatch.group(1)).toString();
        String sourceURL = (regExpMatch.group(3)).toString();
        final netRegex = RegExp(r'^(http|https):\/\/([\w.]+\/?)\S*');
        final netRegex2 = RegExp(r'(.*)\r?\/');
        final isNetwork = netRegex.hasMatch(sourceURL);
        final match = netRegex2.firstMatch(videoUrl);
        String url;
        if (isNetwork) {
          url = sourceURL;
        } else {
          final dataURL = match!.group(0);
          url = "$dataURL$sourceURL";
        }
        videos.add(HlsQualityModel(name: quality, url: url));
      }
      return videos;
    } on Exception catch (e) {
      log("failed getQualitiesOfVideoWithHlsContent: $e");
      return <HlsQualityModel>[];
    }
  }

  static Future<List<HlsSubtitleModel>> getSubtitle(String videoUrl) async {
    try {
      final subtitles = <HlsSubtitleModel>[];
      String? hlsContent;
      http.Response response = await http.get(Uri.parse(videoUrl));
      if (response.statusCode == 200) {
        hlsContent = utf8.decode(response.bodyBytes);
      }
      log("--- HLS Data ----"
          "\n"
          "$hlsContent"
          "\n"
          "-------------------------"
          "\n");
      if (hlsContent == null) return [];
      final playlist = await HlsPlaylistParser.create()
          .parseString(Uri.parse(videoUrl), hlsContent);
      if (playlist is! HlsMasterPlaylist) return [];
      final masterPlaylist = playlist;
      for (final subtitle in masterPlaylist.subtitles) {
        final language = subtitle.name;
        final urlSubtitle = subtitle.url;
        if (language != null && urlSubtitle != null) {
          subtitles.add(
            HlsSubtitleModel(
              language: subtitle.name ?? "",
              url:
                  "${urlSubtitle.scheme}://${urlSubtitle.host}${urlSubtitle.path.replaceAll(".m3u8", ".vtt")}",
            ),
          );
        }
      }
      return subtitles;
    } on Exception catch (e) {
      log("failed getSubtitle $e");
      return [];
    }
  }

  static Future<List<HlsSubtitleModel>> getSubtitleWithHlsContent(String videoUrl, {
    required String hlsContent,
  }) async {
    try {
      final subtitles = <HlsSubtitleModel>[];
      final playlist = await HlsPlaylistParser.create()
          .parseString(Uri.parse(videoUrl), hlsContent);
      if (playlist is! HlsMasterPlaylist) return [];
      final masterPlaylist = playlist;
      for (final subtitle in masterPlaylist.subtitles) {
        final language = subtitle.name;
        final urlSubtitle = subtitle.url;
        if (language != null && urlSubtitle != null) {
          subtitles.add(
            HlsSubtitleModel(
              language: subtitle.name ?? "",
              url:
              "${urlSubtitle.scheme}://${urlSubtitle.host}${urlSubtitle.path.replaceAll(".m3u8", ".vtt")}",
            ),
          );
        }
      }
      return subtitles;
    } on Exception catch (e) {
      log("failed getSubtitleWithHlsContent $e");
      return [];
    }
  }
}
