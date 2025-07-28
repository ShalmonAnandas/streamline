// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cinemeta_meta.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MetaImpl _$$MetaImplFromJson(Map<String, dynamic> json) => _$MetaImpl(
      awards: json['awards'] as String?,
      cast: (json['cast'] as List<dynamic>?)?.map((e) => e as String).toList(),
      country: json['country'] as String?,
      description: json['description'] as String?,
      director: json['director'],
      dvdRelease: json['dvdRelease'] as String?,
      genre:
          (json['genre'] as List<dynamic>?)?.map((e) => e as String).toList(),
      imdbRating: json['imdbRating'] as String?,
      imdbId: json['imdb_id'] as String?,
      name: json['name'] as String?,
      popularity: (json['popularity'] as num?)?.toDouble(),
      poster: json['poster'] as String?,
      released: json['released'] as String?,
      runtime: json['runtime'] as String?,
      status: json['status'] as String?,
      tvdbId: json['tvdb_id'] as String?,
      type: json['type'] as String?,
      writer:
          (json['writer'] as List<dynamic>?)?.map((e) => e as String).toList(),
      year: json['year'] as String?,
      background: json['background'] as String?,
      logo: json['logo'] as String?,
      popularities: json['popularities'] == null
          ? null
          : Popularities.fromJson(json['popularities'] as Map<String, dynamic>),
      moviedbId: (json['moviedb_id'] as num?)?.toInt(),
      slug: json['slug'] as String?,
      trailers: (json['trailers'] as List<dynamic>?)
          ?.map((e) => Trailer.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      genres:
          (json['genres'] as List<dynamic>?)?.map((e) => e as String).toList(),
      releaseInfo: json['releaseInfo'] as String?,
      videos: (json['videos'] as List<dynamic>?)
          ?.map((e) => Video.fromJson(e as Map<String, dynamic>))
          .toList(),
      trailerStreams: (json['trailerStreams'] as List<dynamic>?)
          ?.map((e) => TrailerStream.fromJson(e as Map<String, dynamic>))
          .toList(),
      links: (json['links'] as List<dynamic>?)
          ?.map((e) => Link.fromJson(e as Map<String, dynamic>))
          .toList(),
      behaviorHints: json['behaviorHints'] == null
          ? null
          : BehaviorHints.fromJson(
              json['behaviorHints'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MetaImplToJson(_$MetaImpl instance) =>
    <String, dynamic>{
      'awards': instance.awards,
      'cast': instance.cast,
      'country': instance.country,
      'description': instance.description,
      'director': instance.director,
      'dvdRelease': instance.dvdRelease,
      'genre': instance.genre,
      'imdbRating': instance.imdbRating,
      'imdb_id': instance.imdbId,
      'name': instance.name,
      'popularity': instance.popularity,
      'poster': instance.poster,
      'released': instance.released,
      'runtime': instance.runtime,
      'status': instance.status,
      'tvdb_id': instance.tvdbId,
      'type': instance.type,
      'writer': instance.writer,
      'year': instance.year,
      'background': instance.background,
      'logo': instance.logo,
      'popularities': instance.popularities,
      'moviedb_id': instance.moviedbId,
      'slug': instance.slug,
      'trailers': instance.trailers,
      'id': instance.id,
      'genres': instance.genres,
      'releaseInfo': instance.releaseInfo,
      'videos': instance.videos,
      'trailerStreams': instance.trailerStreams,
      'links': instance.links,
      'behaviorHints': instance.behaviorHints,
    };

_$BehaviorHintsImpl _$$BehaviorHintsImplFromJson(Map<String, dynamic> json) =>
    _$BehaviorHintsImpl(
      defaultVideoId: json['defaultVideoId'],
      hasScheduledVideos: json['hasScheduledVideos'] as bool?,
    );

Map<String, dynamic> _$$BehaviorHintsImplToJson(_$BehaviorHintsImpl instance) =>
    <String, dynamic>{
      'defaultVideoId': instance.defaultVideoId,
      'hasScheduledVideos': instance.hasScheduledVideos,
    };

_$LinkImpl _$$LinkImplFromJson(Map<String, dynamic> json) => _$LinkImpl(
      name: json['name'] as String?,
      category: json['category'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$$LinkImplToJson(_$LinkImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'category': instance.category,
      'url': instance.url,
    };

_$PopularitiesImpl _$$PopularitiesImplFromJson(Map<String, dynamic> json) =>
    _$PopularitiesImpl(
      pxsTest: (json['PXS_TEST'] as num?)?.toInt(),
      pxs: (json['PXS'] as num?)?.toInt(),
      scm: (json['SCM'] as num?)?.toDouble(),
      exmd: (json['EXMD'] as num?)?.toInt(),
      alliance: (json['ALLIANCE'] as num?)?.toInt(),
      ejd: (json['EJD'] as num?)?.toDouble(),
      moviedb: (json['moviedb'] as num?)?.toDouble(),
      trakt: (json['trakt'] as num?)?.toInt(),
      stremio: (json['stremio'] as num?)?.toDouble(),
      stremioLib: (json['stremio_lib'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$PopularitiesImplToJson(_$PopularitiesImpl instance) =>
    <String, dynamic>{
      'PXS_TEST': instance.pxsTest,
      'PXS': instance.pxs,
      'SCM': instance.scm,
      'EXMD': instance.exmd,
      'ALLIANCE': instance.alliance,
      'EJD': instance.ejd,
      'moviedb': instance.moviedb,
      'trakt': instance.trakt,
      'stremio': instance.stremio,
      'stremio_lib': instance.stremioLib,
    };

_$TrailerStreamImpl _$$TrailerStreamImplFromJson(Map<String, dynamic> json) =>
    _$TrailerStreamImpl(
      title: json['title'] as String?,
      ytId: json['ytId'] as String?,
    );

Map<String, dynamic> _$$TrailerStreamImplToJson(_$TrailerStreamImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'ytId': instance.ytId,
    };

_$TrailerImpl _$$TrailerImplFromJson(Map<String, dynamic> json) =>
    _$TrailerImpl(
      source: json['source'] as String?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$$TrailerImplToJson(_$TrailerImpl instance) =>
    <String, dynamic>{
      'source': instance.source,
      'type': instance.type,
    };

_$VideoImpl _$$VideoImplFromJson(Map<String, dynamic> json) => _$VideoImpl(
      name: json['name'] as String?,
      season: (json['season'] as num?)?.toInt(),
      number: (json['number'] as num?)?.toInt(),
      firstAired: json['firstAired'] as String?,
      tvdbId: (json['tvdb_id'] as num?)?.toInt(),
      rating: json['rating'] as String?,
      thumbnail: json['thumbnail'] as String?,
      id: json['id'] as String?,
      released: json['released'] as String?,
      episode: (json['episode'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$VideoImplToJson(_$VideoImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'season': instance.season,
      'number': instance.number,
      'firstAired': instance.firstAired,
      'tvdb_id': instance.tvdbId,
      'rating': instance.rating,
      'thumbnail': instance.thumbnail,
      'id': instance.id,
      'released': instance.released,
      'episode': instance.episode,
    };
