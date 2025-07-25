import 'package:injectable/injectable.dart';
import 'package:streamline/data/datasource/remote/anime_remote_datasource.dart';

import 'package:streamline/domain/repositories/anime_repository.dart';

@Injectable(as: AnimeRepository)
class AnimeRepositoryImpl extends AnimeRepository {
  final AnimeRemoteDatasource remoteDatasource;

  AnimeRepositoryImpl(this.remoteDatasource);

  @override
  Future<bool> isAnimeApiLive() async {
    try {
      await remoteDatasource.isAnimeApiLive();
      return true;
    } catch (e) {
      return false;
    }
  }
}
