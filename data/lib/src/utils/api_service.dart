import 'package:dartz/dartz.dart';
import 'package:doh_api_client/doh_api_client.dart';
import 'package:domain/domain.dart';

class APIClient {
  final _apiClient = DohApiClient();

  APIClient() {
    _apiClient.addInterceptor(PrettyDohLogger());
  }

  Future<Either<NetworkError, DohResponse>> getRequest(String url) async {
    try {
      final response = await _apiClient.get(url: url);

      if (response.statusCode == 200) {
        return right(response);
      } else {
        return left(
          NetworkError(
            httpError: response.statusCode,
            message: response.message,
            cause: Exception(response.data),
          ),
        );
      }
    } catch (e) {
      return left(NetworkError(
          httpError: 504, message: "Unknown Exception", cause: e as Exception));
    }
  }

  Either<NetworkError, M> apiSafeGuard<M>(
      data, M Function(Map<String, dynamic> dataMap) onTransform) {
    try {
      final dataMap = (data as DohResponse).data;
      return Right(onTransform(dataMap));
    } catch (e) {
      return Left(NetworkError(cause: Exception(e), httpError: 0));
    }
  }
}
