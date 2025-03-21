import 'package:equatable/equatable.dart';

class ErrorInfo extends Equatable {
  final String message;
  final int? code;

  ErrorInfo({required this.message, this.code});

  @override
  List<Object?> get props => [message, code];
}
