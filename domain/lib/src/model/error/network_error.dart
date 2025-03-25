import 'package:domain/src/model/error/base_error.dart';
import 'package:domain/src/model/error/error_info.dart';

class GenericError extends BaseError {
  GenericError({
    required int errorCode,
    String message = "",
    required super.cause,
  }) : super(error: ErrorInfo(code: errorCode, message: message));

  @override
  String getFriendlyMessage() {
    return error.message;
  }
}
