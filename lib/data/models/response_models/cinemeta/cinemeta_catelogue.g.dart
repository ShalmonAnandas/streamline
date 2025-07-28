// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cinemeta_catelogue.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CinemetaCatalogueImpl _$$CinemetaCatalogueImplFromJson(
        Map<String, dynamic> json) =>
    _$CinemetaCatalogueImpl(
      metas: (json['metas'] as List<dynamic>?)
          ?.map((e) => Meta.fromJson(e as Map<String, dynamic>))
          .toList(),
      hasMore: json['hasMore'] as bool?,
      cacheMaxAge: (json['cacheMaxAge'] as num?)?.toInt(),
      staleRevalidate: (json['staleRevalidate'] as num?)?.toInt(),
      staleError: (json['staleError'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$CinemetaCatalogueImplToJson(
        _$CinemetaCatalogueImpl instance) =>
    <String, dynamic>{
      'metas': instance.metas,
      'hasMore': instance.hasMore,
      'cacheMaxAge': instance.cacheMaxAge,
      'staleRevalidate': instance.staleRevalidate,
      'staleError': instance.staleError,
    };
