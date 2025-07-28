import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:streamline/data/models/response_models/cinemeta/cinemeta_meta.dart';

part 'cinemeta_media_details.freezed.dart';
part 'cinemeta_media_details.g.dart';

@freezed
class CinemetaMediaDetails with _$CinemetaMediaDetails {
  const factory CinemetaMediaDetails({@JsonKey(name: "meta") Meta? meta}) =
      _CinemetaMediaDetails;

  factory CinemetaMediaDetails.fromJson(Map<String, dynamic> json) =>
      _$CinemetaMediaDetailsFromJson(json);
}
