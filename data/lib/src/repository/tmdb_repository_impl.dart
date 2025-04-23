import 'package:dartz/dartz.dart';
import 'package:data/src/ds/local/tmdb/tmdb_local_ds.dart';
import 'package:data/src/ds/remote/tmdb/tmdb_remote_ds.dart';
import 'package:domain/domain.dart';
import 'package:domain/src/usecase/tmdb/get_recommendations_usecase.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: TMDBRepository)
class TMDBRepositoryImpl extends TMDBRepository {
  TMDBRepositoryImpl(this._tmdbLocalDs, this._tmdbRemoteDs);

  final TMDBLocalDs _tmdbLocalDs;
  final TMDBRemoteDs _tmdbRemoteDs;

  @override
  Future<Either<GenericError, List<MediaModel>?>> getTrending(
      GetTrendingParams params) async {
    final localResult = await _tmdbLocalDs.getTrending(params);

    if (localResult != null) {
      return right(localResult.results);
    }

    final remoteResult = await _tmdbRemoteDs.getTrending(params);

    return remoteResult.fold(
      (error) =>
          Future.delayed(Duration(seconds: 2)).then((_) => getTrending(params)),
      (results) {
        _tmdbLocalDs.cacheTrending<ResultsModel>(results, params);
        return right(results.results);
      },
    );
  }

  @override
  Future<Either<GenericError, List<MediaModel>?>> searchTMDB(
      String searchQuery) async {
    final results = await _tmdbRemoteDs.searchTMDB(searchQuery);

    return results.fold(
        (GenericError error) => Future.delayed(Duration(seconds: 2))
            .then((_) => searchTMDB(searchQuery)), (ResultsModel results) {
      return right(results.results);
    });
  }

  @override
  Future<Either<GenericError, MediaDetailsModel>> getMediaDetails(
      GetMediaDetailsParams params) async {
    final localResult = await _tmdbLocalDs.getMediaDetails(params);

    if (localResult != null) {
      return right(localResult);
    }

    final remoteResult = await _tmdbRemoteDs.getMediaDetails(params);

    return remoteResult.map((mediaDetails) {
      _tmdbLocalDs.cacheMediaDetails<MediaDetailsModel>(mediaDetails, params);
      return mediaDetails;
    });
  }

  // Re-adding this implementation now that DS methods exist
  @override
  Future<Either<GenericError, List<MediaModel>?>> getRecommendations(
      GetRecommendationsParams params) async {
    final localResult = await _tmdbLocalDs.getRecommendations(params);

    if (localResult != null) {
      return right(localResult.results);
    }

    final remoteResult = await _tmdbRemoteDs.getRecommendations(params);

    return remoteResult.fold(
      (error) => Future.delayed(Duration(seconds: 2))
          .then((_) => getRecommendations(params)), // Basic retry logic
      (results) {
        _tmdbLocalDs.cacheRecommendations<ResultsModel>(results, params);
        return right(results.results);
      },
    );
  }

  // Implement saveMedia by calling the local data source
  @override
  void saveMedia(MediaDetailsModel media) {
    _tmdbLocalDs.saveMedia(media);
  }

  // Implement getSavedMedia by calling the local data source
  @override
  Future<List<MediaDetailsModel>> getSavedMedia() async {
    return _tmdbLocalDs.getSavedMedia();
  }

  // Implement isMediaSaved by calling the local data source
  @override
  Future<bool> isMediaSaved(int mediaId) async {
    return _tmdbLocalDs.isMediaSaved(mediaId);
  }

  // Implement removeSavedMedia by calling the local data source
  @override
  Future<void> removeSavedMedia(int mediaId) async {
    return _tmdbLocalDs.removeSavedMedia(mediaId);
  }
}
