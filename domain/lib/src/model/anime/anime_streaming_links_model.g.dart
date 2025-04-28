// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'anime_streaming_links_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AnimeStreamingLinksModel _$AnimeStreamingLinksModelFromJson(
        Map<String, dynamic> json) =>
    AnimeStreamingLinksModel(
      tracks: (json['tracks'] as List<dynamic>?)
          ?.map((e) => Track.fromJson(e as Map<String, dynamic>))
          .toList(),
      intro: json['intro'] == null
          ? null
          : Tro.fromJson(json['intro'] as Map<String, dynamic>),
      outro: json['outro'] == null
          ? null
          : Tro.fromJson(json['outro'] as Map<String, dynamic>),
      sources: (json['sources'] as List<dynamic>?)
          ?.map((e) => Source.fromJson(e as Map<String, dynamic>))
          .toList(),
      anilistId: (json['anilistID'] as num?)?.toInt(),
      malId: (json['malID'] as num?)?.toInt(),
    );

Map<String, dynamic> _$AnimeStreamingLinksModelToJson(
        AnimeStreamingLinksModel instance) =>
    <String, dynamic>{
      'tracks': instance.tracks?.map((e) => e.toJson()).toList(),
      'intro': instance.intro?.toJson(),
      'outro': instance.outro?.toJson(),
      'sources': instance.sources?.map((e) => e.toJson()).toList(),
      'anilistID': instance.anilistId,
      'malID': instance.malId,
    };

Tro _$TroFromJson(Map<String, dynamic> json) => Tro(
      start: (json['start'] as num?)?.toInt(),
      end: (json['end'] as num?)?.toInt(),
    );

Map<String, dynamic> _$TroToJson(Tro instance) => <String, dynamic>{
      'start': instance.start,
      'end': instance.end,
    };

Source _$SourceFromJson(Map<String, dynamic> json) => Source(
      url: json['url'] as String?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$SourceToJson(Source instance) => <String, dynamic>{
      'url': instance.url,
      'type': instance.type,
    };

Track _$TrackFromJson(Map<String, dynamic> json) => Track(
      file: json['file'] as String?,
      label: json['label'] as String?,
      kind: json['kind'] as String?,
      trackDefault: json['trackDefault'] as bool?,
    );

Map<String, dynamic> _$TrackToJson(Track instance) => <String, dynamic>{
      'file': instance.file,
      'label': instance.label,
      'kind': instance.kind,
      'trackDefault': instance.trackDefault,
    };
