import 'package:freezed_annotation/freezed_annotation.dart';
import 'cinemeta_meta.dart';

part 'cinemeta_catelogue.freezed.dart';
part 'cinemeta_catelogue.g.dart';

@freezed
class CinemetaCatalogue with _$CinemetaCatalogue {
  const factory CinemetaCatalogue({
    @JsonKey(name: "metas") List<Meta>? metas,
    @JsonKey(name: "hasMore") bool? hasMore,
    @JsonKey(name: "cacheMaxAge") int? cacheMaxAge,
    @JsonKey(name: "staleRevalidate") int? staleRevalidate,
    @JsonKey(name: "staleError") int? staleError,
  }) = _CinemetaCatalogue;

  factory CinemetaCatalogue.fromJson(Map<String, dynamic> json) =>
      _$CinemetaCatalogueFromJson(json);
}
