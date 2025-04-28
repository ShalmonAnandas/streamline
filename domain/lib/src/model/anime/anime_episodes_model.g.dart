// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'anime_episodes_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AnimeEpisodesModel _$AnimeEpisodesModelFromJson(Map<String, dynamic> json) =>
    AnimeEpisodesModel(
      totalEpisodes: (json['totalEpisodes'] as num?)?.toInt(),
      episodes: (json['episodes'] as List<dynamic>?)
          ?.map((e) => AnimeEpisode.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AnimeEpisodesModelToJson(AnimeEpisodesModel instance) =>
    <String, dynamic>{
      'totalEpisodes': instance.totalEpisodes,
      'episodes': instance.episodes?.map((e) => e.toJson()).toList(),
    };

AnimeEpisode _$AnimeEpisodeFromJson(Map<String, dynamic> json) => AnimeEpisode(
      name: json['name'] as String?,
      episodeNo: (json['episodeNo'] as num?)?.toInt(),
      episodeId: json['episodeId'] as String?,
      filler: json['filler'] as bool?,
    );

Map<String, dynamic> _$AnimeEpisodeToJson(AnimeEpisode instance) =>
    <String, dynamic>{
      'name': instance.name,
      'episodeNo': instance.episodeNo,
      'episodeId': instance.episodeId,
      'filler': instance.filler,
    };
