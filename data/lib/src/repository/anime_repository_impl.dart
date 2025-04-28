import 'package:dartz/dartz.dart';
import 'package:domain/domain.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: AnimeRepository)
class AnimeRepositoryImpl extends AnimeRepository {
  @override
  Future<Either<GenericError, AnimeDetailsModel>> getAnimeDetails(int id) {
    // TODO: implement getAnimeDetails
    throw UnimplementedError();
  }

  @override
  Future<Either<GenericError, AnimeEpisodeServerModel>> getAnimeEpisodeServers(
      int id) {
    // TODO: implement getAnimeEpisodeServers
    throw UnimplementedError();
  }

  @override
  Future<Either<GenericError, AnimeEpisodesModel>> getAnimeEpisodes(int id) {
    // TODO: implement getAnimeEpisodes
    throw UnimplementedError();
  }

  @override
  Future<Either<GenericError, AnimeHomeModel>> getHome() {
    // TODO: implement getHome
    throw UnimplementedError();
  }

  @override
  Future<Either<GenericError, AnimeStreamingLinksModel>> getLinks(
      String id, String server, String category) {
    // TODO: implement getLinks
    throw UnimplementedError();
  }

  @override
  Future<Either<GenericError, AnimeSearchModel>> searchAnime(String query) {
    // TODO: implement searchAnime
    throw UnimplementedError();
  }
}
