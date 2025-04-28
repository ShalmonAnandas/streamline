import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'anime_home_model.g.dart';

@JsonSerializable(explicitToJson: true)
class AnimeHomeModel extends Equatable {
  AnimeHomeModel({
    required this.spotLightAnimes,
    required this.trendingAnimes,
    required this.latestEpisodes,
    required this.top10Animes,
    required this.featuredAnimes,
    required this.topUpcomingAnimes,
    required this.genres,
  });

  final List<SpotLightAnime>? spotLightAnimes;
  final List<TrendingAnime>? trendingAnimes;
  final List<LatestEpisode>? latestEpisodes;
  final Top10Animes? top10Animes;
  final FeaturedAnimes? featuredAnimes;
  final List<LatestEpisode>? topUpcomingAnimes;
  final List<String>? genres;

  AnimeHomeModel copyWith({
    List<SpotLightAnime>? spotLightAnimes,
    List<TrendingAnime>? trendingAnimes,
    List<LatestEpisode>? latestEpisodes,
    Top10Animes? top10Animes,
    FeaturedAnimes? featuredAnimes,
    List<LatestEpisode>? topUpcomingAnimes,
    List<String>? genres,
  }) {
    return AnimeHomeModel(
      spotLightAnimes: spotLightAnimes ?? this.spotLightAnimes,
      trendingAnimes: trendingAnimes ?? this.trendingAnimes,
      latestEpisodes: latestEpisodes ?? this.latestEpisodes,
      top10Animes: top10Animes ?? this.top10Animes,
      featuredAnimes: featuredAnimes ?? this.featuredAnimes,
      topUpcomingAnimes: topUpcomingAnimes ?? this.topUpcomingAnimes,
      genres: genres ?? this.genres,
    );
  }

  factory AnimeHomeModel.fromJson(Map<String, dynamic> json) =>
      _$AnimeHomeModelFromJson(json);

  Map<String, dynamic> toJson() => _$AnimeHomeModelToJson(this);

  @override
  String toString() {
    return "$spotLightAnimes, $trendingAnimes, $latestEpisodes, $top10Animes, $featuredAnimes, $topUpcomingAnimes, $genres, ";
  }

  @override
  List<Object?> get props => [
        spotLightAnimes,
        trendingAnimes,
        latestEpisodes,
        top10Animes,
        featuredAnimes,
        topUpcomingAnimes,
        genres,
      ];
}

@JsonSerializable(explicitToJson: true)
class FeaturedAnimes extends Equatable {
  FeaturedAnimes({
    required this.topAiringAnimes,
    required this.mostPopularAnimes,
    required this.mostFavoriteAnimes,
    required this.latestCompletedAnimes,
  });

  final List<TrendingAnime>? topAiringAnimes;
  final List<TrendingAnime>? mostPopularAnimes;
  final List<TrendingAnime>? mostFavoriteAnimes;
  final List<TrendingAnime>? latestCompletedAnimes;

  FeaturedAnimes copyWith({
    List<TrendingAnime>? topAiringAnimes,
    List<TrendingAnime>? mostPopularAnimes,
    List<TrendingAnime>? mostFavoriteAnimes,
    List<TrendingAnime>? latestCompletedAnimes,
  }) {
    return FeaturedAnimes(
      topAiringAnimes: topAiringAnimes ?? this.topAiringAnimes,
      mostPopularAnimes: mostPopularAnimes ?? this.mostPopularAnimes,
      mostFavoriteAnimes: mostFavoriteAnimes ?? this.mostFavoriteAnimes,
      latestCompletedAnimes:
          latestCompletedAnimes ?? this.latestCompletedAnimes,
    );
  }

  factory FeaturedAnimes.fromJson(Map<String, dynamic> json) =>
      _$FeaturedAnimesFromJson(json);

  Map<String, dynamic> toJson() => _$FeaturedAnimesToJson(this);

  @override
  String toString() {
    return "$topAiringAnimes, $mostPopularAnimes, $mostFavoriteAnimes, $latestCompletedAnimes, ";
  }

  @override
  List<Object?> get props => [
        topAiringAnimes,
        mostPopularAnimes,
        mostFavoriteAnimes,
        latestCompletedAnimes,
      ];
}

@JsonSerializable(explicitToJson: true)
class TrendingAnime extends Equatable {
  TrendingAnime({
    required this.id,
    required this.name,
    required this.img,
  });

  final String? id;
  final String? name;
  final String? img;

  TrendingAnime copyWith({
    String? id,
    String? name,
    String? img,
  }) {
    return TrendingAnime(
      id: id ?? this.id,
      name: name ?? this.name,
      img: img ?? this.img,
    );
  }

  factory TrendingAnime.fromJson(Map<String, dynamic> json) =>
      _$TrendingAnimeFromJson(json);

  Map<String, dynamic> toJson() => _$TrendingAnimeToJson(this);

  @override
  String toString() {
    return "$id, $name, $img, ";
  }

  @override
  List<Object?> get props => [
        id,
        name,
        img,
      ];
}

@JsonSerializable(explicitToJson: true)
class LatestEpisode extends Equatable {
  LatestEpisode({
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
  final TrendingEpisodes? episodes;
  final String? duration;
  final bool? rated;

  LatestEpisode copyWith({
    String? id,
    String? name,
    String? img,
    TrendingEpisodes? episodes,
    String? duration,
    bool? rated,
  }) {
    return LatestEpisode(
      id: id ?? this.id,
      name: name ?? this.name,
      img: img ?? this.img,
      episodes: episodes ?? this.episodes,
      duration: duration ?? this.duration,
      rated: rated ?? this.rated,
    );
  }

  factory LatestEpisode.fromJson(Map<String, dynamic> json) =>
      _$LatestEpisodeFromJson(json);

  Map<String, dynamic> toJson() => _$LatestEpisodeToJson(this);

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
class TrendingEpisodes extends Equatable {
  TrendingEpisodes({
    required this.eps,
    required this.sub,
    required this.dub,
  });

  final int? eps;
  final int? sub;
  final int? dub;

  TrendingEpisodes copyWith({
    int? eps,
    int? sub,
    int? dub,
  }) {
    return TrendingEpisodes(
      eps: eps ?? this.eps,
      sub: sub ?? this.sub,
      dub: dub ?? this.dub,
    );
  }

  factory TrendingEpisodes.fromJson(Map<String, dynamic> json) =>
      _$TrendingEpisodesFromJson(json);

  Map<String, dynamic> toJson() => _$TrendingEpisodesToJson(this);

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
class SpotLightAnime extends Equatable {
  SpotLightAnime({
    required this.id,
    required this.name,
    required this.rank,
    required this.img,
    required this.episodes,
    required this.duration,
    required this.quality,
    required this.category,
    required this.releasedDay,
    required this.description,
  });

  final String? id;
  final String? name;
  final int? rank;
  final String? img;
  final TrendingEpisodes? episodes;
  final String? duration;
  final String? quality;
  final String? category;
  final String? releasedDay;
  final String? description;

  SpotLightAnime copyWith({
    String? id,
    String? name,
    int? rank,
    String? img,
    TrendingEpisodes? episodes,
    String? duration,
    String? quality,
    String? category,
    String? releasedDay,
    String? description,
  }) {
    return SpotLightAnime(
      id: id ?? this.id,
      name: name ?? this.name,
      rank: rank ?? this.rank,
      img: img ?? this.img,
      episodes: episodes ?? this.episodes,
      duration: duration ?? this.duration,
      quality: quality ?? this.quality,
      category: category ?? this.category,
      releasedDay: releasedDay ?? this.releasedDay,
      description: description ?? this.description,
    );
  }

  factory SpotLightAnime.fromJson(Map<String, dynamic> json) =>
      _$SpotLightAnimeFromJson(json);

  Map<String, dynamic> toJson() => _$SpotLightAnimeToJson(this);

  @override
  String toString() {
    return "$id, $name, $rank, $img, $episodes, $duration, $quality, $category, $releasedDay, $description, ";
  }

  @override
  List<Object?> get props => [
        id,
        name,
        rank,
        img,
        episodes,
        duration,
        quality,
        category,
        releasedDay,
        description,
      ];
}

@JsonSerializable(explicitToJson: true)
class Top10Animes extends Equatable {
  Top10Animes({
    required this.day,
    required this.week,
    required this.month,
  });

  final List<Day>? day;
  final List<Day>? week;
  final List<Day>? month;

  Top10Animes copyWith({
    List<Day>? day,
    List<Day>? week,
    List<Day>? month,
  }) {
    return Top10Animes(
      day: day ?? this.day,
      week: week ?? this.week,
      month: month ?? this.month,
    );
  }

  factory Top10Animes.fromJson(Map<String, dynamic> json) =>
      _$Top10AnimesFromJson(json);

  Map<String, dynamic> toJson() => _$Top10AnimesToJson(this);

  @override
  String toString() {
    return "$day, $week, $month, ";
  }

  @override
  List<Object?> get props => [
        day,
        week,
        month,
      ];
}

@JsonSerializable(explicitToJson: true)
class Day extends Equatable {
  Day({
    required this.id,
    required this.name,
    required this.rank,
    required this.img,
    required this.episodes,
  });

  final String? id;
  final String? name;
  final int? rank;
  final String? img;
  final TrendingEpisodes? episodes;

  Day copyWith({
    String? id,
    String? name,
    int? rank,
    String? img,
    TrendingEpisodes? episodes,
  }) {
    return Day(
      id: id ?? this.id,
      name: name ?? this.name,
      rank: rank ?? this.rank,
      img: img ?? this.img,
      episodes: episodes ?? this.episodes,
    );
  }

  factory Day.fromJson(Map<String, dynamic> json) => _$DayFromJson(json);

  Map<String, dynamic> toJson() => _$DayToJson(this);

  @override
  String toString() {
    return "$id, $name, $rank, $img, $episodes, ";
  }

  @override
  List<Object?> get props => [
        id,
        name,
        rank,
        img,
        episodes,
      ];
}
