import 'package:domain/src/usecase/base/params.dart';

class GetAnimeEpisodesParams extends Params {
  final int id;

  GetAnimeEpisodesParams({required this.id});

  @override
  Map<String, dynamic> get toJson => {'id': id};

  @override
  List<Object?> get props => [id];
}
