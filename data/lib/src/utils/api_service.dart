import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:domain/domain.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

@injectable
class APIClient {
  final _apiClient = Dio();

  APIClient() {
    _apiClient.interceptors.add(PrettyDioLogger(requestHeader: true));
  }

  Future<Either<GenericError, Response<dynamic>>> getRequest(
      {required String url, Map<String, dynamic>? headers}) async {
    try {
      final response = await _apiClient.get(url,
          options: Options(
              headers: headers,
              sendTimeout: Duration(seconds: 30),
              receiveTimeout: Duration(seconds: 30)));

      if (response.statusCode == 200) {
        return right(response);
      } else {
        return left(
          GenericError(
            errorCode: response.statusCode ?? 0,
            message: response.statusMessage ?? "Unknown Error",
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
      Either<GenericError, Response<dynamic>> data,
      M Function(Map<String, dynamic> dataMap) onTransform) {
    try {
      return data.fold((GenericError e) => Left(e),
          (Response<dynamic> d) => Right(onTransform(d.data)));
    } catch (e) {
      return Left(GenericError(cause: Exception(e), errorCode: 0));
    }
  }
}
