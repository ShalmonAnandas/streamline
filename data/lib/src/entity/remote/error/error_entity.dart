import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'error_entity.g.dart';

@JsonSerializable()
class ErrorEntity extends Equatable {
  ErrorEntity({
    this.type = '',
    this.code = 0,
    this.message = '',
  });

  final int code;
  final String type;
  final String message;

  factory ErrorEntity.fromJson(Map<String, dynamic> json) {
    return _$ErrorEntityFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ErrorEntityToJson(this);

  @override
  List<Object?> get props => [code, type, message];
}
