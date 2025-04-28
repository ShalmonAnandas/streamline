import 'package:domain/src/usecase/base/params.dart';

class GetAnimeEpisodeServerParams extends Params {
  final int id;

  GetAnimeEpisodeServerParams({required this.id});

  @override
  Map<String, dynamic> get toJson => {'id': id};

  @override
  List<Object?> get props => [id];
}
