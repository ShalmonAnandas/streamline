import 'package:domain/src/usecase/base/params.dart';

class SearchAnimeParams extends Params {
  final String query;

  SearchAnimeParams({required this.query});

  @override
  Map<String, dynamic> get toJson => {'query': query};

  @override
  List<Object?> get props => [query];
}
