import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'anime_details_model.g.dart';

@JsonSerializable(explicitToJson: true)
class AnimeDetailsModel extends Equatable {
  AnimeDetailsModel({
    required this.info,
    required this.moreInfo,
    required this.seasons,
    required this.relatedAnimes,
    required this.recommendedAnimes,
    required this.mostPopularAnimes,
  });

  final Info? info;
  final MoreInfo? moreInfo;
  final List<AnimeSeason>? seasons;
  final List<Anime>? relatedAnimes;
  final List<RecommendedAnime>? recommendedAnimes;
  final List<Anime>? mostPopularAnimes;

  AnimeDetailsModel copyWith({
    Info? info,
    MoreInfo? moreInfo,
    List<AnimeSeason>? seasons,
    List<Anime>? relatedAnimes,
    List<RecommendedAnime>? recommendedAnimes,
    List<Anime>? mostPopularAnimes,
  }) {
    return AnimeDetailsModel(
      info: info ?? this.info,
      moreInfo: moreInfo ?? this.moreInfo,
      seasons: seasons ?? this.seasons,
      relatedAnimes: relatedAnimes ?? this.relatedAnimes,
      recommendedAnimes: recommendedAnimes ?? this.recommendedAnimes,
      mostPopularAnimes: mostPopularAnimes ?? this.mostPopularAnimes,
    );
  }

  factory AnimeDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$AnimeDetailsModelFromJson(json);

  Map<String, dynamic> toJson() => _$AnimeDetailsModelToJson(this);

  @override
  String toString() {
    return "$info, $moreInfo, $seasons, $relatedAnimes, $recommendedAnimes, $mostPopularAnimes, ";
  }

  @override
  List<Object?> get props => [
        info,
        moreInfo,
        seasons,
        relatedAnimes,
        recommendedAnimes,
        mostPopularAnimes,
      ];
}

@JsonSerializable(explicitToJson: true)
class Info extends Equatable {
  Info({
    required this.id,
    required this.malId,
    required this.animeId,
    required this.alId,
    required this.name,
    required this.img,
    required this.rating,
    required this.episodes,
    required this.category,
    required this.quality,
    required this.duration,
    required this.description,
  });

  final String? id;

  @JsonKey(name: 'mal_id')
  final int? malId;

  @JsonKey(name: 'anime_id')
  final int? animeId;

  @JsonKey(name: 'al_id')
  final int? alId;
  final String? name;
  final String? img;
  final String? rating;
  final Episodes? episodes;
  final String? category;
  final String? quality;
  final String? duration;
  final String? description;

  Info copyWith({
    String? id,
    int? malId,
    int? animeId,
    int? alId,
    String? name,
    String? img,
    String? rating,
    Episodes? episodes,
    String? category,
    String? quality,
    String? duration,
    String? description,
  }) {
    return Info(
      id: id ?? this.id,
      malId: malId ?? this.malId,
      animeId: animeId ?? this.animeId,
      alId: alId ?? this.alId,
      name: name ?? this.name,
      img: img ?? this.img,
      rating: rating ?? this.rating,
      episodes: episodes ?? this.episodes,
      category: category ?? this.category,
      quality: quality ?? this.quality,
      duration: duration ?? this.duration,
      description: description ?? this.description,
    );
  }

  factory Info.fromJson(Map<String, dynamic> json) => _$InfoFromJson(json);

  Map<String, dynamic> toJson() => _$InfoToJson(this);

  @override
  String toString() {
    return "$id, $malId, $animeId, $alId, $name, $img, $rating, $episodes, $category, $quality, $duration, $description, ";
  }

  @override
  List<Object?> get props => [
        id,
        malId,
        animeId,
        alId,
        name,
        img,
        rating,
        episodes,
        category,
        quality,
        duration,
        description,
      ];
}

@JsonSerializable(explicitToJson: true)
class Episodes extends Equatable {
  Episodes({
    required this.eps,
    required this.sub,
    required this.dub,
  });

  final int? eps;
  final int? sub;
  final int? dub;

  Episodes copyWith({
    int? eps,
    int? sub,
    int? dub,
  }) {
    return Episodes(
      eps: eps ?? this.eps,
      sub: sub ?? this.sub,
      dub: dub ?? this.dub,
    );
  }

  factory Episodes.fromJson(Map<String, dynamic> json) =>
      _$EpisodesFromJson(json);

  Map<String, dynamic> toJson() => _$EpisodesToJson(this);

  @override
  String toString() {
    return "$eps, $sub, $dub, ";
  }

  @override
  List<Object?> get props => [
        eps,
        sub,
        dub,
      ];
}

@JsonSerializable(explicitToJson: true)
class MoreInfo extends Equatable {
  MoreInfo({
    required this.japanese,
    required this.synonyms,
    required this.aired,
    required this.premiered,
    required this.duration,
    required this.status,
    required this.malScore,
    required this.studios,
    required this.genres,
    required this.producers,
  });

  @JsonKey(name: 'Japanese:')
  final String? japanese;

  @JsonKey(name: 'Synonyms:')
  final String? synonyms;

  @JsonKey(name: 'Aired:')
  final String? aired;

  @JsonKey(name: 'Premiered:')
  final String? premiered;

  @JsonKey(name: 'Duration:')
  final String? duration;

  @JsonKey(name: 'Status:')
  final String? status;

  @JsonKey(name: 'MAL Score:')
  final String? malScore;

  @JsonKey(name: 'Studios:')
  final String? studios;

  @JsonKey(name: 'Genres')
  final List<String>? genres;

  @JsonKey(name: 'Producers')
  final List<String>? producers;

  MoreInfo copyWith({
    String? japanese,
    String? synonyms,
    String? aired,
    String? premiered,
    String? duration,
    String? status,
    String? malScore,
    String? studios,
    List<String>? genres,
    List<String>? producers,
  }) {
    return MoreInfo(
      japanese: japanese ?? this.japanese,
      synonyms: synonyms ?? this.synonyms,
      aired: aired ?? this.aired,
      premiered: premiered ?? this.premiered,
      duration: duration ?? this.duration,
      status: status ?? this.status,
      malScore: malScore ?? this.malScore,
      studios: studios ?? this.studios,
      genres: genres ?? this.genres,
      producers: producers ?? this.producers,
    );
  }

  factory MoreInfo.fromJson(Map<String, dynamic> json) =>
      _$MoreInfoFromJson(json);

  Map<String, dynamic> toJson() => _$MoreInfoToJson(this);

  @override
  String toString() {
    return "$japanese, $synonyms, $aired, $premiered, $duration, $status, $malScore, $studios, $genres, $producers, ";
  }

  @override
  List<Object?> get props => [
        japanese,
        synonyms,
        aired,
        premiered,
        duration,
        status,
        malScore,
        studios,
        genres,
        producers,
      ];
}

@JsonSerializable(explicitToJson: true)
class Anime extends Equatable {
  Anime({
    required this.id,
    required this.name,
    required this.category,
    required this.img,
    required this.episodes,
  });

  final String? id;
  final String? name;
  final String? category;
  final String? img;
  final Episodes? episodes;

  Anime copyWith({
    String? id,
    String? name,
    String? category,
    String? img,
    Episodes? episodes,
  }) {
    return Anime(
      id: id ?? this.id,
      name: name ?? this.name,
      category: category ?? this.category,
      img: img ?? this.img,
      episodes: episodes ?? this.episodes,
    );
  }

  factory Anime.fromJson(Map<String, dynamic> json) => _$AnimeFromJson(json);

  Map<String, dynamic> toJson() => _$AnimeToJson(this);

  @override
  String toString() {
    return "$id, $name, $category, $img, $episodes, ";
  }

  @override
  List<Object?> get props => [
        id,
        name,
        category,
        img,
        episodes,
      ];
}

@JsonSerializable(explicitToJson: true)
class RecommendedAnime extends Equatable {
  RecommendedAnime({
    required this.id,
    required this.name,
    required this.img,
    required this.episodes,
    required this.duration,
    required this.rated,
  });

  final String? id;
  final String? name;
  final String? img;
  final Episodes? episodes;
  final String? duration;
  final bool? rated;

  RecommendedAnime copyWith({
    String? id,
    String? name,
    String? img,
    Episodes? episodes,
    String? duration,
    bool? rated,
  }) {
    return RecommendedAnime(
      id: id ?? this.id,
      name: name ?? this.name,
      img: img ?? this.img,
      episodes: episodes ?? this.episodes,
      duration: duration ?? this.duration,
      rated: rated ?? this.rated,
    );
  }

  factory RecommendedAnime.fromJson(Map<String, dynamic> json) =>
      _$RecommendedAnimeFromJson(json);

  Map<String, dynamic> toJson() => _$RecommendedAnimeToJson(this);

  @override
  String toString() {
    return "$id, $name, $img, $episodes, $duration, $rated, ";
  }

  @override
  List<Object?> get props => [
        id,
        name,
        img,
        episodes,
        duration,
        rated,
      ];
}

@JsonSerializable(explicitToJson: true)
class AnimeSeason extends Equatable {
  AnimeSeason({
    required this.id,
    required this.name,
    required this.seasonTitle,
    required this.img,
    required this.isCurrent,
  });

  final String? id;
  final String? name;
  final String? seasonTitle;
  final String? img;
  final bool? isCurrent;

  AnimeSeason copyWith({
    String? id,
    String? name,
    String? seasonTitle,
    String? img,
    bool? isCurrent,
  }) {
    return AnimeSeason(
      id: id ?? this.id,
      name: name ?? this.name,
      seasonTitle: seasonTitle ?? this.seasonTitle,
      img: img ?? this.img,
      isCurrent: isCurrent ?? this.isCurrent,
    );
  }

  factory AnimeSeason.fromJson(Map<String, dynamic> json) =>
      _$AnimeSeasonFromJson(json);

  Map<String, dynamic> toJson() => _$AnimeSeasonToJson(this);

  @override
  String toString() {
    return "$id, $name, $seasonTitle, $img, $isCurrent, ";
  }

  @override
  List<Object?> get props => [
        id,
        name,
        seasonTitle,
        img,
        isCurrent,
      ];
}
