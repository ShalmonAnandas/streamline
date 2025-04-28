import 'package:domain/src/usecase/base/params.dart';

class GetLinksParams extends Params {
  final String id;
  final String server;
  final String category;

  GetLinksParams(
      {required this.id, required this.server, required this.category});

  @override
  Map<String, dynamic> get toJson => {
        'id': id,
        'server': server,
        'category': category,
      };

  @override
  List<Object?> get props => [id, server, category];
}
