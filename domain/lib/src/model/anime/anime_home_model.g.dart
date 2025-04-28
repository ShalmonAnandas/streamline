// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'anime_home_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AnimeHomeModel _$AnimeHomeModelFromJson(Map<String, dynamic> json) =>
    AnimeHomeModel(
      spotLightAnimes: (json['spotLightAnimes'] as List<dynamic>?)
          ?.map((e) => SpotLightAnime.fromJson(e as Map<String, dynamic>))
          .toList(),
      trendingAnimes: (json['trendingAnimes'] as List<dynamic>?)
          ?.map((e) => TrendingAnime.fromJson(e as Map<String, dynamic>))
          .toList(),
      latestEpisodes: (json['latestEpisodes'] as List<dynamic>?)
          ?.map((e) => LatestEpisode.fromJson(e as Map<String, dynamic>))
          .toList(),
      top10Animes: json['top10Animes'] == null
          ? null
          : Top10Animes.fromJson(json['top10Animes'] as Map<String, dynamic>),
      featuredAnimes: json['featuredAnimes'] == null
          ? null
          : FeaturedAnimes.fromJson(
              json['featuredAnimes'] as Map<String, dynamic>),
      topUpcomingAnimes: (json['topUpcomingAnimes'] as List<dynamic>?)
          ?.map((e) => LatestEpisode.fromJson(e as Map<String, dynamic>))
          .toList(),
      genres:
          (json['genres'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$AnimeHomeModelToJson(AnimeHomeModel instance) =>
    <String, dynamic>{
      'spotLightAnimes':
          instance.spotLightAnimes?.map((e) => e.toJson()).toList(),
      'trendingAnimes':
          instance.trendingAnimes?.map((e) => e.toJson()).toList(),
      'latestEpisodes':
          instance.latestEpisodes?.map((e) => e.toJson()).toList(),
      'top10Animes': instance.top10Animes?.toJson(),
      'featuredAnimes': instance.featuredAnimes?.toJson(),
      'topUpcomingAnimes':
          instance.topUpcomingAnimes?.map((e) => e.toJson()).toList(),
      'genres': instance.genres,
    };

FeaturedAnimes _$FeaturedAnimesFromJson(Map<String, dynamic> json) =>
    FeaturedAnimes(
      topAiringAnimes: (json['topAiringAnimes'] as List<dynamic>?)
          ?.map((e) => TrendingAnime.fromJson(e as Map<String, dynamic>))
          .toList(),
      mostPopularAnimes: (json['mostPopularAnimes'] as List<dynamic>?)
          ?.map((e) => TrendingAnime.fromJson(e as Map<String, dynamic>))
          .toList(),
      mostFavoriteAnimes: (json['mostFavoriteAnimes'] as List<dynamic>?)
          ?.map((e) => TrendingAnime.fromJson(e as Map<String, dynamic>))
          .toList(),
      latestCompletedAnimes: (json['latestCompletedAnimes'] as List<dynamic>?)
          ?.map((e) => TrendingAnime.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$FeaturedAnimesToJson(FeaturedAnimes instance) =>
    <String, dynamic>{
      'topAiringAnimes':
          instance.topAiringAnimes?.map((e) => e.toJson()).toList(),
      'mostPopularAnimes':
          instance.mostPopularAnimes?.map((e) => e.toJson()).toList(),
      'mostFavoriteAnimes':
          instance.mostFavoriteAnimes?.map((e) => e.toJson()).toList(),
      'latestCompletedAnimes':
          instance.latestCompletedAnimes?.map((e) => e.toJson()).toList(),
    };

TrendingAnime _$TrendingAnimeFromJson(Map<String, dynamic> json) =>
    TrendingAnime(
      id: json['id'] as String?,
      name: json['name'] as String?,
      img: json['img'] as String?,
    );

Map<String, dynamic> _$TrendingAnimeToJson(TrendingAnime instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'img': instance.img,
    };

LatestEpisode _$LatestEpisodeFromJson(Map<String, dynamic> json) =>
    LatestEpisode(
      id: json['id'] as String?,
      name: json['name'] as String?,
      img: json['img'] as String?,
      episodes: json['episodes'] == null
          ? null
          : TrendingEpisodes.fromJson(json['episodes'] as Map<String, dynamic>),
      duration: json['duration'] as String?,
      rated: json['rated'] as bool?,
    );

Map<String, dynamic> _$LatestEpisodeToJson(LatestEpisode instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'img': instance.img,
      'episodes': instance.episodes?.toJson(),
      'duration': instance.duration,
      'rated': instance.rated,
    };

TrendingEpisodes _$TrendingEpisodesFromJson(Map<String, dynamic> json) =>
    TrendingEpisodes(
      eps: (json['eps'] as num?)?.toInt(),
      sub: (json['sub'] as num?)?.toInt(),
      dub: (json['dub'] as num?)?.toInt(),
    );

Map<String, dynamic> _$TrendingEpisodesToJson(TrendingEpisodes instance) =>
    <String, dynamic>{
      'eps': instance.eps,
      'sub': instance.sub,
      'dub': instance.dub,
    };

SpotLightAnime _$SpotLightAnimeFromJson(Map<String, dynamic> json) =>
    SpotLightAnime(
      id: json['id'] as String?,
      name: json['name'] as String?,
      rank: (json['rank'] as num?)?.toInt(),
      img: json['img'] as String?,
      episodes: json['episodes'] == null
          ? null
          : TrendingEpisodes.fromJson(json['episodes'] as Map<String, dynamic>),
      duration: json['duration'] as String?,
      quality: json['quality'] as String?,
      category: json['category'] as String?,
      releasedDay: json['releasedDay'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$SpotLightAnimeToJson(SpotLightAnime instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'rank': instance.rank,
      'img': instance.img,
      'episodes': instance.episodes?.toJson(),
      'duration': instance.duration,
      'quality': instance.quality,
      'category': instance.category,
      'releasedDay': instance.releasedDay,
      'description': instance.description,
    };

Top10Animes _$Top10AnimesFromJson(Map<String, dynamic> json) => Top10Animes(
      day: (json['day'] as List<dynamic>?)
          ?.map((e) => Day.fromJson(e as Map<String, dynamic>))
          .toList(),
      week: (json['week'] as List<dynamic>?)
          ?.map((e) => Day.fromJson(e as Map<String, dynamic>))
          .toList(),
      month: (json['month'] as List<dynamic>?)
          ?.map((e) => Day.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$Top10AnimesToJson(Top10Animes instance) =>
    <String, dynamic>{
      'day': instance.day?.map((e) => e.toJson()).toList(),
      'week': instance.week?.map((e) => e.toJson()).toList(),
      'month': instance.month?.map((e) => e.toJson()).toList(),
    };

Day _$DayFromJson(Map<String, dynamic> json) => Day(
      id: json['id'] as String?,
      name: json['name'] as String?,
      rank: (json['rank'] as num?)?.toInt(),
      img: json['img'] as String?,
      episodes: json['episodes'] == null
          ? null
          : TrendingEpisodes.fromJson(json['episodes'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DayToJson(Day instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'rank': instance.rank,
      'img': instance.img,
      'episodes': instance.episodes?.toJson(),
    };
