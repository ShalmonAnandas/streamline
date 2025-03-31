import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'media_details_model.g.dart';

@JsonSerializable(explicitToJson: true)
class MediaDetailsModel extends Equatable {
  MediaDetailsModel({
    required this.adult,
    required this.backdropPath,
    required this.belongsToCollection,
    required this.budget,
    required this.genres,
    required this.homepage,
    required this.id,
    required this.imdbId,
    required this.originCountry,
    required this.originalLanguage,
    required this.originalTitle,
    required this.overview,
    required this.popularity,
    required this.posterPath,
    required this.productionCompanies,
    required this.productionCountries,
    required this.releaseDate,
    required this.revenue,
    required this.runtime,
    required this.spokenLanguages,
    required this.status,
    required this.tagline,
    required this.title,
    required this.video,
    required this.voteAverage,
    required this.voteCount,
    required this.externalIds,
    required this.createdBy,
    required this.episodeRunTime,
    required this.firstAirDate,
    required this.inProduction,
    required this.languages,
    required this.lastAirDate,
    required this.lastEpisodeToAir,
    required this.name,
    required this.nextEpisodeToAir,
    required this.networks,
    required this.numberOfEpisodes,
    required this.numberOfSeasons,
    required this.originalName,
    required this.seasons,
    required this.type,
  });

  final bool? adult;

  @JsonKey(name: 'backdrop_path')
  final String? backdropPath;

  @JsonKey(name: 'belongs_to_collection')
  final dynamic belongsToCollection;
  final int? budget;
  final List<Genre>? genres;
  final String? homepage;
  final int? id;

  @JsonKey(name: 'imdb_id')
  final String? imdbId;

  @JsonKey(name: 'origin_country')
  final List<String>? originCountry;

  @JsonKey(name: 'original_language')
  final String? originalLanguage;

  @JsonKey(name: 'original_title')
  final String? originalTitle;
  final String? overview;
  final double? popularity;

  @JsonKey(name: 'poster_path')
  final String? posterPath;

  @JsonKey(name: 'production_companies')
  final List<Network>? productionCompanies;

  @JsonKey(name: 'production_countries')
  final List<ProductionCountry>? productionCountries;

  @JsonKey(name: 'release_date')
  final DateTime? releaseDate;
  final int? revenue;
  final int? runtime;

  @JsonKey(name: 'spoken_languages')
  final List<SpokenLanguage>? spokenLanguages;
  final String? status;
  final String? tagline;
  final String? title;
  final bool? video;

  @JsonKey(name: 'vote_average')
  final double? voteAverage;

  @JsonKey(name: 'vote_count')
  final int? voteCount;

  @JsonKey(name: 'external_ids')
  final ExternalIds? externalIds;

  @JsonKey(name: 'created_by')
  final List<CreatedBy>? createdBy;

  @JsonKey(name: 'episode_run_time')
  final List<dynamic>? episodeRunTime;

  @JsonKey(name: 'first_air_date')
  final DateTime? firstAirDate;

  @JsonKey(name: 'in_production')
  final bool? inProduction;
  final List<String>? languages;

  @JsonKey(name: 'last_air_date')
  final DateTime? lastAirDate;

  @JsonKey(name: 'last_episode_to_air')
  final TEpisodeToAir? lastEpisodeToAir;
  final String? name;

  @JsonKey(name: 'next_episode_to_air')
  final TEpisodeToAir? nextEpisodeToAir;
  final List<Network>? networks;

  @JsonKey(name: 'number_of_episodes')
  final int? numberOfEpisodes;

  @JsonKey(name: 'number_of_seasons')
  final int? numberOfSeasons;

  @JsonKey(name: 'original_name')
  final String? originalName;
  final List<Season>? seasons;
  final String? type;

  MediaDetailsModel copyWith({
    bool? adult,
    String? backdropPath,
    dynamic belongsToCollection,
    int? budget,
    List<Genre>? genres,
    String? homepage,
    int? id,
    String? imdbId,
    List<String>? originCountry,
    String? originalLanguage,
    String? originalTitle,
    String? overview,
    double? popularity,
    String? posterPath,
    List<Network>? productionCompanies,
    List<ProductionCountry>? productionCountries,
    DateTime? releaseDate,
    int? revenue,
    int? runtime,
    List<SpokenLanguage>? spokenLanguages,
    String? status,
    String? tagline,
    String? title,
    bool? video,
    double? voteAverage,
    int? voteCount,
    ExternalIds? externalIds,
    List<CreatedBy>? createdBy,
    List<dynamic>? episodeRunTime,
    DateTime? firstAirDate,
    bool? inProduction,
    List<String>? languages,
    DateTime? lastAirDate,
    TEpisodeToAir? lastEpisodeToAir,
    String? name,
    TEpisodeToAir? nextEpisodeToAir,
    List<Network>? networks,
    int? numberOfEpisodes,
    int? numberOfSeasons,
    String? originalName,
    List<Season>? seasons,
    String? type,
  }) {
    return MediaDetailsModel(
      adult: adult ?? this.adult,
      backdropPath: backdropPath ?? this.backdropPath,
      belongsToCollection: belongsToCollection ?? this.belongsToCollection,
      budget: budget ?? this.budget,
      genres: genres ?? this.genres,
      homepage: homepage ?? this.homepage,
      id: id ?? this.id,
      imdbId: imdbId ?? this.imdbId,
      originCountry: originCountry ?? this.originCountry,
      originalLanguage: originalLanguage ?? this.originalLanguage,
      originalTitle: originalTitle ?? this.originalTitle,
      overview: overview ?? this.overview,
      popularity: popularity ?? this.popularity,
      posterPath: posterPath ?? this.posterPath,
      productionCompanies: productionCompanies ?? this.productionCompanies,
      productionCountries: productionCountries ?? this.productionCountries,
      releaseDate: releaseDate ?? this.releaseDate,
      revenue: revenue ?? this.revenue,
      runtime: runtime ?? this.runtime,
      spokenLanguages: spokenLanguages ?? this.spokenLanguages,
      status: status ?? this.status,
      tagline: tagline ?? this.tagline,
      title: title ?? this.title,
      video: video ?? this.video,
      voteAverage: voteAverage ?? this.voteAverage,
      voteCount: voteCount ?? this.voteCount,
      externalIds: externalIds ?? this.externalIds,
      createdBy: createdBy ?? this.createdBy,
      episodeRunTime: episodeRunTime ?? this.episodeRunTime,
      firstAirDate: firstAirDate ?? this.firstAirDate,
      inProduction: inProduction ?? this.inProduction,
      languages: languages ?? this.languages,
      lastAirDate: lastAirDate ?? this.lastAirDate,
      lastEpisodeToAir: lastEpisodeToAir ?? this.lastEpisodeToAir,
      name: name ?? this.name,
      nextEpisodeToAir: nextEpisodeToAir ?? this.nextEpisodeToAir,
      networks: networks ?? this.networks,
      numberOfEpisodes: numberOfEpisodes ?? this.numberOfEpisodes,
      numberOfSeasons: numberOfSeasons ?? this.numberOfSeasons,
      originalName: originalName ?? this.originalName,
      seasons: seasons ?? this.seasons,
      type: type ?? this.type,
    );
  }

  factory MediaDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$MediaDetailsModelFromJson(json);

  Map<String, dynamic> toJson() => _$MediaDetailsModelToJson(this);

  @override
  String toString() {
    return "$adult, $backdropPath, $belongsToCollection, $budget, $genres, $homepage, $id, $imdbId, $originCountry, $originalLanguage, $originalTitle, $overview, $popularity, $posterPath, $productionCompanies, $productionCountries, $releaseDate, $revenue, $runtime, $spokenLanguages, $status, $tagline, $title, $video, $voteAverage, $voteCount, $externalIds, $createdBy, $episodeRunTime, $firstAirDate, $inProduction, $languages, $lastAirDate, $lastEpisodeToAir, $name, $nextEpisodeToAir, $networks, $numberOfEpisodes, $numberOfSeasons, $originalName, $seasons, $type, ";
  }

  @override
  List<Object?> get props => [
        adult,
        backdropPath,
        belongsToCollection,
        budget,
        genres,
        homepage,
        id,
        imdbId,
        originCountry,
        originalLanguage,
        originalTitle,
        overview,
        popularity,
        posterPath,
        productionCompanies,
        productionCountries,
        releaseDate,
        revenue,
        runtime,
        spokenLanguages,
        status,
        tagline,
        title,
        video,
        voteAverage,
        voteCount,
        externalIds,
        createdBy,
        episodeRunTime,
        firstAirDate,
        inProduction,
        languages,
        lastAirDate,
        lastEpisodeToAir,
        name,
        nextEpisodeToAir,
        networks,
        numberOfEpisodes,
        numberOfSeasons,
        originalName,
        seasons,
        type,
      ];
}

@JsonSerializable(explicitToJson: true)
class CreatedBy extends Equatable {
  CreatedBy({
    required this.id,
    required this.creditId,
    required this.name,
    required this.originalName,
    required this.gender,
    required this.profilePath,
  });

  final int? id;

  @JsonKey(name: 'credit_id')
  final String? creditId;
  final String? name;

  @JsonKey(name: 'original_name')
  final String? originalName;
  final int? gender;

  @JsonKey(name: 'profile_path')
  final dynamic profilePath;

  CreatedBy copyWith({
    int? id,
    String? creditId,
    String? name,
    String? originalName,
    int? gender,
    dynamic profilePath,
  }) {
    return CreatedBy(
      id: id ?? this.id,
      creditId: creditId ?? this.creditId,
      name: name ?? this.name,
      originalName: originalName ?? this.originalName,
      gender: gender ?? this.gender,
      profilePath: profilePath ?? this.profilePath,
    );
  }

  factory CreatedBy.fromJson(Map<String, dynamic> json) =>
      _$CreatedByFromJson(json);

  Map<String, dynamic> toJson() => _$CreatedByToJson(this);

  @override
  String toString() {
    return "$id, $creditId, $name, $originalName, $gender, $profilePath, ";
  }

  @override
  List<Object?> get props => [
        id,
        creditId,
        name,
        originalName,
        gender,
        profilePath,
      ];
}

@JsonSerializable(explicitToJson: true)
class ExternalIds extends Equatable {
  ExternalIds({
    required this.imdbId,
    required this.wikidataId,
    required this.facebookId,
    required this.instagramId,
    required this.twitterId,
    required this.freebaseMid,
    required this.freebaseId,
    required this.tvdbId,
    required this.tvrageId,
  });

  @JsonKey(name: 'imdb_id')
  final String? imdbId;

  @JsonKey(name: 'wikidata_id')
  final String? wikidataId;

  @JsonKey(name: 'facebook_id')
  final dynamic facebookId;

  @JsonKey(name: 'instagram_id')
  final String? instagramId;

  @JsonKey(name: 'twitter_id')
  final String? twitterId;

  @JsonKey(name: 'freebase_mid')
  final dynamic freebaseMid;

  @JsonKey(name: 'freebase_id')
  final dynamic freebaseId;

  @JsonKey(name: 'tvdb_id')
  final int? tvdbId;

  @JsonKey(name: 'tvrage_id')
  final dynamic tvrageId;

  ExternalIds copyWith({
    String? imdbId,
    String? wikidataId,
    dynamic facebookId,
    String? instagramId,
    String? twitterId,
    dynamic freebaseMid,
    dynamic freebaseId,
    int? tvdbId,
    dynamic tvrageId,
  }) {
    return ExternalIds(
      imdbId: imdbId ?? this.imdbId,
      wikidataId: wikidataId ?? this.wikidataId,
      facebookId: facebookId ?? this.facebookId,
      instagramId: instagramId ?? this.instagramId,
      twitterId: twitterId ?? this.twitterId,
      freebaseMid: freebaseMid ?? this.freebaseMid,
      freebaseId: freebaseId ?? this.freebaseId,
      tvdbId: tvdbId ?? this.tvdbId,
      tvrageId: tvrageId ?? this.tvrageId,
    );
  }

  factory ExternalIds.fromJson(Map<String, dynamic> json) =>
      _$ExternalIdsFromJson(json);

  Map<String, dynamic> toJson() => _$ExternalIdsToJson(this);

  @override
  String toString() {
    return "$imdbId, $wikidataId, $facebookId, $instagramId, $twitterId, $freebaseMid, $freebaseId, $tvdbId, $tvrageId, ";
  }

  @override
  List<Object?> get props => [
        imdbId,
        wikidataId,
        facebookId,
        instagramId,
        twitterId,
        freebaseMid,
        freebaseId,
        tvdbId,
        tvrageId,
      ];
}

@JsonSerializable(explicitToJson: true)
class Genre extends Equatable {
  Genre({
    required this.id,
    required this.name,
  });

  final int? id;
  final String? name;

  Genre copyWith({
    int? id,
    String? name,
  }) {
    return Genre(
      id: id ?? this.id,
      name: name ?? this.name,
    );
  }

  factory Genre.fromJson(Map<String, dynamic> json) => _$GenreFromJson(json);

  Map<String, dynamic> toJson() => _$GenreToJson(this);

  @override
  String toString() {
    return "$id, $name, ";
  }

  @override
  List<Object?> get props => [
        id,
        name,
      ];
}

@JsonSerializable(explicitToJson: true)
class TEpisodeToAir extends Equatable {
  TEpisodeToAir({
    required this.id,
    required this.name,
    required this.overview,
    required this.voteAverage,
    required this.voteCount,
    required this.airDate,
    required this.episodeNumber,
    required this.episodeType,
    required this.productionCode,
    required this.runtime,
    required this.seasonNumber,
    required this.showId,
    required this.stillPath,
  });

  final int? id;
  final String? name;
  final String? overview;

  @JsonKey(name: 'vote_average')
  final int? voteAverage;

  @JsonKey(name: 'vote_count')
  final int? voteCount;

  @JsonKey(name: 'air_date')
  final DateTime? airDate;

  @JsonKey(name: 'episode_number')
  final int? episodeNumber;

  @JsonKey(name: 'episode_type')
  final String? episodeType;

  @JsonKey(name: 'production_code')
  final String? productionCode;
  final int? runtime;

  @JsonKey(name: 'season_number')
  final int? seasonNumber;

  @JsonKey(name: 'show_id')
  final int? showId;

  @JsonKey(name: 'still_path')
  final String? stillPath;

  TEpisodeToAir copyWith({
    int? id,
    String? name,
    String? overview,
    int? voteAverage,
    int? voteCount,
    DateTime? airDate,
    int? episodeNumber,
    String? episodeType,
    String? productionCode,
    int? runtime,
    int? seasonNumber,
    int? showId,
    String? stillPath,
  }) {
    return TEpisodeToAir(
      id: id ?? this.id,
      name: name ?? this.name,
      overview: overview ?? this.overview,
      voteAverage: voteAverage ?? this.voteAverage,
      voteCount: voteCount ?? this.voteCount,
      airDate: airDate ?? this.airDate,
      episodeNumber: episodeNumber ?? this.episodeNumber,
      episodeType: episodeType ?? this.episodeType,
      productionCode: productionCode ?? this.productionCode,
      runtime: runtime ?? this.runtime,
      seasonNumber: seasonNumber ?? this.seasonNumber,
      showId: showId ?? this.showId,
      stillPath: stillPath ?? this.stillPath,
    );
  }

  factory TEpisodeToAir.fromJson(Map<String, dynamic> json) =>
      _$TEpisodeToAirFromJson(json);

  Map<String, dynamic> toJson() => _$TEpisodeToAirToJson(this);

  @override
  String toString() {
    return "$id, $name, $overview, $voteAverage, $voteCount, $airDate, $episodeNumber, $episodeType, $productionCode, $runtime, $seasonNumber, $showId, $stillPath, ";
  }

  @override
  List<Object?> get props => [
        id,
        name,
        overview,
        voteAverage,
        voteCount,
        airDate,
        episodeNumber,
        episodeType,
        productionCode,
        runtime,
        seasonNumber,
        showId,
        stillPath,
      ];
}

@JsonSerializable(explicitToJson: true)
class Network extends Equatable {
  Network({
    required this.id,
    required this.logoPath,
    required this.name,
    required this.originCountry,
  });

  final int? id;

  @JsonKey(name: 'logo_path')
  final String? logoPath;
  final String? name;

  @JsonKey(name: 'origin_country')
  final String? originCountry;

  Network copyWith({
    int? id,
    String? logoPath,
    String? name,
    String? originCountry,
  }) {
    return Network(
      id: id ?? this.id,
      logoPath: logoPath ?? this.logoPath,
      name: name ?? this.name,
      originCountry: originCountry ?? this.originCountry,
    );
  }

  factory Network.fromJson(Map<String, dynamic> json) =>
      _$NetworkFromJson(json);

  Map<String, dynamic> toJson() => _$NetworkToJson(this);

  @override
  String toString() {
    return "$id, $logoPath, $name, $originCountry, ";
  }

  @override
  List<Object?> get props => [
        id,
        logoPath,
        name,
        originCountry,
      ];
}

@JsonSerializable(explicitToJson: true)
class ProductionCountry extends Equatable {
  ProductionCountry({
    required this.iso31661,
    required this.name,
  });

  @JsonKey(name: 'iso_3166_1')
  final String? iso31661;
  final String? name;

  ProductionCountry copyWith({
    String? iso31661,
    String? name,
  }) {
    return ProductionCountry(
      iso31661: iso31661 ?? this.iso31661,
      name: name ?? this.name,
    );
  }

  factory ProductionCountry.fromJson(Map<String, dynamic> json) =>
      _$ProductionCountryFromJson(json);

  Map<String, dynamic> toJson() => _$ProductionCountryToJson(this);

  @override
  String toString() {
    return "$iso31661, $name, ";
  }

  @override
  List<Object?> get props => [
        iso31661,
        name,
      ];
}

@JsonSerializable(explicitToJson: true)
class Season extends Equatable {
  Season({
    required this.airDate,
    required this.episodeCount,
    required this.id,
    required this.name,
    required this.overview,
    required this.posterPath,
    required this.seasonNumber,
    required this.voteAverage,
  });

  @JsonKey(name: 'air_date')
  final DateTime? airDate;

  @JsonKey(name: 'episode_count')
  final int? episodeCount;
  final int? id;
  final String? name;
  final String? overview;

  @JsonKey(name: 'poster_path')
  final String? posterPath;

  @JsonKey(name: 'season_number')
  final int? seasonNumber;

  @JsonKey(name: 'vote_average')
  final int? voteAverage;

  Season copyWith({
    DateTime? airDate,
    int? episodeCount,
    int? id,
    String? name,
    String? overview,
    String? posterPath,
    int? seasonNumber,
    int? voteAverage,
  }) {
    return Season(
      airDate: airDate ?? this.airDate,
      episodeCount: episodeCount ?? this.episodeCount,
      id: id ?? this.id,
      name: name ?? this.name,
      overview: overview ?? this.overview,
      posterPath: posterPath ?? this.posterPath,
      seasonNumber: seasonNumber ?? this.seasonNumber,
      voteAverage: voteAverage ?? this.voteAverage,
    );
  }

  factory Season.fromJson(Map<String, dynamic> json) => _$SeasonFromJson(json);

  Map<String, dynamic> toJson() => _$SeasonToJson(this);

  @override
  String toString() {
    return "$airDate, $episodeCount, $id, $name, $overview, $posterPath, $seasonNumber, $voteAverage, ";
  }

  @override
  List<Object?> get props => [
        airDate,
        episodeCount,
        id,
        name,
        overview,
        posterPath,
        seasonNumber,
        voteAverage,
      ];
}

@JsonSerializable(explicitToJson: true)
class SpokenLanguage extends Equatable {
  SpokenLanguage({
    required this.englishName,
    required this.iso6391,
    required this.name,
  });

  @JsonKey(name: 'english_name')
  final String? englishName;

  @JsonKey(name: 'iso_639_1')
  final String? iso6391;
  final String? name;

  SpokenLanguage copyWith({
    String? englishName,
    String? iso6391,
    String? name,
  }) {
    return SpokenLanguage(
      englishName: englishName ?? this.englishName,
      iso6391: iso6391 ?? this.iso6391,
      name: name ?? this.name,
    );
  }

  factory SpokenLanguage.fromJson(Map<String, dynamic> json) =>
      _$SpokenLanguageFromJson(json);

  Map<String, dynamic> toJson() => _$SpokenLanguageToJson(this);

  @override
  String toString() {
    return "$englishName, $iso6391, $name, ";
  }

  @override
  List<Object?> get props => [
        englishName,
        iso6391,
        name,
      ];
}
