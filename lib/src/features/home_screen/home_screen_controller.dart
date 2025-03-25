import 'package:domain/domain.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:streamline/core/di/di.dart';

part 'home_screen_controller.g.dart';

@riverpod
class HomeScreenController extends _$HomeScreenController {
  @override
  FutureOr<ResultsModel> build() {
    return getTrendingMovies();
  }

  Future<ResultsModel> getTrendingMovies() async {
    final tmdbRepo = getIt<TMDBRepository>();

    state = AsyncLoading();

    final response = await tmdbRepo.getTrendingMovies();

    return response.fold(
      (error) {
        throw error;
      },
      (resultsModel) {
        state = AsyncData(resultsModel);
        return resultsModel;
      },
    );
  }
}
