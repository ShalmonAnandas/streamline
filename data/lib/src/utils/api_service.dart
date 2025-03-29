import 'package:dartz/dartz.dart';
import 'package:doh_api_client/doh_api_client.dart';
import 'package:domain/domain.dart';
import 'package:injectable/injectable.dart';

@injectable
class APIClient {
  final _apiClient = DohApiClient();

  APIClient() {
    _apiClient.addInterceptor(PrettyDohLogger());
  }

  Future<Either<GenericError, DohResponse>> getRequest(
      {required String url, Map<String, dynamic>? headers}) async {
    try {
      final response = await _apiClient.get(url: url, headers: headers);

      if (response.statusCode == 200) {
        return right(response);
      } else {
        return left(
          GenericError(
            errorCode: response.statusCode,
            message: response.message,
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
      Either<GenericError, DohResponse> data,
      M Function(Map<String, dynamic> dataMap) onTransform) {
    try {
      return data.fold((GenericError e) => Left(e),
          (DohResponse d) => Right(onTransform(d.data)));
    } catch (e) {
      return Left(GenericError(cause: Exception(e), errorCode: 0));
    }
  }
}
