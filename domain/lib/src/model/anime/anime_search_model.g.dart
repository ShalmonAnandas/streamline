// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'anime_search_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AnimeSearchModel _$AnimeSearchModelFromJson(Map<String, dynamic> json) =>
    AnimeSearchModel(
      animes: (json['animes'] as List<dynamic>?)
          ?.map((e) => SearchAnime.fromJson(e as Map<String, dynamic>))
          .toList(),
      mostPopularAnimes: (json['mostPopularAnimes'] as List<dynamic>?)
          ?.map((e) => MostPopularAnime.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AnimeSearchModelToJson(AnimeSearchModel instance) =>
    <String, dynamic>{
      'animes': instance.animes?.map((e) => e.toJson()).toList(),
      'mostPopularAnimes':
          instance.mostPopularAnimes?.map((e) => e.toJson()).toList(),
    };

SearchAnime _$SearchAnimeFromJson(Map<String, dynamic> json) => SearchAnime(
      id: json['id'] as String?,
      name: json['name'] as String?,
      img: json['img'] as String?,
      episodes: json['episodes'] == null
          ? null
          : SearchEpisodes.fromJson(json['episodes'] as Map<String, dynamic>),
      duration: json['duration'] as String?,
      rated: json['rated'] as bool?,
    );

Map<String, dynamic> _$SearchAnimeToJson(SearchAnime instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'img': instance.img,
      'episodes': instance.episodes?.toJson(),
      'duration': instance.duration,
      'rated': instance.rated,
    };

SearchEpisodes _$SearchEpisodesFromJson(Map<String, dynamic> json) =>
    SearchEpisodes(
      eps: (json['eps'] as num?)?.toInt(),
      sub: (json['sub'] as num?)?.toInt(),
      dub: (json['dub'] as num?)?.toInt(),
    );

Map<String, dynamic> _$SearchEpisodesToJson(SearchEpisodes instance) =>
    <String, dynamic>{
      'eps': instance.eps,
      'sub': instance.sub,
      'dub': instance.dub,
    };

MostPopularAnime _$MostPopularAnimeFromJson(Map<String, dynamic> json) =>
    MostPopularAnime(
      id: json['id'] as String?,
      name: json['name'] as String?,
      category: json['category'] as String?,
      img: json['img'] as String?,
      episodes: json['episodes'] == null
          ? null
          : SearchEpisodes.fromJson(json['episodes'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MostPopularAnimeToJson(MostPopularAnime instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'category': instance.category,
      'img': instance.img,
      'episodes': instance.episodes?.toJson(),
    };
