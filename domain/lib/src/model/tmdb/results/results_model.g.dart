// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'results_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResultsModel _$ResultsModelFromJson(Map<String, dynamic> json) => ResultsModel(
      page: (json['page'] as num?)?.toInt(),
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => MediaModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalPages: (json['total_pages'] as num?)?.toInt(),
      totalResults: (json['total_results'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ResultsModelToJson(ResultsModel instance) =>
    <String, dynamic>{
      if (instance.page case final value?) 'page': value,
      if (instance.results?.map((e) => e.toJson()).toList() case final value?)
        'results': value,
      if (instance.totalPages case final value?) 'total_pages': value,
      if (instance.totalResults case final value?) 'total_results': value,
    };
