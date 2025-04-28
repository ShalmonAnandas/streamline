import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'anime_search_model.g.dart';

@JsonSerializable(explicitToJson: true)
class AnimeSearchModel extends Equatable {
  AnimeSearchModel({
    required this.animes,
    required this.mostPopularAnimes,
  });

  final List<SearchAnime>? animes;
  final List<MostPopularAnime>? mostPopularAnimes;

  AnimeSearchModel copyWith({
    List<SearchAnime>? animes,
    List<MostPopularAnime>? mostPopularAnimes,
  }) {
    return AnimeSearchModel(
      animes: animes ?? this.animes,
      mostPopularAnimes: mostPopularAnimes ?? this.mostPopularAnimes,
    );
  }

  factory AnimeSearchModel.fromJson(Map<String, dynamic> json) =>
      _$AnimeSearchModelFromJson(json);

  Map<String, dynamic> toJson() => _$AnimeSearchModelToJson(this);

  @override
  String toString() {
    return "$animes, $mostPopularAnimes, ";
  }

  @override
  List<Object?> get props => [
        animes,
        mostPopularAnimes,
      ];
}

@JsonSerializable(explicitToJson: true)
class SearchAnime extends Equatable {
  SearchAnime({
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
  final SearchEpisodes? episodes;
  final String? duration;
  final bool? rated;

  SearchAnime copyWith({
    String? id,
    String? name,
    String? img,
    SearchEpisodes? episodes,
    String? duration,
    bool? rated,
  }) {
    return SearchAnime(
      id: id ?? this.id,
      name: name ?? this.name,
      img: img ?? this.img,
      episodes: episodes ?? this.episodes,
      duration: duration ?? this.duration,
      rated: rated ?? this.rated,
    );
  }

  factory SearchAnime.fromJson(Map<String, dynamic> json) =>
      _$SearchAnimeFromJson(json);

  Map<String, dynamic> toJson() => _$SearchAnimeToJson(this);

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
class SearchEpisodes extends Equatable {
  SearchEpisodes({
    required this.eps,
    required this.sub,
    required this.dub,
  });

  final int? eps;
  final int? sub;
  final int? dub;

  SearchEpisodes copyWith({
    int? eps,
    int? sub,
    int? dub,
  }) {
    return SearchEpisodes(
      eps: eps ?? this.eps,
      sub: sub ?? this.sub,
      dub: dub ?? this.dub,
    );
  }

  factory SearchEpisodes.fromJson(Map<String, dynamic> json) =>
      _$SearchEpisodesFromJson(json);

  Map<String, dynamic> toJson() => _$SearchEpisodesToJson(this);

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
class MostPopularAnime extends Equatable {
  MostPopularAnime({
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
  final SearchEpisodes? episodes;

  MostPopularAnime copyWith({
    String? id,
    String? name,
    String? category,
    String? img,
    SearchEpisodes? episodes,
  }) {
    return MostPopularAnime(
      id: id ?? this.id,
      name: name ?? this.name,
      category: category ?? this.category,
      img: img ?? this.img,
      episodes: episodes ?? this.episodes,
    );
  }

  factory MostPopularAnime.fromJson(Map<String, dynamic> json) =>
      _$MostPopularAnimeFromJson(json);

  Map<String, dynamic> toJson() => _$MostPopularAnimeToJson(this);

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
