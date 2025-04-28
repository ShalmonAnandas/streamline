import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'anime_episode_server_model.g.dart';

@JsonSerializable(explicitToJson: true)
class AnimeEpisodeServerModel extends Equatable {
  AnimeEpisodeServerModel({
    required this.episodeId,
    required this.episodeNo,
    required this.sub,
    required this.dub,
    required this.raw,
  });

  final String? episodeId;
  final int? episodeNo;
  final List<Dub>? sub;
  final List<Dub>? dub;
  final List<dynamic>? raw;

  AnimeEpisodeServerModel copyWith({
    String? episodeId,
    int? episodeNo,
    List<Dub>? sub,
    List<Dub>? dub,
    List<dynamic>? raw,
  }) {
    return AnimeEpisodeServerModel(
      episodeId: episodeId ?? this.episodeId,
      episodeNo: episodeNo ?? this.episodeNo,
      sub: sub ?? this.sub,
      dub: dub ?? this.dub,
      raw: raw ?? this.raw,
    );
  }

  factory AnimeEpisodeServerModel.fromJson(Map<String, dynamic> json) =>
      _$AnimeEpisodeServerModelFromJson(json);

  Map<String, dynamic> toJson() => _$AnimeEpisodeServerModelToJson(this);

  @override
  String toString() {
    return "$episodeId, $episodeNo, $sub, $dub, $raw, ";
  }

  @override
  List<Object?> get props => [
        episodeId,
        episodeNo,
        sub,
        dub,
        raw,
      ];
}

@JsonSerializable(explicitToJson: true)
class Dub extends Equatable {
  Dub({
    required this.serverName,
    required this.serverId,
  });

  final String? serverName;
  final int? serverId;

  Dub copyWith({
    String? serverName,
    int? serverId,
  }) {
    return Dub(
      serverName: serverName ?? this.serverName,
      serverId: serverId ?? this.serverId,
    );
  }

  factory Dub.fromJson(Map<String, dynamic> json) => _$DubFromJson(json);

  Map<String, dynamic> toJson() => _$DubToJson(this);

  @override
  String toString() {
    return "$serverName, $serverId, ";
  }

  @override
  List<Object?> get props => [
        serverName,
        serverId,
      ];
}
