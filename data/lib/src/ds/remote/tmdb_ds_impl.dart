import 'package:dartz/dartz.dart';
import 'package:data/src/ds/remote/tmdb_ds.dart';
import 'package:data/src/utils/api_service.dart';
import 'package:doh_api_client/doh_api_client.dart';
import 'package:domain/domain.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: TMDBRemoteDs)
class TMDBRemoteDSImpl extends TMDBRemoteDs {
  TMDBRemoteDSImpl(this._apiClient);

  final APIClient _apiClient;

  @override
  Future<Either<NetworkError, ResultsModel>> getIMDBID() {
    // TODO: implement getIMDBID
    throw UnimplementedError();
  }

  @override
  Future<Either<NetworkError, ResultsModel>> getTrendingMovies() async {
    final response = await _apiClient.getRequest("url");

    if (response.isRight()) {
      return _apiClient.apiSafeGuard<ResultsModel>(response, ResultsModel.fromJson);
    } else {
      return left(response as NetworkError);
    }
  }

  @override
  Future<Either<NetworkError, ResultsModel>> getTrendingShows() {
    // TODO: implement getTrendingShows
    throw UnimplementedError();
  }

  @override
  Future<Either<NetworkError, ResultsModel>> searchTMDB() {
    // TODO: implement searchTMDB
    throw UnimplementedError();
  }
}
