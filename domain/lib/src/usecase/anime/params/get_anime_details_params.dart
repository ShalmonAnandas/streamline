import 'package:domain/src/usecase/base/params.dart';

class GetAnimeDetailsParams extends Params {
  final int id;

  GetAnimeDetailsParams({required this.id});

  @override
  Map<String, dynamic> get toJson => {'id': id};

  @override
  List<Object?> get props => [id];
}
