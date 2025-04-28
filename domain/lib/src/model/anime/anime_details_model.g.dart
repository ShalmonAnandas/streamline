// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'anime_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AnimeDetailsModel _$AnimeDetailsModelFromJson(Map<String, dynamic> json) =>
    AnimeDetailsModel(
      info: json['info'] == null
          ? null
          : Info.fromJson(json['info'] as Map<String, dynamic>),
      moreInfo: json['moreInfo'] == null
          ? null
          : MoreInfo.fromJson(json['moreInfo'] as Map<String, dynamic>),
      seasons: (json['seasons'] as List<dynamic>?)
          ?.map((e) => AnimeSeason.fromJson(e as Map<String, dynamic>))
          .toList(),
      relatedAnimes: (json['relatedAnimes'] as List<dynamic>?)
          ?.map((e) => Anime.fromJson(e as Map<String, dynamic>))
          .toList(),
      recommendedAnimes: (json['recommendedAnimes'] as List<dynamic>?)
          ?.map((e) => RecommendedAnime.fromJson(e as Map<String, dynamic>))
          .toList(),
      mostPopularAnimes: (json['mostPopularAnimes'] as List<dynamic>?)
          ?.map((e) => Anime.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AnimeDetailsModelToJson(AnimeDetailsModel instance) =>
    <String, dynamic>{
      'info': instance.info?.toJson(),
      'moreInfo': instance.moreInfo?.toJson(),
      'seasons': instance.seasons?.map((e) => e.toJson()).toList(),
      'relatedAnimes': instance.relatedAnimes?.map((e) => e.toJson()).toList(),
      'recommendedAnimes':
          instance.recommendedAnimes?.map((e) => e.toJson()).toList(),
      'mostPopularAnimes':
          instance.mostPopularAnimes?.map((e) => e.toJson()).toList(),
    };

Info _$InfoFromJson(Map<String, dynamic> json) => Info(
      id: json['id'] as String?,
      malId: (json['mal_id'] as num?)?.toInt(),
      animeId: (json['anime_id'] as num?)?.toInt(),
      alId: (json['al_id'] as num?)?.toInt(),
      name: json['name'] as String?,
      img: json['img'] as String?,
      rating: json['rating'] as String?,
      episodes: json['episodes'] == null
          ? null
          : Episodes.fromJson(json['episodes'] as Map<String, dynamic>),
      category: json['category'] as String?,
      quality: json['quality'] as String?,
      duration: json['duration'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$InfoToJson(Info instance) => <String, dynamic>{
      'id': instance.id,
      'mal_id': instance.malId,
      'anime_id': instance.animeId,
      'al_id': instance.alId,
      'name': instance.name,
      'img': instance.img,
      'rating': instance.rating,
      'episodes': instance.episodes?.toJson(),
      'category': instance.category,
      'quality': instance.quality,
      'duration': instance.duration,
      'description': instance.description,
    };

Episodes _$EpisodesFromJson(Map<String, dynamic> json) => Episodes(
      eps: (json['eps'] as num?)?.toInt(),
      sub: (json['sub'] as num?)?.toInt(),
      dub: (json['dub'] as num?)?.toInt(),
    );

Map<String, dynamic> _$EpisodesToJson(Episodes instance) => <String, dynamic>{
      'eps': instance.eps,
      'sub': instance.sub,
      'dub': instance.dub,
    };

MoreInfo _$MoreInfoFromJson(Map<String, dynamic> json) => MoreInfo(
      japanese: json['Japanese:'] as String?,
      synonyms: json['Synonyms:'] as String?,
      aired: json['Aired:'] as String?,
      premiered: json['Premiered:'] as String?,
      duration: json['Duration:'] as String?,
      status: json['Status:'] as String?,
      malScore: json['MAL Score:'] as String?,
      studios: json['Studios:'] as String?,
      genres:
          (json['Genres'] as List<dynamic>?)?.map((e) => e as String).toList(),
      producers: (json['Producers'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$MoreInfoToJson(MoreInfo instance) => <String, dynamic>{
      'Japanese:': instance.japanese,
      'Synonyms:': instance.synonyms,
      'Aired:': instance.aired,
      'Premiered:': instance.premiered,
      'Duration:': instance.duration,
      'Status:': instance.status,
      'MAL Score:': instance.malScore,
      'Studios:': instance.studios,
      'Genres': instance.genres,
      'Producers': instance.producers,
    };

Anime _$AnimeFromJson(Map<String, dynamic> json) => Anime(
      id: json['id'] as String?,
      name: json['name'] as String?,
      category: json['category'] as String?,
      img: json['img'] as String?,
      episodes: json['episodes'] == null
          ? null
          : Episodes.fromJson(json['episodes'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AnimeToJson(Anime instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'category': instance.category,
      'img': instance.img,
      'episodes': instance.episodes?.toJson(),
    };

RecommendedAnime _$RecommendedAnimeFromJson(Map<String, dynamic> json) =>
    RecommendedAnime(
      id: json['id'] as String?,
      name: json['name'] as String?,
      img: json['img'] as String?,
      episodes: json['episodes'] == null
          ? null
          : Episodes.fromJson(json['episodes'] as Map<String, dynamic>),
      duration: json['duration'] as String?,
      rated: json['rated'] as bool?,
    );

Map<String, dynamic> _$RecommendedAnimeToJson(RecommendedAnime instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'img': instance.img,
      'episodes': instance.episodes?.toJson(),
      'duration': instance.duration,
      'rated': instance.rated,
    };

AnimeSeason _$AnimeSeasonFromJson(Map<String, dynamic> json) => AnimeSeason(
      id: json['id'] as String?,
      name: json['name'] as String?,
      seasonTitle: json['seasonTitle'] as String?,
      img: json['img'] as String?,
      isCurrent: json['isCurrent'] as bool?,
    );

Map<String, dynamic> _$AnimeSeasonToJson(AnimeSeason instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'seasonTitle': instance.seasonTitle,
      'img': instance.img,
      'isCurrent': instance.isCurrent,
    };
