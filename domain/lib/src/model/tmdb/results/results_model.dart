import 'package:domain/src/model/tmdb/media/media_model.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'results_model.g.dart';

@JsonSerializable(
  explicitToJson: true,
  includeIfNull: false
)
class ResultsModel extends Equatable {
  ResultsModel({
    required this.page,
    required this.results,
    required this.totalPages,
    required this.totalResults,
  });

  final int? page;
  
  final List<MediaModel>? results;

  @JsonKey(name: 'total_pages')
  final int? totalPages;

  @JsonKey(name: 'total_results')
  final int? totalResults;

  ResultsModel copyWith({
    int? page,
    List<MediaModel>? results,
    int? totalPages,
    int? totalResults,
  }) {
    return ResultsModel(
      page: page ?? this.page,
      results: results ?? this.results,
      totalPages: totalPages ?? this.totalPages,
      totalResults: totalResults ?? this.totalResults,
    );
  }

  factory ResultsModel.fromJson(Map<String, dynamic> json) =>
      _$ResultsModelFromJson(json);

  Map<String, dynamic> toJson() => _$ResultsModelToJson(this);

  @override
  String toString() {
    return "$page, $results, $totalPages, $totalResults, ";
  }

  @override
  List<Object?> get props => [
        page,
        results,
        totalPages,
        totalResults,
      ];
}