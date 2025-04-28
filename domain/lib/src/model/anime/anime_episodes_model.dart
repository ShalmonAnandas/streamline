import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'anime_episodes_model.g.dart';

@JsonSerializable(explicitToJson: true)
class AnimeEpisodesModel extends Equatable {
  AnimeEpisodesModel({
    required this.totalEpisodes,
    required this.episodes,
  });

  final int? totalEpisodes;
  final List<AnimeEpisode>? episodes;

  AnimeEpisodesModel copyWith({
    int? totalEpisodes,
    List<AnimeEpisode>? episodes,
  }) {
    return AnimeEpisodesModel(
      totalEpisodes: totalEpisodes ?? this.totalEpisodes,
      episodes: episodes ?? this.episodes,
    );
  }

  factory AnimeEpisodesModel.fromJson(Map<String, dynamic> json) =>
      _$AnimeEpisodesModelFromJson(json);

  Map<String, dynamic> toJson() => _$AnimeEpisodesModelToJson(this);

  @override
  String toString() {
    return "$totalEpisodes, $episodes, ";
  }

  @override
  List<Object?> get props => [
        totalEpisodes,
        episodes,
      ];
}

@JsonSerializable(explicitToJson: true)
class AnimeEpisode extends Equatable {
  AnimeEpisode({
    required this.name,
    required this.episodeNo,
    required this.episodeId,
    required this.filler,
  });

  final String? name;
  final int? episodeNo;
  final String? episodeId;
  final bool? filler;

  AnimeEpisode copyWith({
    String? name,
    int? episodeNo,
    String? episodeId,
    bool? filler,
  }) {
    return AnimeEpisode(
      name: name ?? this.name,
      episodeNo: episodeNo ?? this.episodeNo,
      episodeId: episodeId ?? this.episodeId,
      filler: filler ?? this.filler,
    );
  }

  factory AnimeEpisode.fromJson(Map<String, dynamic> json) =>
      _$AnimeEpisodeFromJson(json);

  Map<String, dynamic> toJson() => _$AnimeEpisodeToJson(this);

  @override
  String toString() {
    return "$name, $episodeNo, $episodeId, $filler, ";
  }

  @override
  List<Object?> get props => [
        name,
        episodeNo,
        episodeId,
        filler,
      ];
}
