import 'package:freezed_annotation/freezed_annotation.dart';

part 'cinemeta_manifest.freezed.dart';
part 'cinemeta_manifest.g.dart';

@freezed
class CinemetaManifest with _$CinemetaManifest {
  const factory CinemetaManifest({
    @JsonKey(name: "id") String? id,
    @JsonKey(name: "version") String? version,
    @JsonKey(name: "description") String? description,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "resources") List<String>? resources,
    @JsonKey(name: "types") List<String>? types,
    @JsonKey(name: "idPrefixes") List<String>? idPrefixes,
    @JsonKey(name: "addonCatalogs") List<AddonCatalog>? addonCatalogs,
    @JsonKey(name: "catalogs") List<Catalog>? catalogs,
    @JsonKey(name: "behaviorHints") BehaviorHints? behaviorHints,
  }) = _CinemetaManifest;

  factory CinemetaManifest.fromJson(Map<String, dynamic> json) =>
      _$CinemetaManifestFromJson(json);
}

@freezed
class AddonCatalog with _$AddonCatalog {
  const factory AddonCatalog({
    @JsonKey(name: "type") String? type,
    @JsonKey(name: "id") String? id,
    @JsonKey(name: "name") String? name,
  }) = _AddonCatalog;

  factory AddonCatalog.fromJson(Map<String, dynamic> json) =>
      _$AddonCatalogFromJson(json);
}

@freezed
class BehaviorHints with _$BehaviorHints {
  const factory BehaviorHints({
    @JsonKey(name: "newEpisodeNotifications") bool? newEpisodeNotifications,
  }) = _BehaviorHints;

  factory BehaviorHints.fromJson(Map<String, dynamic> json) =>
      _$BehaviorHintsFromJson(json);
}

@freezed
class Catalog with _$Catalog {
  const factory Catalog({
    @JsonKey(name: "type") String? type,
    @JsonKey(name: "id") String? id,
    @JsonKey(name: "genres") List<String>? genres,
    @JsonKey(name: "extra") List<Extra>? extra,
    @JsonKey(name: "extraSupported") List<String>? extraSupported,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "extraRequired") List<String>? extraRequired,
  }) = _Catalog;

  factory Catalog.fromJson(Map<String, dynamic> json) =>
      _$CatalogFromJson(json);
}

@freezed
class Extra with _$Extra {
  const factory Extra({
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "options") List<String>? options,
    @JsonKey(name: "isRequired") bool? isRequired,
    @JsonKey(name: "optionsLimit") int? optionsLimit,
  }) = _Extra;

  factory Extra.fromJson(Map<String, dynamic> json) => _$ExtraFromJson(json);
}
