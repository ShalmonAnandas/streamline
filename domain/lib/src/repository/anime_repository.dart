import 'package:dartz/dartz.dart';
import 'package:domain/domain.dart';

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
