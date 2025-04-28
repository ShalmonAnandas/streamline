// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'anime_episode_server_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AnimeEpisodeServerModel _$AnimeEpisodeServerModelFromJson(
        Map<String, dynamic> json) =>
    AnimeEpisodeServerModel(
      episodeId: json['episodeId'] as String?,
      episodeNo: (json['episodeNo'] as num?)?.toInt(),
      sub: (json['sub'] as List<dynamic>?)
          ?.map((e) => Dub.fromJson(e as Map<String, dynamic>))
          .toList(),
      dub: (json['dub'] as List<dynamic>?)
          ?.map((e) => Dub.fromJson(e as Map<String, dynamic>))
          .toList(),
      raw: json['raw'] as List<dynamic>?,
    );

Map<String, dynamic> _$AnimeEpisodeServerModelToJson(
        AnimeEpisodeServerModel instance) =>
    <String, dynamic>{
      'episodeId': instance.episodeId,
      'episodeNo': instance.episodeNo,
      'sub': instance.sub?.map((e) => e.toJson()).toList(),
      'dub': instance.dub?.map((e) => e.toJson()).toList(),
      'raw': instance.raw,
    };

Dub _$DubFromJson(Map<String, dynamic> json) => Dub(
      serverName: json['serverName'] as String?,
      serverId: (json['serverId'] as num?)?.toInt(),
    );

Map<String, dynamic> _$DubToJson(Dub instance) => <String, dynamic>{
      'serverName': instance.serverName,
      'serverId': instance.serverId,
    };
