import 'package:data/src/ds/remote/anime/anime_api_constants.dart';
import 'package:data/src/ds/remote/anime/anime_remote_ds.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: AnimeRemoteDs)
class AnimeRemoteDsImpl extends AnimeRemoteDs with AnimeApiConstants {}
