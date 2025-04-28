import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:domain/domain.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

@injectable
class APIClient {
  final _apiClient = Dio();

  APIClient() {
    _apiClient.interceptors.add(PrettyDioLogger());
  }

  Future<Either<GenericError, Map<String, dynamic>>> getRequest(
      {required String url, Map<String, dynamic>? headers}) async {
    try {
      final response = await _apiClient.get(
        url,
        options: Options(headers: headers),
      );

      if (response.statusCode == 200) {
        return right(response.data);
      } else {
        return left(
          GenericError(
            errorCode: response.statusCode ?? 500,
            message: response.statusMessage ?? 'Unknown Error',
            cause: Exception(response.data),
          ),
        );
      }
    } catch (e) {
      return left(GenericError(
          errorCode: 504, message: "Unknown Exception", cause: Exception(e)));
    }
  }

  Either<GenericError, M> apiSafeGuard<M>(
      Either<GenericError, Map<String, dynamic>> data,
      M Function(Map<String, dynamic> dataMap) onTransform) {
    try {
      return data.fold((GenericError e) => Left(e),
          (Map<String, dynamic> d) => Right(onTransform(d)));
    } catch (e) {
      return Left(GenericError(cause: Exception(e), errorCode: 0));
    }
  }
}
