import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'anime_streaming_links_model.g.dart';

@JsonSerializable(explicitToJson: true)
class AnimeStreamingLinksModel extends Equatable {
  AnimeStreamingLinksModel({
    required this.tracks,
    required this.intro,
    required this.outro,
    required this.sources,
    required this.anilistId,
    required this.malId,
  });

  final List<Track>? tracks;
  final Tro? intro;
  final Tro? outro;
  final List<Source>? sources;

  @JsonKey(name: 'anilistID')
  final int? anilistId;

  @JsonKey(name: 'malID')
  final int? malId;

  AnimeStreamingLinksModel copyWith({
    List<Track>? tracks,
    Tro? intro,
    Tro? outro,
    List<Source>? sources,
    int? anilistId,
    int? malId,
  }) {
    return AnimeStreamingLinksModel(
      tracks: tracks ?? this.tracks,
      intro: intro ?? this.intro,
      outro: outro ?? this.outro,
      sources: sources ?? this.sources,
      anilistId: anilistId ?? this.anilistId,
      malId: malId ?? this.malId,
    );
  }

  factory AnimeStreamingLinksModel.fromJson(Map<String, dynamic> json) =>
      _$AnimeStreamingLinksModelFromJson(json);

  Map<String, dynamic> toJson() => _$AnimeStreamingLinksModelToJson(this);

  @override
  String toString() {
    return "$tracks, $intro, $outro, $sources, $anilistId, $malId, ";
  }

  @override
  List<Object?> get props => [
        tracks,
        intro,
        outro,
        sources,
        anilistId,
        malId,
      ];
}

@JsonSerializable(explicitToJson: true)
class Tro extends Equatable {
  Tro({
    required this.start,
    required this.end,
  });

  final int? start;
  final int? end;

  Tro copyWith({
    int? start,
    int? end,
  }) {
    return Tro(
      start: start ?? this.start,
      end: end ?? this.end,
    );
  }

  factory Tro.fromJson(Map<String, dynamic> json) => _$TroFromJson(json);

  Map<String, dynamic> toJson() => _$TroToJson(this);

  @override
  String toString() {
    return "$start, $end, ";
  }

  @override
  List<Object?> get props => [
        start,
        end,
      ];
}

@JsonSerializable(explicitToJson: true)
class Source extends Equatable {
  Source({
    required this.url,
    required this.type,
  });

  final String? url;
  final String? type;

  Source copyWith({
    String? url,
    String? type,
  }) {
    return Source(
      url: url ?? this.url,
      type: type ?? this.type,
    );
  }

  factory Source.fromJson(Map<String, dynamic> json) => _$SourceFromJson(json);

  Map<String, dynamic> toJson() => _$SourceToJson(this);

  @override
  String toString() {
    return "$url, $type, ";
  }

  @override
  List<Object?> get props => [
        url,
        type,
      ];
}

@JsonSerializable(explicitToJson: true)
class Track extends Equatable {
  Track({
    required this.file,
    required this.label,
    required this.kind,
    required this.trackDefault,
  });

  final String? file;
  final String? label;
  final String? kind;
  final bool? trackDefault;

  Track copyWith({
    String? file,
    String? label,
    String? kind,
    bool? trackDefault,
  }) {
    return Track(
      file: file ?? this.file,
      label: label ?? this.label,
      kind: kind ?? this.kind,
      trackDefault: trackDefault ?? this.trackDefault,
    );
  }

  factory Track.fromJson(Map<String, dynamic> json) => _$TrackFromJson(json);

  Map<String, dynamic> toJson() => _$TrackToJson(this);

  @override
  String toString() {
    return "$file, $label, $kind, $trackDefault, ";
  }

  @override
  List<Object?> get props => [
        file,
        label,
        kind,
        trackDefault,
      ];
}
