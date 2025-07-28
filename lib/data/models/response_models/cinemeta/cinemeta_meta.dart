import 'package:freezed_annotation/freezed_annotation.dart';

part 'cinemeta_meta.freezed.dart';
part 'cinemeta_meta.g.dart';

@freezed
class Meta with _$Meta {
  const factory Meta({
    @JsonKey(name: "awards") String? awards,
    @JsonKey(name: "cast") List<String>? cast,
    @JsonKey(name: "country") String? country,
    @JsonKey(name: "description") String? description,
    @JsonKey(name: "director") dynamic director,
    @JsonKey(name: "dvdRelease") String? dvdRelease,
    @JsonKey(name: "genre") List<String>? genre,
    @JsonKey(name: "imdbRating") String? imdbRating,
    @JsonKey(name: "imdb_id") String? imdbId,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "popularity") double? popularity,
    @JsonKey(name: "poster") String? poster,
    @JsonKey(name: "released") String? released,
    @JsonKey(name: "runtime") String? runtime,
    @JsonKey(name: "status") String? status,
    @JsonKey(name: "tvdb_id") String? tvdbId,
    @JsonKey(name: "type") String? type,
    @JsonKey(name: "writer") List<String>? writer,
    @JsonKey(name: "year") String? year,
    @JsonKey(name: "background") String? background,
    @JsonKey(name: "logo") String? logo,
    @JsonKey(name: "popularities") Popularities? popularities,
    @JsonKey(name: "moviedb_id") int? moviedbId,
    @JsonKey(name: "slug") String? slug,
    @JsonKey(name: "trailers") List<Trailer>? trailers,
    @JsonKey(name: "id") String? id,
    @JsonKey(name: "genres") List<String>? genres,
    @JsonKey(name: "releaseInfo") String? releaseInfo,
    @JsonKey(name: "videos") List<Video>? videos,
    @JsonKey(name: "trailerStreams") List<TrailerStream>? trailerStreams,
    @JsonKey(name: "links") List<Link>? links,
    @JsonKey(name: "behaviorHints") BehaviorHints? behaviorHints,
  }) = _Meta;

  factory Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);
}

@freezed
class BehaviorHints with _$BehaviorHints {
  const factory BehaviorHints({
    @JsonKey(name: "defaultVideoId") dynamic defaultVideoId,
    @JsonKey(name: "hasScheduledVideos") bool? hasScheduledVideos,
  }) = _BehaviorHints;

  factory BehaviorHints.fromJson(Map<String, dynamic> json) =>
      _$BehaviorHintsFromJson(json);
}

@freezed
class Link with _$Link {
  const factory Link({
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "category") String? category,
    @JsonKey(name: "url") String? url,
  }) = _Link;

  factory Link.fromJson(Map<String, dynamic> json) => _$LinkFromJson(json);
}

@freezed
class Popularities with _$Popularities {
  const factory Popularities({
    @JsonKey(name: "PXS_TEST") int? pxsTest,
    @JsonKey(name: "PXS") int? pxs,
    @JsonKey(name: "SCM") double? scm,
    @JsonKey(name: "EXMD") int? exmd,
    @JsonKey(name: "ALLIANCE") int? alliance,
    @JsonKey(name: "EJD") double? ejd,
    @JsonKey(name: "moviedb") double? moviedb,
    @JsonKey(name: "trakt") int? trakt,
    @JsonKey(name: "stremio") double? stremio,
    @JsonKey(name: "stremio_lib") int? stremioLib,
  }) = _Popularities;

  factory Popularities.fromJson(Map<String, dynamic> json) =>
      _$PopularitiesFromJson(json);
}

@freezed
class TrailerStream with _$TrailerStream {
  const factory TrailerStream({
    @JsonKey(name: "title") String? title,
    @JsonKey(name: "ytId") String? ytId,
  }) = _TrailerStream;

  factory TrailerStream.fromJson(Map<String, dynamic> json) =>
      _$TrailerStreamFromJson(json);
}

@freezed
class Trailer with _$Trailer {
  const factory Trailer({
    @JsonKey(name: "source") String? source,
    @JsonKey(name: "type") String? type,
  }) = _Trailer;

  factory Trailer.fromJson(Map<String, dynamic> json) =>
      _$TrailerFromJson(json);
}

@freezed
class Video with _$Video {
  const factory Video({
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "season") int? season,
    @JsonKey(name: "number") int? number,
    @JsonKey(name: "firstAired") String? firstAired,
    @JsonKey(name: "tvdb_id") int? tvdbId,
    @JsonKey(name: "rating") String? rating,
    @JsonKey(name: "thumbnail") String? thumbnail,
    @JsonKey(name: "id") String? id,
    @JsonKey(name: "released") String? released,
    @JsonKey(name: "episode") int? episode,
  }) = _Video;

  factory Video.fromJson(Map<String, dynamic> json) => _$VideoFromJson(json);
}
