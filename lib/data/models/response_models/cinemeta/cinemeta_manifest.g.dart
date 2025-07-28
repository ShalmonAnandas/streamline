// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cinemeta_manifest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CinemetaManifestImpl _$$CinemetaManifestImplFromJson(
        Map<String, dynamic> json) =>
    _$CinemetaManifestImpl(
      id: json['id'] as String?,
      version: json['version'] as String?,
      description: json['description'] as String?,
      name: json['name'] as String?,
      resources: (json['resources'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      types:
          (json['types'] as List<dynamic>?)?.map((e) => e as String).toList(),
      idPrefixes: (json['idPrefixes'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      addonCatalogs: (json['addonCatalogs'] as List<dynamic>?)
          ?.map((e) => AddonCatalog.fromJson(e as Map<String, dynamic>))
          .toList(),
      catalogs: (json['catalogs'] as List<dynamic>?)
          ?.map((e) => Catalog.fromJson(e as Map<String, dynamic>))
          .toList(),
      behaviorHints: json['behaviorHints'] == null
          ? null
          : BehaviorHints.fromJson(
              json['behaviorHints'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CinemetaManifestImplToJson(
        _$CinemetaManifestImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'version': instance.version,
      'description': instance.description,
      'name': instance.name,
      'resources': instance.resources,
      'types': instance.types,
      'idPrefixes': instance.idPrefixes,
      'addonCatalogs': instance.addonCatalogs,
      'catalogs': instance.catalogs,
      'behaviorHints': instance.behaviorHints,
    };

_$AddonCatalogImpl _$$AddonCatalogImplFromJson(Map<String, dynamic> json) =>
    _$AddonCatalogImpl(
      type: json['type'] as String?,
      id: json['id'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$AddonCatalogImplToJson(_$AddonCatalogImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'id': instance.id,
      'name': instance.name,
    };

_$BehaviorHintsImpl _$$BehaviorHintsImplFromJson(Map<String, dynamic> json) =>
    _$BehaviorHintsImpl(
      newEpisodeNotifications: json['newEpisodeNotifications'] as bool?,
    );

Map<String, dynamic> _$$BehaviorHintsImplToJson(_$BehaviorHintsImpl instance) =>
    <String, dynamic>{
      'newEpisodeNotifications': instance.newEpisodeNotifications,
    };

_$CatalogImpl _$$CatalogImplFromJson(Map<String, dynamic> json) =>
    _$CatalogImpl(
      type: json['type'] as String?,
      id: json['id'] as String?,
      genres:
          (json['genres'] as List<dynamic>?)?.map((e) => e as String).toList(),
      extra: (json['extra'] as List<dynamic>?)
          ?.map((e) => Extra.fromJson(e as Map<String, dynamic>))
          .toList(),
      extraSupported: (json['extraSupported'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      name: json['name'] as String?,
      extraRequired: (json['extraRequired'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$CatalogImplToJson(_$CatalogImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'id': instance.id,
      'genres': instance.genres,
      'extra': instance.extra,
      'extraSupported': instance.extraSupported,
      'name': instance.name,
      'extraRequired': instance.extraRequired,
    };

_$ExtraImpl _$$ExtraImplFromJson(Map<String, dynamic> json) => _$ExtraImpl(
      name: json['name'] as String?,
      options:
          (json['options'] as List<dynamic>?)?.map((e) => e as String).toList(),
      isRequired: json['isRequired'] as bool?,
      optionsLimit: (json['optionsLimit'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ExtraImplToJson(_$ExtraImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'options': instance.options,
      'isRequired': instance.isRequired,
      'optionsLimit': instance.optionsLimit,
    };
