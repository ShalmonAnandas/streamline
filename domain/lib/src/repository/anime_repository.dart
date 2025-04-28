import 'package:dartz/dartz.dart';
import 'package:domain/domain.dart';
import 'package:domain/src/model/anime/anime_details_model.dart';
import 'package:domain/src/model/anime/anime_episode_server_model.dart';
import 'package:domain/src/model/anime/anime_episodes_model.dart';
import 'package:domain/src/model/anime/anime_home_model.dart';
import 'package:domain/src/model/anime/anime_search_model.dart';
import 'package:domain/src/model/anime/anime_streaming_links_model.dart';

abstract class AnimeRepository {
  Future<Either<GenericError, AnimeHomeModel>> getHome();
  Future<Either<GenericError, AnimeDetailsModel>> getAnimeDetails(int id);
  Future<Either<GenericError, AnimeSearchModel>> searchAnime(String query);
  Future<Either<GenericError, AnimeEpisodesModel>> getAnimeEpisodes(int id);
  Future<Either<GenericError, AnimeEpisodeServerModel>> getAnimeEpisodeServers(
      int id);
  Future<Either<GenericError, AnimeStreamingLinksModel>> getLinks(
      String id, String server, String category);
}
