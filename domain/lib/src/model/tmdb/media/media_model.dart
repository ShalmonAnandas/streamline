import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';

part 'media_model.g.dart';

@JsonSerializable()
class MediaModel extends Equatable {
  MediaModel({
    required this.backdropPath,
    required this.tmdbId,
    required this.title,
    required this.name,
    required this.originalTitle,
    required this.originalName,
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

  final int? tmdbId;
  final String? title;
  final String? name;

  @JsonKey(name: 'original_title')
  final String? originalTitle;

  @JsonKey(name: 'original_name')
  final String? originalName;

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
      tmdbId: id ?? this.tmdbId,
      title: titleFromAPI ?? this.title,
      name: nameFromAPI ?? this.name,
      originalTitle: originalTitleFromAPI ?? this.originalTitle,
      originalName: originalNameFromAPI ?? this.originalName,
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
    return "$backdropPath, $tmdbId, $title, $originalTitle, $overview, $posterPath, $mediaType, $adult, $originalLanguage, $genreIds, $popularity, $releaseDate, $video, $voteAverage, $voteCount, ";
  }

  @override
  List<Object?> get props => [
        backdropPath,
        tmdbId,
        title,
        originalTitle,
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
