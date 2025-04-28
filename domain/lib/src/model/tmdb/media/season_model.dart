import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'season_model.g.dart';

@JsonSerializable(explicitToJson: true)
class SeasonModel extends Equatable {
  SeasonModel({
    required this.episodes,
  });

  final List<Episode>? episodes;

  SeasonModel copyWith({
    List<Episode>? episodes,
  }) {
    return SeasonModel(
      episodes: episodes ?? this.episodes,
    );
  }

  factory SeasonModel.fromJson(Map<String, dynamic> json) =>
      _$SeasonModelFromJson(json);

  Map<String, dynamic> toJson() => _$SeasonModelToJson(this);

  @override
  String toString() {
    return "$episodes, ";
  }

  @override
  List<Object?> get props => [
        episodes,
      ];
}

@JsonSerializable(explicitToJson: true)
class Episode extends Equatable {
  Episode({
    required this.airDate,
    required this.episodeNumber,
    required this.episodeType,
    required this.id,
    required this.name,
    required this.overview,
    required this.productionCode,
    required this.runtime,
    required this.seasonNumber,
    required this.showId,
    required this.stillPath,
    required this.voteAverage,
    required this.voteCount,
    required this.crew,
    required this.guestStars,
  });

  @JsonKey(name: 'air_date')
  final DateTime? airDate;

  @JsonKey(name: 'episode_number')
  final int? episodeNumber;

  @JsonKey(name: 'episode_type')
  final String? episodeType;
  final int? id;
  final String? name;
  final String? overview;

  @JsonKey(name: 'production_code')
  final String? productionCode;
  final int? runtime;

  @JsonKey(name: 'season_number')
  final int? seasonNumber;

  @JsonKey(name: 'show_id')
  final int? showId;

  @JsonKey(name: 'still_path')
  final String? stillPath;

  @JsonKey(name: 'vote_average')
  final double? voteAverage;

  @JsonKey(name: 'vote_count')
  final int? voteCount;
  final List<Crew>? crew;

  @JsonKey(name: 'guest_stars')
  final List<Crew>? guestStars;

  Episode copyWith({
    DateTime? airDate,
    int? episodeNumber,
    String? episodeType,
    int? id,
    String? name,
    String? overview,
    String? productionCode,
    int? runtime,
    int? seasonNumber,
    int? showId,
    String? stillPath,
    double? voteAverage,
    int? voteCount,
    List<Crew>? crew,
    List<Crew>? guestStars,
  }) {
    return Episode(
      airDate: airDate ?? this.airDate,
      episodeNumber: episodeNumber ?? this.episodeNumber,
      episodeType: episodeType ?? this.episodeType,
      id: id ?? this.id,
      name: name ?? this.name,
      overview: overview ?? this.overview,
      productionCode: productionCode ?? this.productionCode,
      runtime: runtime ?? this.runtime,
      seasonNumber: seasonNumber ?? this.seasonNumber,
      showId: showId ?? this.showId,
      stillPath: stillPath ?? this.stillPath,
      voteAverage: voteAverage ?? this.voteAverage,
      voteCount: voteCount ?? this.voteCount,
      crew: crew ?? this.crew,
      guestStars: guestStars ?? this.guestStars,
    );
  }

  factory Episode.fromJson(Map<String, dynamic> json) =>
      _$EpisodeFromJson(json);

  Map<String, dynamic> toJson() => _$EpisodeToJson(this);

  @override
  String toString() {
    return "$airDate, $episodeNumber, $episodeType, $id, $name, $overview, $productionCode, $runtime, $seasonNumber, $showId, $stillPath, $voteAverage, $voteCount, $crew, $guestStars, ";
  }

  @override
  List<Object?> get props => [
        airDate,
        episodeNumber,
        episodeType,
        id,
        name,
        overview,
        productionCode,
        runtime,
        seasonNumber,
        showId,
        stillPath,
        voteAverage,
        voteCount,
        crew,
        guestStars,
      ];
}

@JsonSerializable(explicitToJson: true)
class Crew extends Equatable {
  Crew({
    required this.job,
    required this.department,
    required this.creditId,
    required this.adult,
    required this.gender,
    required this.id,
    required this.knownForDepartment,
    required this.name,
    required this.originalName,
    required this.popularity,
    required this.profilePath,
    required this.character,
    required this.order,
  });

  final String? job;
  final String? department;

  @JsonKey(name: 'credit_id')
  final String? creditId;
  final bool? adult;
  final int? gender;
  final int? id;

  @JsonKey(name: 'known_for_department')
  final String? knownForDepartment;
  final String? name;

  @JsonKey(name: 'original_name')
  final String? originalName;
  final double? popularity;

  @JsonKey(name: 'profile_path')
  final String? profilePath;
  final String? character;
  final int? order;

  Crew copyWith({
    String? job,
    String? department,
    String? creditId,
    bool? adult,
    int? gender,
    int? id,
    String? knownForDepartment,
    String? name,
    String? originalName,
    double? popularity,
    String? profilePath,
    String? character,
    int? order,
  }) {
    return Crew(
      job: job ?? this.job,
      department: department ?? this.department,
      creditId: creditId ?? this.creditId,
      adult: adult ?? this.adult,
      gender: gender ?? this.gender,
      id: id ?? this.id,
      knownForDepartment: knownForDepartment ?? this.knownForDepartment,
      name: name ?? this.name,
      originalName: originalName ?? this.originalName,
      popularity: popularity ?? this.popularity,
      profilePath: profilePath ?? this.profilePath,
      character: character ?? this.character,
      order: order ?? this.order,
    );
  }

  factory Crew.fromJson(Map<String, dynamic> json) => _$CrewFromJson(json);

  Map<String, dynamic> toJson() => _$CrewToJson(this);

  @override
  String toString() {
    return "$job, $department, $creditId, $adult, $gender, $id, $knownForDepartment, $name, $originalName, $popularity, $profilePath, $character, $order, ";
  }

  @override
  List<Object?> get props => [
        job,
        department,
        creditId,
        adult,
        gender,
        id,
        knownForDepartment,
        name,
        originalName,
        popularity,
        profilePath,
        character,
        order,
      ];
}
