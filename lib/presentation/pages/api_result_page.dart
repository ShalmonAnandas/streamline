import 'package:flutter/material.dart';
import 'package:streamline/di/main_di.dart';
import 'package:streamline/domain/usecases/cinemeta/cinemeta_api_live_check.dart';
import 'package:streamline/domain/usecases/cinemeta/cinemeta_get_top_movies.dart';
import 'package:streamline/domain/usecases/cinemeta/cinemeta_get_popular_movies.dart';
import 'package:streamline/domain/usecases/cinemeta/cinemeta_get_top_series.dart';
import 'package:streamline/domain/usecases/cinemeta/cinemeta_get_popular_series.dart';
import 'package:streamline/domain/usecases/cinemeta/cinemeta_search_movie.dart';
import 'package:streamline/domain/usecases/cinemeta/cinemeta_search_series.dart';
import 'package:streamline/domain/usecases/cinemeta/cinemeta_get_movie_details.dart';
import 'package:streamline/domain/usecases/cinemeta/cinemeta_get_series_details.dart';
import 'package:streamline/data/models/response_models/cinemeta/cinemeta_meta.dart';
import 'package:streamline/presentation/models/api_endpoint.dart';

class ApiResultPage extends StatefulWidget {
  final ApiEndpoint endpoint;

  const ApiResultPage({super.key, required this.endpoint});

  @override
  State<ApiResultPage> createState() => _ApiResultPageState();
}

class _ApiResultPageState extends State<ApiResultPage> {
  bool isLoading = false;
  String? result;
  String? error;
  List<Meta>? _metaList;
  Meta? _singleMeta;
  final TextEditingController _inputController = TextEditingController();

  @override
  void initState() {
    super.initState();
    if (!widget.endpoint.requiresInput) {
      _callApi();
    }
  }

  @override
  void dispose() {
    _inputController.dispose();
    super.dispose();
  }

  Future<void> _callApi([String? input]) async {
    setState(() {
      isLoading = true;
      result = null;
      error = null;
      _metaList = null;
      _singleMeta = null;
    });

    try {
      switch (widget.endpoint.type) {
        case ApiType.liveCheck:
          final isLive = await getIt<CinemetaApiLiveCheckUsecase>().call();
          result = 'API is ${isLive ? 'Live' : 'Down'}';
          break;

        case ApiType.topMovies:
          final response = await getIt<GetTopMoviesUsecase>().call();
          response.fold(
            (movies) => setState(() => _metaList = movies),
            (err) => error = err.toString(),
          );
          break;

        case ApiType.popularMovies:
          final response = await getIt<GetPopularMoviesUsecase>().call();
          response.fold(
            (movies) => setState(() => _metaList = movies),
            (err) => error = err.toString(),
          );
          break;

        case ApiType.topSeries:
          final response = await getIt<GetTopSeriesUsecase>().call();
          response.fold(
            (series) => setState(() => _metaList = series),
            (err) => error = err.toString(),
          );
          break;

        case ApiType.popularSeries:
          final response = await getIt<GetPopularSeriesUsecase>().call();
          response.fold(
            (series) => setState(() => _metaList = series),
            (err) => error = err.toString(),
          );
          break;

        case ApiType.searchMovie:
          if (input == null || input.isEmpty) {
            error = 'Please enter a search query';
            break;
          }
          final response = await getIt<SearchMovieUsecase>().call(input);
          response.fold(
            (movies) => setState(() => _metaList = movies),
            (err) => error = err.toString(),
          );
          break;

        case ApiType.searchSeries:
          if (input == null || input.isEmpty) {
            error = 'Please enter a search query';
            break;
          }
          final response = await getIt<SearchSeriesUsecase>().call(input);
          response.fold(
            (series) => setState(() => _metaList = series),
            (err) => error = err.toString(),
          );
          break;

        case ApiType.movieDetails:
          if (input == null || input.isEmpty) {
            error = 'Please enter a TMDB ID';
            break;
          }
          final response = await getIt<GetMovieDetailsUsecase>().call(input);
          response.fold(
            (movie) => setState(() => _singleMeta = movie),
            (err) => error = err.toString(),
          );
          break;

        case ApiType.seriesDetails:
          if (input == null || input.isEmpty) {
            error = 'Please enter a TMDB ID';
            break;
          }
          final response = await getIt<GetSeriesDetailsUsecase>().call(input);
          response.fold(
            (series) => setState(() => _singleMeta = series),
            (err) => error = err.toString(),
          );
          break;
      }
    } catch (e) {
      error = 'Error: ${e.toString()}';
    }

    setState(() {
      isLoading = false;
    });
  }

  Widget _buildMetaCard(Meta meta) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              meta.name ?? 'Unknown Title',
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            _buildInfoRow('Type', meta.type),
            _buildInfoRow('Year', meta.year),
            _buildInfoRow('IMDB Rating', meta.imdbRating),
            _buildInfoRow('IMDB ID', meta.imdbId),
            _buildInfoRow('TMDB ID', meta.moviedbId?.toString()),
            _buildInfoRow('TVDB ID', meta.tvdbId),
            _buildInfoRow('Country', meta.country),
            _buildInfoRow('Released', meta.released),
            _buildInfoRow('Runtime', meta.runtime),
            _buildInfoRow('Status', meta.status),
            _buildInfoRow('Awards', meta.awards),
            _buildInfoRow('DVD Release', meta.dvdRelease),
            _buildInfoRow('Release Info', meta.releaseInfo),
            _buildInfoRow('Slug', meta.slug),
            _buildInfoRow('Popularity', meta.popularity?.toString()),
            _buildListRow('Genres', meta.genre),
            _buildListRow('Cast', meta.cast),
            _buildListRow('Writer', meta.writer),
            _buildDirectorRow(meta.director),
            _buildInfoRow('Description', meta.description),
            _buildInfoRow('Poster', meta.poster),
            _buildInfoRow('Background', meta.background),
            _buildInfoRow('Logo', meta.logo),
            if (meta.popularities != null)
              _buildPopularitiesCard(meta.popularities!),
            if (meta.trailers != null && meta.trailers!.isNotEmpty)
              _buildTrailersCard(meta.trailers!),
            if (meta.videos != null && meta.videos!.isNotEmpty)
              _buildVideosCard(meta.videos!),
            if (meta.trailerStreams != null && meta.trailerStreams!.isNotEmpty)
              _buildTrailerStreamsCard(meta.trailerStreams!),
            if (meta.links != null && meta.links!.isNotEmpty)
              _buildLinksCard(meta.links!),
            if (meta.behaviorHints != null)
              _buildBehaviorHintsCard(meta.behaviorHints!),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoRow(String label, String? value) {
    if (value == null || value.isEmpty) return const SizedBox.shrink();
    return Padding(
      padding: const EdgeInsets.only(bottom: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 100,
            child: Text(
              '$label:',
              style: const TextStyle(fontWeight: FontWeight.w500),
            ),
          ),
          Expanded(child: Text(value)),
        ],
      ),
    );
  }

  Widget _buildListRow(String label, List<String>? list) {
    if (list == null || list.isEmpty) return const SizedBox.shrink();
    return Padding(
      padding: const EdgeInsets.only(bottom: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 100,
            child: Text(
              '$label:',
              style: const TextStyle(fontWeight: FontWeight.w500),
            ),
          ),
          Expanded(child: Text(list.join(', '))),
        ],
      ),
    );
  }

  Widget _buildDirectorRow(dynamic director) {
    if (director == null) return const SizedBox.shrink();

    String directorText;
    if (director is List) {
      final directors = director.cast<String>();
      if (directors.isEmpty) return const SizedBox.shrink();
      directorText = directors.join(', ');
    } else {
      directorText = director.toString();
    }

    return _buildInfoRow('Director', directorText);
  }

  Widget _buildPopularitiesCard(Popularities popularities) {
    return Card(
      color: Colors.blue.shade50,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Popularities',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            _buildInfoRow('PXS Test', popularities.pxsTest?.toString()),
            _buildInfoRow('PXS', popularities.pxs?.toString()),
            _buildInfoRow('SCM', popularities.scm?.toString()),
            _buildInfoRow('EXMD', popularities.exmd?.toString()),
            _buildInfoRow('Alliance', popularities.alliance?.toString()),
            _buildInfoRow('EJD', popularities.ejd?.toString()),
            _buildInfoRow('MovieDB', popularities.moviedb?.toString()),
            _buildInfoRow('Trakt', popularities.trakt?.toString()),
            _buildInfoRow('Stremio', popularities.stremio?.toString()),
            _buildInfoRow('Stremio Lib', popularities.stremioLib?.toString()),
          ],
        ),
      ),
    );
  }

  Widget _buildTrailersCard(List<Trailer> trailers) {
    return Card(
      color: Colors.orange.shade50,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Trailers',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            ...trailers.map(
              (trailer) => Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildInfoRow('Source', trailer.source),
                  _buildInfoRow('Type', trailer.type),
                  const Divider(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildVideosCard(List<Video> videos) {
    return Card(
      color: Colors.green.shade50,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Videos/Episodes',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            ...videos
                .take(5)
                .map(
                  (video) => Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildInfoRow('Name', video.name),
                      _buildInfoRow('Season', video.season?.toString()),
                      _buildInfoRow('Episode', video.episode?.toString()),
                      _buildInfoRow('Number', video.number?.toString()),
                      _buildInfoRow('First Aired', video.firstAired),
                      _buildInfoRow('Released', video.released),
                      _buildInfoRow('Rating', video.rating),
                      _buildInfoRow('TVDB ID', video.tvdbId?.toString()),
                      _buildInfoRow('ID', video.id),
                      _buildInfoRow('Thumbnail', video.thumbnail),
                      const Divider(),
                    ],
                  ),
                ),
            if (videos.length > 5)
              Text('... and ${videos.length - 5} more videos'),
          ],
        ),
      ),
    );
  }

  Widget _buildTrailerStreamsCard(List<TrailerStream> trailerStreams) {
    return Card(
      color: Colors.purple.shade50,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Trailer Streams',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            ...trailerStreams.map(
              (stream) => Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildInfoRow('Title', stream.title),
                  _buildInfoRow('YouTube ID', stream.ytId),
                  const Divider(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLinksCard(List<Link> links) {
    return Card(
      color: Colors.red.shade50,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Links', style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            ...links.map(
              (link) => Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildInfoRow('Name', link.name),
                  _buildInfoRow('Category', link.category),
                  _buildInfoRow('URL', link.url),
                  const Divider(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBehaviorHintsCard(BehaviorHints behaviorHints) {
    return Card(
      color: Colors.yellow.shade50,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Behavior Hints',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            _buildInfoRow(
              'Default Video ID',
              behaviorHints.defaultVideoId?.toString(),
            ),
            _buildInfoRow(
              'Has Scheduled Videos',
              behaviorHints.hasScheduledVideos?.toString(),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.endpoint.title),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              widget.endpoint.subtitle,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 16),

            if (widget.endpoint.requiresInput) ...[
              TextField(
                controller: _inputController,
                decoration: InputDecoration(
                  labelText:
                      widget.endpoint.type == ApiType.searchMovie ||
                          widget.endpoint.type == ApiType.searchSeries
                      ? 'Enter search query'
                      : 'Enter TMDB ID',
                  border: const OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: isLoading
                    ? null
                    : () => _callApi(_inputController.text),
                child: isLoading
                    ? const SizedBox(
                        height: 20,
                        width: 20,
                        child: CircularProgressIndicator(strokeWidth: 2),
                      )
                    : const Text('Call API'),
              ),
              const SizedBox(height: 16),
            ],

            if (isLoading && !widget.endpoint.requiresInput)
              const Center(child: CircularProgressIndicator()),

            if (error != null)
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.red.shade50,
                  border: Border.all(color: Colors.red.shade200),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  error!,
                  style: TextStyle(color: Colors.red.shade700),
                ),
              ),

            if (result != null)
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.green.shade50,
                  border: Border.all(color: Colors.green.shade200),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  result!,
                  style: TextStyle(
                    color: Colors.green.shade700,
                    fontFamily: 'monospace',
                  ),
                ),
              ),

            if (_metaList != null)
              Expanded(
                child: _metaList!.isEmpty
                    ? const Center(child: Text('No results found'))
                    : ListView.builder(
                        itemCount: _metaList!.length,
                        itemBuilder: (context, index) {
                          return _buildMetaCard(_metaList![index]);
                        },
                      ),
              ),

            if (_singleMeta != null)
              Expanded(
                child: SingleChildScrollView(
                  child: _buildMetaCard(_singleMeta!),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
