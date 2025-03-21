import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';

part 'media_model.g.dart';

@JsonSerializable()
class MediaModel extends Equatable {
  MediaModel({
    required this.backdropPath,
    required this.id,
    required this.titleFromAPI,
    required this.nameFromAPI,
    required this.originalTitleFromAPI,
    required this.originalNameFromAPI,
    required this.overview,
    required this.posterPath,
    required this.mediaType,
    required this.adult,
    required this.originalLanguage,
    required this.genreIds,
    required this.popularity,
    required this.releaseDate,
    required this.video,
    required this.voteAverage,
    required this.voteCount,
  });

  @JsonKey(name: 'backdrop_path')
  final String? backdropPath;
  final int? id;
  final String? titleFromAPI;
  final String? nameFromAPI;

  String? get title => titleFromAPI ?? nameFromAPI;

  @JsonKey(name: 'original_title')
  final String? originalTitleFromAPI;

  @JsonKey(name: 'original_name')
  final String? originalNameFromAPI;

  String? get originalTitle => originalTitleFromAPI ?? originalNameFromAPI;

  final String? overview;

  @JsonKey(name: 'poster_path')
  final String? posterPath;

  @JsonKey(name: 'media_type')
  final String? mediaType;
  final bool? adult;

  @JsonKey(name: 'original_language')
  final String? originalLanguage;

  @JsonKey(name: 'genre_ids')
  final List<int>? genreIds;
  final double? popularity;

  @JsonKey(name: 'release_date')
  final DateTime? releaseDate;
  final bool? video;

  @JsonKey(name: 'vote_average')
  final double? voteAverage;

  @JsonKey(name: 'vote_count')
  final int? voteCount;

  MediaModel copyWith({
    String? backdropPath,
    int? id,
    String? titleFromAPI,
    String? nameFromAPI,
    String? originalTitleFromAPI,
    String? originalNameFromAPI,
    String? overview,
    String? posterPath,
    String? mediaType,
    bool? adult,
    String? originalLanguage,
    List<int>? genreIds,
    double? popularity,
    DateTime? releaseDate,
    bool? video,
    double? voteAverage,
    int? voteCount,
  }) {
    return MediaModel(
      backdropPath: backdropPath ?? this.backdropPath,
      id: id ?? this.id,
      titleFromAPI: titleFromAPI ?? this.titleFromAPI,
      nameFromAPI: nameFromAPI ?? this.nameFromAPI,
      originalTitleFromAPI: originalTitleFromAPI ?? this.originalTitleFromAPI,
      originalNameFromAPI: originalNameFromAPI ?? this.originalNameFromAPI,
      overview: overview ?? this.overview,
      posterPath: posterPath ?? this.posterPath,
      mediaType: mediaType ?? this.mediaType,
      adult: adult ?? this.adult,
      originalLanguage: originalLanguage ?? this.originalLanguage,
      genreIds: genreIds ?? this.genreIds,
      popularity: popularity ?? this.popularity,
      releaseDate: releaseDate ?? this.releaseDate,
      video: video ?? this.video,
      voteAverage: voteAverage ?? this.voteAverage,
      voteCount: voteCount ?? this.voteCount,
    );
  }

  factory MediaModel.fromJson(Map<String, dynamic> json) =>
      _$MediaModelFromJson(json);

  Map<String, dynamic> toJson() => _$MediaModelToJson(this);

  @override
  String toString() {
    return "$backdropPath, $id, $titleFromAPI, $originalTitleFromAPI, $overview, $posterPath, $mediaType, $adult, $originalLanguage, $genreIds, $popularity, $releaseDate, $video, $voteAverage, $voteCount, ";
  }

  @override
  List<Object?> get props => [
        backdropPath,
        id,
        titleFromAPI,
        originalTitleFromAPI,
        overview,
        posterPath,
        mediaType,
        adult,
        originalLanguage,
        genreIds,
        popularity,
        releaseDate,
        video,
        voteAverage,
        voteCount,
      ];
}
