// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cinemeta_meta.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Meta _$MetaFromJson(Map<String, dynamic> json) {
  return _Meta.fromJson(json);
}

/// @nodoc
mixin _$Meta {
  @JsonKey(name: "awards")
  String? get awards => throw _privateConstructorUsedError;
  @JsonKey(name: "cast")
  List<String>? get cast => throw _privateConstructorUsedError;
  @JsonKey(name: "country")
  String? get country => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: "director")
  dynamic get director => throw _privateConstructorUsedError;
  @JsonKey(name: "dvdRelease")
  String? get dvdRelease => throw _privateConstructorUsedError;
  @JsonKey(name: "genre")
  List<String>? get genre => throw _privateConstructorUsedError;
  @JsonKey(name: "imdbRating")
  String? get imdbRating => throw _privateConstructorUsedError;
  @JsonKey(name: "imdb_id")
  String? get imdbId => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "popularity")
  double? get popularity => throw _privateConstructorUsedError;
  @JsonKey(name: "poster")
  String? get poster => throw _privateConstructorUsedError;
  @JsonKey(name: "released")
  String? get released => throw _privateConstructorUsedError;
  @JsonKey(name: "runtime")
  String? get runtime => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "tvdb_id")
  String? get tvdbId => throw _privateConstructorUsedError;
  @JsonKey(name: "type")
  String? get type => throw _privateConstructorUsedError;
  @JsonKey(name: "writer")
  List<String>? get writer => throw _privateConstructorUsedError;
  @JsonKey(name: "year")
  String? get year => throw _privateConstructorUsedError;
  @JsonKey(name: "background")
  String? get background => throw _privateConstructorUsedError;
  @JsonKey(name: "logo")
  String? get logo => throw _privateConstructorUsedError;
  @JsonKey(name: "popularities")
  Popularities? get popularities => throw _privateConstructorUsedError;
  @JsonKey(name: "moviedb_id")
  int? get moviedbId => throw _privateConstructorUsedError;
  @JsonKey(name: "slug")
  String? get slug => throw _privateConstructorUsedError;
  @JsonKey(name: "trailers")
  List<Trailer>? get trailers => throw _privateConstructorUsedError;
  @JsonKey(name: "id")
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "genres")
  List<String>? get genres => throw _privateConstructorUsedError;
  @JsonKey(name: "releaseInfo")
  String? get releaseInfo => throw _privateConstructorUsedError;
  @JsonKey(name: "videos")
  List<Video>? get videos => throw _privateConstructorUsedError;
  @JsonKey(name: "trailerStreams")
  List<TrailerStream>? get trailerStreams => throw _privateConstructorUsedError;
  @JsonKey(name: "links")
  List<Link>? get links => throw _privateConstructorUsedError;
  @JsonKey(name: "behaviorHints")
  BehaviorHints? get behaviorHints => throw _privateConstructorUsedError;

  /// Serializes this Meta to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Meta
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MetaCopyWith<Meta> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetaCopyWith<$Res> {
  factory $MetaCopyWith(Meta value, $Res Function(Meta) then) =
      _$MetaCopyWithImpl<$Res, Meta>;
  @useResult
  $Res call(
      {@JsonKey(name: "awards") String? awards,
      @JsonKey(name: "cast") List<String>? cast,
      @JsonKey(name: "country") String? country,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "director") dynamic director,
      @JsonKey(name: "dvdRelease") String? dvdRelease,
      @JsonKey(name: "genre") List<String>? genre,
      @JsonKey(name: "imdbRating") String? imdbRating,
      @JsonKey(name: "imdb_id") String? imdbId,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "popularity") double? popularity,
      @JsonKey(name: "poster") String? poster,
      @JsonKey(name: "released") String? released,
      @JsonKey(name: "runtime") String? runtime,
      @JsonKey(name: "status") String? status,
      @JsonKey(name: "tvdb_id") String? tvdbId,
      @JsonKey(name: "type") String? type,
      @JsonKey(name: "writer") List<String>? writer,
      @JsonKey(name: "year") String? year,
      @JsonKey(name: "background") String? background,
      @JsonKey(name: "logo") String? logo,
      @JsonKey(name: "popularities") Popularities? popularities,
      @JsonKey(name: "moviedb_id") int? moviedbId,
      @JsonKey(name: "slug") String? slug,
      @JsonKey(name: "trailers") List<Trailer>? trailers,
      @JsonKey(name: "id") String? id,
      @JsonKey(name: "genres") List<String>? genres,
      @JsonKey(name: "releaseInfo") String? releaseInfo,
      @JsonKey(name: "videos") List<Video>? videos,
      @JsonKey(name: "trailerStreams") List<TrailerStream>? trailerStreams,
      @JsonKey(name: "links") List<Link>? links,
      @JsonKey(name: "behaviorHints") BehaviorHints? behaviorHints});

  $PopularitiesCopyWith<$Res>? get popularities;
  $BehaviorHintsCopyWith<$Res>? get behaviorHints;
}

/// @nodoc
class _$MetaCopyWithImpl<$Res, $Val extends Meta>
    implements $MetaCopyWith<$Res> {
  _$MetaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Meta
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? awards = freezed,
    Object? cast = freezed,
    Object? country = freezed,
    Object? description = freezed,
    Object? director = freezed,
    Object? dvdRelease = freezed,
    Object? genre = freezed,
    Object? imdbRating = freezed,
    Object? imdbId = freezed,
    Object? name = freezed,
    Object? popularity = freezed,
    Object? poster = freezed,
    Object? released = freezed,
    Object? runtime = freezed,
    Object? status = freezed,
    Object? tvdbId = freezed,
    Object? type = freezed,
    Object? writer = freezed,
    Object? year = freezed,
    Object? background = freezed,
    Object? logo = freezed,
    Object? popularities = freezed,
    Object? moviedbId = freezed,
    Object? slug = freezed,
    Object? trailers = freezed,
    Object? id = freezed,
    Object? genres = freezed,
    Object? releaseInfo = freezed,
    Object? videos = freezed,
    Object? trailerStreams = freezed,
    Object? links = freezed,
    Object? behaviorHints = freezed,
  }) {
    return _then(_value.copyWith(
      awards: freezed == awards
          ? _value.awards
          : awards // ignore: cast_nullable_to_non_nullable
              as String?,
      cast: freezed == cast
          ? _value.cast
          : cast // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      director: freezed == director
          ? _value.director
          : director // ignore: cast_nullable_to_non_nullable
              as dynamic,
      dvdRelease: freezed == dvdRelease
          ? _value.dvdRelease
          : dvdRelease // ignore: cast_nullable_to_non_nullable
              as String?,
      genre: freezed == genre
          ? _value.genre
          : genre // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      imdbRating: freezed == imdbRating
          ? _value.imdbRating
          : imdbRating // ignore: cast_nullable_to_non_nullable
              as String?,
      imdbId: freezed == imdbId
          ? _value.imdbId
          : imdbId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      popularity: freezed == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double?,
      poster: freezed == poster
          ? _value.poster
          : poster // ignore: cast_nullable_to_non_nullable
              as String?,
      released: freezed == released
          ? _value.released
          : released // ignore: cast_nullable_to_non_nullable
              as String?,
      runtime: freezed == runtime
          ? _value.runtime
          : runtime // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      tvdbId: freezed == tvdbId
          ? _value.tvdbId
          : tvdbId // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      writer: freezed == writer
          ? _value.writer
          : writer // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as String?,
      background: freezed == background
          ? _value.background
          : background // ignore: cast_nullable_to_non_nullable
              as String?,
      logo: freezed == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String?,
      popularities: freezed == popularities
          ? _value.popularities
          : popularities // ignore: cast_nullable_to_non_nullable
              as Popularities?,
      moviedbId: freezed == moviedbId
          ? _value.moviedbId
          : moviedbId // ignore: cast_nullable_to_non_nullable
              as int?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      trailers: freezed == trailers
          ? _value.trailers
          : trailers // ignore: cast_nullable_to_non_nullable
              as List<Trailer>?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      genres: freezed == genres
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      releaseInfo: freezed == releaseInfo
          ? _value.releaseInfo
          : releaseInfo // ignore: cast_nullable_to_non_nullable
              as String?,
      videos: freezed == videos
          ? _value.videos
          : videos // ignore: cast_nullable_to_non_nullable
              as List<Video>?,
      trailerStreams: freezed == trailerStreams
          ? _value.trailerStreams
          : trailerStreams // ignore: cast_nullable_to_non_nullable
              as List<TrailerStream>?,
      links: freezed == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as List<Link>?,
      behaviorHints: freezed == behaviorHints
          ? _value.behaviorHints
          : behaviorHints // ignore: cast_nullable_to_non_nullable
              as BehaviorHints?,
    ) as $Val);
  }

  /// Create a copy of Meta
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PopularitiesCopyWith<$Res>? get popularities {
    if (_value.popularities == null) {
      return null;
    }

    return $PopularitiesCopyWith<$Res>(_value.popularities!, (value) {
      return _then(_value.copyWith(popularities: value) as $Val);
    });
  }

  /// Create a copy of Meta
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BehaviorHintsCopyWith<$Res>? get behaviorHints {
    if (_value.behaviorHints == null) {
      return null;
    }

    return $BehaviorHintsCopyWith<$Res>(_value.behaviorHints!, (value) {
      return _then(_value.copyWith(behaviorHints: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MetaImplCopyWith<$Res> implements $MetaCopyWith<$Res> {
  factory _$$MetaImplCopyWith(
          _$MetaImpl value, $Res Function(_$MetaImpl) then) =
      __$$MetaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "awards") String? awards,
      @JsonKey(name: "cast") List<String>? cast,
      @JsonKey(name: "country") String? country,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "director") dynamic director,
      @JsonKey(name: "dvdRelease") String? dvdRelease,
      @JsonKey(name: "genre") List<String>? genre,
      @JsonKey(name: "imdbRating") String? imdbRating,
      @JsonKey(name: "imdb_id") String? imdbId,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "popularity") double? popularity,
      @JsonKey(name: "poster") String? poster,
      @JsonKey(name: "released") String? released,
      @JsonKey(name: "runtime") String? runtime,
      @JsonKey(name: "status") String? status,
      @JsonKey(name: "tvdb_id") String? tvdbId,
      @JsonKey(name: "type") String? type,
      @JsonKey(name: "writer") List<String>? writer,
      @JsonKey(name: "year") String? year,
      @JsonKey(name: "background") String? background,
      @JsonKey(name: "logo") String? logo,
      @JsonKey(name: "popularities") Popularities? popularities,
      @JsonKey(name: "moviedb_id") int? moviedbId,
      @JsonKey(name: "slug") String? slug,
      @JsonKey(name: "trailers") List<Trailer>? trailers,
      @JsonKey(name: "id") String? id,
      @JsonKey(name: "genres") List<String>? genres,
      @JsonKey(name: "releaseInfo") String? releaseInfo,
      @JsonKey(name: "videos") List<Video>? videos,
      @JsonKey(name: "trailerStreams") List<TrailerStream>? trailerStreams,
      @JsonKey(name: "links") List<Link>? links,
      @JsonKey(name: "behaviorHints") BehaviorHints? behaviorHints});

  @override
  $PopularitiesCopyWith<$Res>? get popularities;
  @override
  $BehaviorHintsCopyWith<$Res>? get behaviorHints;
}

/// @nodoc
class __$$MetaImplCopyWithImpl<$Res>
    extends _$MetaCopyWithImpl<$Res, _$MetaImpl>
    implements _$$MetaImplCopyWith<$Res> {
  __$$MetaImplCopyWithImpl(_$MetaImpl _value, $Res Function(_$MetaImpl) _then)
      : super(_value, _then);

  /// Create a copy of Meta
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? awards = freezed,
    Object? cast = freezed,
    Object? country = freezed,
    Object? description = freezed,
    Object? director = freezed,
    Object? dvdRelease = freezed,
    Object? genre = freezed,
    Object? imdbRating = freezed,
    Object? imdbId = freezed,
    Object? name = freezed,
    Object? popularity = freezed,
    Object? poster = freezed,
    Object? released = freezed,
    Object? runtime = freezed,
    Object? status = freezed,
    Object? tvdbId = freezed,
    Object? type = freezed,
    Object? writer = freezed,
    Object? year = freezed,
    Object? background = freezed,
    Object? logo = freezed,
    Object? popularities = freezed,
    Object? moviedbId = freezed,
    Object? slug = freezed,
    Object? trailers = freezed,
    Object? id = freezed,
    Object? genres = freezed,
    Object? releaseInfo = freezed,
    Object? videos = freezed,
    Object? trailerStreams = freezed,
    Object? links = freezed,
    Object? behaviorHints = freezed,
  }) {
    return _then(_$MetaImpl(
      awards: freezed == awards
          ? _value.awards
          : awards // ignore: cast_nullable_to_non_nullable
              as String?,
      cast: freezed == cast
          ? _value._cast
          : cast // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      director: freezed == director
          ? _value.director
          : director // ignore: cast_nullable_to_non_nullable
              as dynamic,
      dvdRelease: freezed == dvdRelease
          ? _value.dvdRelease
          : dvdRelease // ignore: cast_nullable_to_non_nullable
              as String?,
      genre: freezed == genre
          ? _value._genre
          : genre // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      imdbRating: freezed == imdbRating
          ? _value.imdbRating
          : imdbRating // ignore: cast_nullable_to_non_nullable
              as String?,
      imdbId: freezed == imdbId
          ? _value.imdbId
          : imdbId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      popularity: freezed == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double?,
      poster: freezed == poster
          ? _value.poster
          : poster // ignore: cast_nullable_to_non_nullable
              as String?,
      released: freezed == released
          ? _value.released
          : released // ignore: cast_nullable_to_non_nullable
              as String?,
      runtime: freezed == runtime
          ? _value.runtime
          : runtime // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      tvdbId: freezed == tvdbId
          ? _value.tvdbId
          : tvdbId // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      writer: freezed == writer
          ? _value._writer
          : writer // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as String?,
      background: freezed == background
          ? _value.background
          : background // ignore: cast_nullable_to_non_nullable
              as String?,
      logo: freezed == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String?,
      popularities: freezed == popularities
          ? _value.popularities
          : popularities // ignore: cast_nullable_to_non_nullable
              as Popularities?,
      moviedbId: freezed == moviedbId
          ? _value.moviedbId
          : moviedbId // ignore: cast_nullable_to_non_nullable
              as int?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      trailers: freezed == trailers
          ? _value._trailers
          : trailers // ignore: cast_nullable_to_non_nullable
              as List<Trailer>?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      genres: freezed == genres
          ? _value._genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      releaseInfo: freezed == releaseInfo
          ? _value.releaseInfo
          : releaseInfo // ignore: cast_nullable_to_non_nullable
              as String?,
      videos: freezed == videos
          ? _value._videos
          : videos // ignore: cast_nullable_to_non_nullable
              as List<Video>?,
      trailerStreams: freezed == trailerStreams
          ? _value._trailerStreams
          : trailerStreams // ignore: cast_nullable_to_non_nullable
              as List<TrailerStream>?,
      links: freezed == links
          ? _value._links
          : links // ignore: cast_nullable_to_non_nullable
              as List<Link>?,
      behaviorHints: freezed == behaviorHints
          ? _value.behaviorHints
          : behaviorHints // ignore: cast_nullable_to_non_nullable
              as BehaviorHints?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MetaImpl implements _Meta {
  const _$MetaImpl(
      {@JsonKey(name: "awards") this.awards,
      @JsonKey(name: "cast") final List<String>? cast,
      @JsonKey(name: "country") this.country,
      @JsonKey(name: "description") this.description,
      @JsonKey(name: "director") this.director,
      @JsonKey(name: "dvdRelease") this.dvdRelease,
      @JsonKey(name: "genre") final List<String>? genre,
      @JsonKey(name: "imdbRating") this.imdbRating,
      @JsonKey(name: "imdb_id") this.imdbId,
      @JsonKey(name: "name") this.name,
      @JsonKey(name: "popularity") this.popularity,
      @JsonKey(name: "poster") this.poster,
      @JsonKey(name: "released") this.released,
      @JsonKey(name: "runtime") this.runtime,
      @JsonKey(name: "status") this.status,
      @JsonKey(name: "tvdb_id") this.tvdbId,
      @JsonKey(name: "type") this.type,
      @JsonKey(name: "writer") final List<String>? writer,
      @JsonKey(name: "year") this.year,
      @JsonKey(name: "background") this.background,
      @JsonKey(name: "logo") this.logo,
      @JsonKey(name: "popularities") this.popularities,
      @JsonKey(name: "moviedb_id") this.moviedbId,
      @JsonKey(name: "slug") this.slug,
      @JsonKey(name: "trailers") final List<Trailer>? trailers,
      @JsonKey(name: "id") this.id,
      @JsonKey(name: "genres") final List<String>? genres,
      @JsonKey(name: "releaseInfo") this.releaseInfo,
      @JsonKey(name: "videos") final List<Video>? videos,
      @JsonKey(name: "trailerStreams")
      final List<TrailerStream>? trailerStreams,
      @JsonKey(name: "links") final List<Link>? links,
      @JsonKey(name: "behaviorHints") this.behaviorHints})
      : _cast = cast,
        _genre = genre,
        _writer = writer,
        _trailers = trailers,
        _genres = genres,
        _videos = videos,
        _trailerStreams = trailerStreams,
        _links = links;

  factory _$MetaImpl.fromJson(Map<String, dynamic> json) =>
      _$$MetaImplFromJson(json);

  @override
  @JsonKey(name: "awards")
  final String? awards;
  final List<String>? _cast;
  @override
  @JsonKey(name: "cast")
  List<String>? get cast {
    final value = _cast;
    if (value == null) return null;
    if (_cast is EqualUnmodifiableListView) return _cast;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "country")
  final String? country;
  @override
  @JsonKey(name: "description")
  final String? description;
  @override
  @JsonKey(name: "director")
  final dynamic director;
  @override
  @JsonKey(name: "dvdRelease")
  final String? dvdRelease;
  final List<String>? _genre;
  @override
  @JsonKey(name: "genre")
  List<String>? get genre {
    final value = _genre;
    if (value == null) return null;
    if (_genre is EqualUnmodifiableListView) return _genre;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "imdbRating")
  final String? imdbRating;
  @override
  @JsonKey(name: "imdb_id")
  final String? imdbId;
  @override
  @JsonKey(name: "name")
  final String? name;
  @override
  @JsonKey(name: "popularity")
  final double? popularity;
  @override
  @JsonKey(name: "poster")
  final String? poster;
  @override
  @JsonKey(name: "released")
  final String? released;
  @override
  @JsonKey(name: "runtime")
  final String? runtime;
  @override
  @JsonKey(name: "status")
  final String? status;
  @override
  @JsonKey(name: "tvdb_id")
  final String? tvdbId;
  @override
  @JsonKey(name: "type")
  final String? type;
  final List<String>? _writer;
  @override
  @JsonKey(name: "writer")
  List<String>? get writer {
    final value = _writer;
    if (value == null) return null;
    if (_writer is EqualUnmodifiableListView) return _writer;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "year")
  final String? year;
  @override
  @JsonKey(name: "background")
  final String? background;
  @override
  @JsonKey(name: "logo")
  final String? logo;
  @override
  @JsonKey(name: "popularities")
  final Popularities? popularities;
  @override
  @JsonKey(name: "moviedb_id")
  final int? moviedbId;
  @override
  @JsonKey(name: "slug")
  final String? slug;
  final List<Trailer>? _trailers;
  @override
  @JsonKey(name: "trailers")
  List<Trailer>? get trailers {
    final value = _trailers;
    if (value == null) return null;
    if (_trailers is EqualUnmodifiableListView) return _trailers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "id")
  final String? id;
  final List<String>? _genres;
  @override
  @JsonKey(name: "genres")
  List<String>? get genres {
    final value = _genres;
    if (value == null) return null;
    if (_genres is EqualUnmodifiableListView) return _genres;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "releaseInfo")
  final String? releaseInfo;
  final List<Video>? _videos;
  @override
  @JsonKey(name: "videos")
  List<Video>? get videos {
    final value = _videos;
    if (value == null) return null;
    if (_videos is EqualUnmodifiableListView) return _videos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<TrailerStream>? _trailerStreams;
  @override
  @JsonKey(name: "trailerStreams")
  List<TrailerStream>? get trailerStreams {
    final value = _trailerStreams;
    if (value == null) return null;
    if (_trailerStreams is EqualUnmodifiableListView) return _trailerStreams;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Link>? _links;
  @override
  @JsonKey(name: "links")
  List<Link>? get links {
    final value = _links;
    if (value == null) return null;
    if (_links is EqualUnmodifiableListView) return _links;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "behaviorHints")
  final BehaviorHints? behaviorHints;

  @override
  String toString() {
    return 'Meta(awards: $awards, cast: $cast, country: $country, description: $description, director: $director, dvdRelease: $dvdRelease, genre: $genre, imdbRating: $imdbRating, imdbId: $imdbId, name: $name, popularity: $popularity, poster: $poster, released: $released, runtime: $runtime, status: $status, tvdbId: $tvdbId, type: $type, writer: $writer, year: $year, background: $background, logo: $logo, popularities: $popularities, moviedbId: $moviedbId, slug: $slug, trailers: $trailers, id: $id, genres: $genres, releaseInfo: $releaseInfo, videos: $videos, trailerStreams: $trailerStreams, links: $links, behaviorHints: $behaviorHints)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MetaImpl &&
            (identical(other.awards, awards) || other.awards == awards) &&
            const DeepCollectionEquality().equals(other._cast, _cast) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other.director, director) &&
            (identical(other.dvdRelease, dvdRelease) ||
                other.dvdRelease == dvdRelease) &&
            const DeepCollectionEquality().equals(other._genre, _genre) &&
            (identical(other.imdbRating, imdbRating) ||
                other.imdbRating == imdbRating) &&
            (identical(other.imdbId, imdbId) || other.imdbId == imdbId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.popularity, popularity) ||
                other.popularity == popularity) &&
            (identical(other.poster, poster) || other.poster == poster) &&
            (identical(other.released, released) ||
                other.released == released) &&
            (identical(other.runtime, runtime) || other.runtime == runtime) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.tvdbId, tvdbId) || other.tvdbId == tvdbId) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other._writer, _writer) &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.background, background) ||
                other.background == background) &&
            (identical(other.logo, logo) || other.logo == logo) &&
            (identical(other.popularities, popularities) ||
                other.popularities == popularities) &&
            (identical(other.moviedbId, moviedbId) ||
                other.moviedbId == moviedbId) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            const DeepCollectionEquality().equals(other._trailers, _trailers) &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._genres, _genres) &&
            (identical(other.releaseInfo, releaseInfo) ||
                other.releaseInfo == releaseInfo) &&
            const DeepCollectionEquality().equals(other._videos, _videos) &&
            const DeepCollectionEquality()
                .equals(other._trailerStreams, _trailerStreams) &&
            const DeepCollectionEquality().equals(other._links, _links) &&
            (identical(other.behaviorHints, behaviorHints) ||
                other.behaviorHints == behaviorHints));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        awards,
        const DeepCollectionEquality().hash(_cast),
        country,
        description,
        const DeepCollectionEquality().hash(director),
        dvdRelease,
        const DeepCollectionEquality().hash(_genre),
        imdbRating,
        imdbId,
        name,
        popularity,
        poster,
        released,
        runtime,
        status,
        tvdbId,
        type,
        const DeepCollectionEquality().hash(_writer),
        year,
        background,
        logo,
        popularities,
        moviedbId,
        slug,
        const DeepCollectionEquality().hash(_trailers),
        id,
        const DeepCollectionEquality().hash(_genres),
        releaseInfo,
        const DeepCollectionEquality().hash(_videos),
        const DeepCollectionEquality().hash(_trailerStreams),
        const DeepCollectionEquality().hash(_links),
        behaviorHints
      ]);

  /// Create a copy of Meta
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MetaImplCopyWith<_$MetaImpl> get copyWith =>
      __$$MetaImplCopyWithImpl<_$MetaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MetaImplToJson(
      this,
    );
  }
}

abstract class _Meta implements Meta {
  const factory _Meta(
          {@JsonKey(name: "awards") final String? awards,
          @JsonKey(name: "cast") final List<String>? cast,
          @JsonKey(name: "country") final String? country,
          @JsonKey(name: "description") final String? description,
          @JsonKey(name: "director") final dynamic director,
          @JsonKey(name: "dvdRelease") final String? dvdRelease,
          @JsonKey(name: "genre") final List<String>? genre,
          @JsonKey(name: "imdbRating") final String? imdbRating,
          @JsonKey(name: "imdb_id") final String? imdbId,
          @JsonKey(name: "name") final String? name,
          @JsonKey(name: "popularity") final double? popularity,
          @JsonKey(name: "poster") final String? poster,
          @JsonKey(name: "released") final String? released,
          @JsonKey(name: "runtime") final String? runtime,
          @JsonKey(name: "status") final String? status,
          @JsonKey(name: "tvdb_id") final String? tvdbId,
          @JsonKey(name: "type") final String? type,
          @JsonKey(name: "writer") final List<String>? writer,
          @JsonKey(name: "year") final String? year,
          @JsonKey(name: "background") final String? background,
          @JsonKey(name: "logo") final String? logo,
          @JsonKey(name: "popularities") final Popularities? popularities,
          @JsonKey(name: "moviedb_id") final int? moviedbId,
          @JsonKey(name: "slug") final String? slug,
          @JsonKey(name: "trailers") final List<Trailer>? trailers,
          @JsonKey(name: "id") final String? id,
          @JsonKey(name: "genres") final List<String>? genres,
          @JsonKey(name: "releaseInfo") final String? releaseInfo,
          @JsonKey(name: "videos") final List<Video>? videos,
          @JsonKey(name: "trailerStreams")
          final List<TrailerStream>? trailerStreams,
          @JsonKey(name: "links") final List<Link>? links,
          @JsonKey(name: "behaviorHints") final BehaviorHints? behaviorHints}) =
      _$MetaImpl;

  factory _Meta.fromJson(Map<String, dynamic> json) = _$MetaImpl.fromJson;

  @override
  @JsonKey(name: "awards")
  String? get awards;
  @override
  @JsonKey(name: "cast")
  List<String>? get cast;
  @override
  @JsonKey(name: "country")
  String? get country;
  @override
  @JsonKey(name: "description")
  String? get description;
  @override
  @JsonKey(name: "director")
  dynamic get director;
  @override
  @JsonKey(name: "dvdRelease")
  String? get dvdRelease;
  @override
  @JsonKey(name: "genre")
  List<String>? get genre;
  @override
  @JsonKey(name: "imdbRating")
  String? get imdbRating;
  @override
  @JsonKey(name: "imdb_id")
  String? get imdbId;
  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "popularity")
  double? get popularity;
  @override
  @JsonKey(name: "poster")
  String? get poster;
  @override
  @JsonKey(name: "released")
  String? get released;
  @override
  @JsonKey(name: "runtime")
  String? get runtime;
  @override
  @JsonKey(name: "status")
  String? get status;
  @override
  @JsonKey(name: "tvdb_id")
  String? get tvdbId;
  @override
  @JsonKey(name: "type")
  String? get type;
  @override
  @JsonKey(name: "writer")
  List<String>? get writer;
  @override
  @JsonKey(name: "year")
  String? get year;
  @override
  @JsonKey(name: "background")
  String? get background;
  @override
  @JsonKey(name: "logo")
  String? get logo;
  @override
  @JsonKey(name: "popularities")
  Popularities? get popularities;
  @override
  @JsonKey(name: "moviedb_id")
  int? get moviedbId;
  @override
  @JsonKey(name: "slug")
  String? get slug;
  @override
  @JsonKey(name: "trailers")
  List<Trailer>? get trailers;
  @override
  @JsonKey(name: "id")
  String? get id;
  @override
  @JsonKey(name: "genres")
  List<String>? get genres;
  @override
  @JsonKey(name: "releaseInfo")
  String? get releaseInfo;
  @override
  @JsonKey(name: "videos")
  List<Video>? get videos;
  @override
  @JsonKey(name: "trailerStreams")
  List<TrailerStream>? get trailerStreams;
  @override
  @JsonKey(name: "links")
  List<Link>? get links;
  @override
  @JsonKey(name: "behaviorHints")
  BehaviorHints? get behaviorHints;

  /// Create a copy of Meta
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MetaImplCopyWith<_$MetaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BehaviorHints _$BehaviorHintsFromJson(Map<String, dynamic> json) {
  return _BehaviorHints.fromJson(json);
}

/// @nodoc
mixin _$BehaviorHints {
  @JsonKey(name: "defaultVideoId")
  dynamic get defaultVideoId => throw _privateConstructorUsedError;
  @JsonKey(name: "hasScheduledVideos")
  bool? get hasScheduledVideos => throw _privateConstructorUsedError;

  /// Serializes this BehaviorHints to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BehaviorHints
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BehaviorHintsCopyWith<BehaviorHints> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BehaviorHintsCopyWith<$Res> {
  factory $BehaviorHintsCopyWith(
          BehaviorHints value, $Res Function(BehaviorHints) then) =
      _$BehaviorHintsCopyWithImpl<$Res, BehaviorHints>;
  @useResult
  $Res call(
      {@JsonKey(name: "defaultVideoId") dynamic defaultVideoId,
      @JsonKey(name: "hasScheduledVideos") bool? hasScheduledVideos});
}

/// @nodoc
class _$BehaviorHintsCopyWithImpl<$Res, $Val extends BehaviorHints>
    implements $BehaviorHintsCopyWith<$Res> {
  _$BehaviorHintsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BehaviorHints
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? defaultVideoId = freezed,
    Object? hasScheduledVideos = freezed,
  }) {
    return _then(_value.copyWith(
      defaultVideoId: freezed == defaultVideoId
          ? _value.defaultVideoId
          : defaultVideoId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      hasScheduledVideos: freezed == hasScheduledVideos
          ? _value.hasScheduledVideos
          : hasScheduledVideos // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BehaviorHintsImplCopyWith<$Res>
    implements $BehaviorHintsCopyWith<$Res> {
  factory _$$BehaviorHintsImplCopyWith(
          _$BehaviorHintsImpl value, $Res Function(_$BehaviorHintsImpl) then) =
      __$$BehaviorHintsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "defaultVideoId") dynamic defaultVideoId,
      @JsonKey(name: "hasScheduledVideos") bool? hasScheduledVideos});
}

/// @nodoc
class __$$BehaviorHintsImplCopyWithImpl<$Res>
    extends _$BehaviorHintsCopyWithImpl<$Res, _$BehaviorHintsImpl>
    implements _$$BehaviorHintsImplCopyWith<$Res> {
  __$$BehaviorHintsImplCopyWithImpl(
      _$BehaviorHintsImpl _value, $Res Function(_$BehaviorHintsImpl) _then)
      : super(_value, _then);

  /// Create a copy of BehaviorHints
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? defaultVideoId = freezed,
    Object? hasScheduledVideos = freezed,
  }) {
    return _then(_$BehaviorHintsImpl(
      defaultVideoId: freezed == defaultVideoId
          ? _value.defaultVideoId
          : defaultVideoId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      hasScheduledVideos: freezed == hasScheduledVideos
          ? _value.hasScheduledVideos
          : hasScheduledVideos // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BehaviorHintsImpl implements _BehaviorHints {
  const _$BehaviorHintsImpl(
      {@JsonKey(name: "defaultVideoId") this.defaultVideoId,
      @JsonKey(name: "hasScheduledVideos") this.hasScheduledVideos});

  factory _$BehaviorHintsImpl.fromJson(Map<String, dynamic> json) =>
      _$$BehaviorHintsImplFromJson(json);

  @override
  @JsonKey(name: "defaultVideoId")
  final dynamic defaultVideoId;
  @override
  @JsonKey(name: "hasScheduledVideos")
  final bool? hasScheduledVideos;

  @override
  String toString() {
    return 'BehaviorHints(defaultVideoId: $defaultVideoId, hasScheduledVideos: $hasScheduledVideos)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BehaviorHintsImpl &&
            const DeepCollectionEquality()
                .equals(other.defaultVideoId, defaultVideoId) &&
            (identical(other.hasScheduledVideos, hasScheduledVideos) ||
                other.hasScheduledVideos == hasScheduledVideos));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(defaultVideoId), hasScheduledVideos);

  /// Create a copy of BehaviorHints
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BehaviorHintsImplCopyWith<_$BehaviorHintsImpl> get copyWith =>
      __$$BehaviorHintsImplCopyWithImpl<_$BehaviorHintsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BehaviorHintsImplToJson(
      this,
    );
  }
}

abstract class _BehaviorHints implements BehaviorHints {
  const factory _BehaviorHints(
      {@JsonKey(name: "defaultVideoId") final dynamic defaultVideoId,
      @JsonKey(name: "hasScheduledVideos")
      final bool? hasScheduledVideos}) = _$BehaviorHintsImpl;

  factory _BehaviorHints.fromJson(Map<String, dynamic> json) =
      _$BehaviorHintsImpl.fromJson;

  @override
  @JsonKey(name: "defaultVideoId")
  dynamic get defaultVideoId;
  @override
  @JsonKey(name: "hasScheduledVideos")
  bool? get hasScheduledVideos;

  /// Create a copy of BehaviorHints
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BehaviorHintsImplCopyWith<_$BehaviorHintsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Link _$LinkFromJson(Map<String, dynamic> json) {
  return _Link.fromJson(json);
}

/// @nodoc
mixin _$Link {
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "category")
  String? get category => throw _privateConstructorUsedError;
  @JsonKey(name: "url")
  String? get url => throw _privateConstructorUsedError;

  /// Serializes this Link to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Link
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LinkCopyWith<Link> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LinkCopyWith<$Res> {
  factory $LinkCopyWith(Link value, $Res Function(Link) then) =
      _$LinkCopyWithImpl<$Res, Link>;
  @useResult
  $Res call(
      {@JsonKey(name: "name") String? name,
      @JsonKey(name: "category") String? category,
      @JsonKey(name: "url") String? url});
}

/// @nodoc
class _$LinkCopyWithImpl<$Res, $Val extends Link>
    implements $LinkCopyWith<$Res> {
  _$LinkCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Link
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? category = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LinkImplCopyWith<$Res> implements $LinkCopyWith<$Res> {
  factory _$$LinkImplCopyWith(
          _$LinkImpl value, $Res Function(_$LinkImpl) then) =
      __$$LinkImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "name") String? name,
      @JsonKey(name: "category") String? category,
      @JsonKey(name: "url") String? url});
}

/// @nodoc
class __$$LinkImplCopyWithImpl<$Res>
    extends _$LinkCopyWithImpl<$Res, _$LinkImpl>
    implements _$$LinkImplCopyWith<$Res> {
  __$$LinkImplCopyWithImpl(_$LinkImpl _value, $Res Function(_$LinkImpl) _then)
      : super(_value, _then);

  /// Create a copy of Link
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? category = freezed,
    Object? url = freezed,
  }) {
    return _then(_$LinkImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LinkImpl implements _Link {
  const _$LinkImpl(
      {@JsonKey(name: "name") this.name,
      @JsonKey(name: "category") this.category,
      @JsonKey(name: "url") this.url});

  factory _$LinkImpl.fromJson(Map<String, dynamic> json) =>
      _$$LinkImplFromJson(json);

  @override
  @JsonKey(name: "name")
  final String? name;
  @override
  @JsonKey(name: "category")
  final String? category;
  @override
  @JsonKey(name: "url")
  final String? url;

  @override
  String toString() {
    return 'Link(name: $name, category: $category, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LinkImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, category, url);

  /// Create a copy of Link
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LinkImplCopyWith<_$LinkImpl> get copyWith =>
      __$$LinkImplCopyWithImpl<_$LinkImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LinkImplToJson(
      this,
    );
  }
}

abstract class _Link implements Link {
  const factory _Link(
      {@JsonKey(name: "name") final String? name,
      @JsonKey(name: "category") final String? category,
      @JsonKey(name: "url") final String? url}) = _$LinkImpl;

  factory _Link.fromJson(Map<String, dynamic> json) = _$LinkImpl.fromJson;

  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "category")
  String? get category;
  @override
  @JsonKey(name: "url")
  String? get url;

  /// Create a copy of Link
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LinkImplCopyWith<_$LinkImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Popularities _$PopularitiesFromJson(Map<String, dynamic> json) {
  return _Popularities.fromJson(json);
}

/// @nodoc
mixin _$Popularities {
  @JsonKey(name: "PXS_TEST")
  int? get pxsTest => throw _privateConstructorUsedError;
  @JsonKey(name: "PXS")
  int? get pxs => throw _privateConstructorUsedError;
  @JsonKey(name: "SCM")
  double? get scm => throw _privateConstructorUsedError;
  @JsonKey(name: "EXMD")
  int? get exmd => throw _privateConstructorUsedError;
  @JsonKey(name: "ALLIANCE")
  int? get alliance => throw _privateConstructorUsedError;
  @JsonKey(name: "EJD")
  double? get ejd => throw _privateConstructorUsedError;
  @JsonKey(name: "moviedb")
  double? get moviedb => throw _privateConstructorUsedError;
  @JsonKey(name: "trakt")
  int? get trakt => throw _privateConstructorUsedError;
  @JsonKey(name: "stremio")
  double? get stremio => throw _privateConstructorUsedError;
  @JsonKey(name: "stremio_lib")
  int? get stremioLib => throw _privateConstructorUsedError;

  /// Serializes this Popularities to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Popularities
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PopularitiesCopyWith<Popularities> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PopularitiesCopyWith<$Res> {
  factory $PopularitiesCopyWith(
          Popularities value, $Res Function(Popularities) then) =
      _$PopularitiesCopyWithImpl<$Res, Popularities>;
  @useResult
  $Res call(
      {@JsonKey(name: "PXS_TEST") int? pxsTest,
      @JsonKey(name: "PXS") int? pxs,
      @JsonKey(name: "SCM") double? scm,
      @JsonKey(name: "EXMD") int? exmd,
      @JsonKey(name: "ALLIANCE") int? alliance,
      @JsonKey(name: "EJD") double? ejd,
      @JsonKey(name: "moviedb") double? moviedb,
      @JsonKey(name: "trakt") int? trakt,
      @JsonKey(name: "stremio") double? stremio,
      @JsonKey(name: "stremio_lib") int? stremioLib});
}

/// @nodoc
class _$PopularitiesCopyWithImpl<$Res, $Val extends Popularities>
    implements $PopularitiesCopyWith<$Res> {
  _$PopularitiesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Popularities
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pxsTest = freezed,
    Object? pxs = freezed,
    Object? scm = freezed,
    Object? exmd = freezed,
    Object? alliance = freezed,
    Object? ejd = freezed,
    Object? moviedb = freezed,
    Object? trakt = freezed,
    Object? stremio = freezed,
    Object? stremioLib = freezed,
  }) {
    return _then(_value.copyWith(
      pxsTest: freezed == pxsTest
          ? _value.pxsTest
          : pxsTest // ignore: cast_nullable_to_non_nullable
              as int?,
      pxs: freezed == pxs
          ? _value.pxs
          : pxs // ignore: cast_nullable_to_non_nullable
              as int?,
      scm: freezed == scm
          ? _value.scm
          : scm // ignore: cast_nullable_to_non_nullable
              as double?,
      exmd: freezed == exmd
          ? _value.exmd
          : exmd // ignore: cast_nullable_to_non_nullable
              as int?,
      alliance: freezed == alliance
          ? _value.alliance
          : alliance // ignore: cast_nullable_to_non_nullable
              as int?,
      ejd: freezed == ejd
          ? _value.ejd
          : ejd // ignore: cast_nullable_to_non_nullable
              as double?,
      moviedb: freezed == moviedb
          ? _value.moviedb
          : moviedb // ignore: cast_nullable_to_non_nullable
              as double?,
      trakt: freezed == trakt
          ? _value.trakt
          : trakt // ignore: cast_nullable_to_non_nullable
              as int?,
      stremio: freezed == stremio
          ? _value.stremio
          : stremio // ignore: cast_nullable_to_non_nullable
              as double?,
      stremioLib: freezed == stremioLib
          ? _value.stremioLib
          : stremioLib // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PopularitiesImplCopyWith<$Res>
    implements $PopularitiesCopyWith<$Res> {
  factory _$$PopularitiesImplCopyWith(
          _$PopularitiesImpl value, $Res Function(_$PopularitiesImpl) then) =
      __$$PopularitiesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "PXS_TEST") int? pxsTest,
      @JsonKey(name: "PXS") int? pxs,
      @JsonKey(name: "SCM") double? scm,
      @JsonKey(name: "EXMD") int? exmd,
      @JsonKey(name: "ALLIANCE") int? alliance,
      @JsonKey(name: "EJD") double? ejd,
      @JsonKey(name: "moviedb") double? moviedb,
      @JsonKey(name: "trakt") int? trakt,
      @JsonKey(name: "stremio") double? stremio,
      @JsonKey(name: "stremio_lib") int? stremioLib});
}

/// @nodoc
class __$$PopularitiesImplCopyWithImpl<$Res>
    extends _$PopularitiesCopyWithImpl<$Res, _$PopularitiesImpl>
    implements _$$PopularitiesImplCopyWith<$Res> {
  __$$PopularitiesImplCopyWithImpl(
      _$PopularitiesImpl _value, $Res Function(_$PopularitiesImpl) _then)
      : super(_value, _then);

  /// Create a copy of Popularities
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pxsTest = freezed,
    Object? pxs = freezed,
    Object? scm = freezed,
    Object? exmd = freezed,
    Object? alliance = freezed,
    Object? ejd = freezed,
    Object? moviedb = freezed,
    Object? trakt = freezed,
    Object? stremio = freezed,
    Object? stremioLib = freezed,
  }) {
    return _then(_$PopularitiesImpl(
      pxsTest: freezed == pxsTest
          ? _value.pxsTest
          : pxsTest // ignore: cast_nullable_to_non_nullable
              as int?,
      pxs: freezed == pxs
          ? _value.pxs
          : pxs // ignore: cast_nullable_to_non_nullable
              as int?,
      scm: freezed == scm
          ? _value.scm
          : scm // ignore: cast_nullable_to_non_nullable
              as double?,
      exmd: freezed == exmd
          ? _value.exmd
          : exmd // ignore: cast_nullable_to_non_nullable
              as int?,
      alliance: freezed == alliance
          ? _value.alliance
          : alliance // ignore: cast_nullable_to_non_nullable
              as int?,
      ejd: freezed == ejd
          ? _value.ejd
          : ejd // ignore: cast_nullable_to_non_nullable
              as double?,
      moviedb: freezed == moviedb
          ? _value.moviedb
          : moviedb // ignore: cast_nullable_to_non_nullable
              as double?,
      trakt: freezed == trakt
          ? _value.trakt
          : trakt // ignore: cast_nullable_to_non_nullable
              as int?,
      stremio: freezed == stremio
          ? _value.stremio
          : stremio // ignore: cast_nullable_to_non_nullable
              as double?,
      stremioLib: freezed == stremioLib
          ? _value.stremioLib
          : stremioLib // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PopularitiesImpl implements _Popularities {
  const _$PopularitiesImpl(
      {@JsonKey(name: "PXS_TEST") this.pxsTest,
      @JsonKey(name: "PXS") this.pxs,
      @JsonKey(name: "SCM") this.scm,
      @JsonKey(name: "EXMD") this.exmd,
      @JsonKey(name: "ALLIANCE") this.alliance,
      @JsonKey(name: "EJD") this.ejd,
      @JsonKey(name: "moviedb") this.moviedb,
      @JsonKey(name: "trakt") this.trakt,
      @JsonKey(name: "stremio") this.stremio,
      @JsonKey(name: "stremio_lib") this.stremioLib});

  factory _$PopularitiesImpl.fromJson(Map<String, dynamic> json) =>
      _$$PopularitiesImplFromJson(json);

  @override
  @JsonKey(name: "PXS_TEST")
  final int? pxsTest;
  @override
  @JsonKey(name: "PXS")
  final int? pxs;
  @override
  @JsonKey(name: "SCM")
  final double? scm;
  @override
  @JsonKey(name: "EXMD")
  final int? exmd;
  @override
  @JsonKey(name: "ALLIANCE")
  final int? alliance;
  @override
  @JsonKey(name: "EJD")
  final double? ejd;
  @override
  @JsonKey(name: "moviedb")
  final double? moviedb;
  @override
  @JsonKey(name: "trakt")
  final int? trakt;
  @override
  @JsonKey(name: "stremio")
  final double? stremio;
  @override
  @JsonKey(name: "stremio_lib")
  final int? stremioLib;

  @override
  String toString() {
    return 'Popularities(pxsTest: $pxsTest, pxs: $pxs, scm: $scm, exmd: $exmd, alliance: $alliance, ejd: $ejd, moviedb: $moviedb, trakt: $trakt, stremio: $stremio, stremioLib: $stremioLib)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PopularitiesImpl &&
            (identical(other.pxsTest, pxsTest) || other.pxsTest == pxsTest) &&
            (identical(other.pxs, pxs) || other.pxs == pxs) &&
            (identical(other.scm, scm) || other.scm == scm) &&
            (identical(other.exmd, exmd) || other.exmd == exmd) &&
            (identical(other.alliance, alliance) ||
                other.alliance == alliance) &&
            (identical(other.ejd, ejd) || other.ejd == ejd) &&
            (identical(other.moviedb, moviedb) || other.moviedb == moviedb) &&
            (identical(other.trakt, trakt) || other.trakt == trakt) &&
            (identical(other.stremio, stremio) || other.stremio == stremio) &&
            (identical(other.stremioLib, stremioLib) ||
                other.stremioLib == stremioLib));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, pxsTest, pxs, scm, exmd,
      alliance, ejd, moviedb, trakt, stremio, stremioLib);

  /// Create a copy of Popularities
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PopularitiesImplCopyWith<_$PopularitiesImpl> get copyWith =>
      __$$PopularitiesImplCopyWithImpl<_$PopularitiesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PopularitiesImplToJson(
      this,
    );
  }
}

abstract class _Popularities implements Popularities {
  const factory _Popularities(
          {@JsonKey(name: "PXS_TEST") final int? pxsTest,
          @JsonKey(name: "PXS") final int? pxs,
          @JsonKey(name: "SCM") final double? scm,
          @JsonKey(name: "EXMD") final int? exmd,
          @JsonKey(name: "ALLIANCE") final int? alliance,
          @JsonKey(name: "EJD") final double? ejd,
          @JsonKey(name: "moviedb") final double? moviedb,
          @JsonKey(name: "trakt") final int? trakt,
          @JsonKey(name: "stremio") final double? stremio,
          @JsonKey(name: "stremio_lib") final int? stremioLib}) =
      _$PopularitiesImpl;

  factory _Popularities.fromJson(Map<String, dynamic> json) =
      _$PopularitiesImpl.fromJson;

  @override
  @JsonKey(name: "PXS_TEST")
  int? get pxsTest;
  @override
  @JsonKey(name: "PXS")
  int? get pxs;
  @override
  @JsonKey(name: "SCM")
  double? get scm;
  @override
  @JsonKey(name: "EXMD")
  int? get exmd;
  @override
  @JsonKey(name: "ALLIANCE")
  int? get alliance;
  @override
  @JsonKey(name: "EJD")
  double? get ejd;
  @override
  @JsonKey(name: "moviedb")
  double? get moviedb;
  @override
  @JsonKey(name: "trakt")
  int? get trakt;
  @override
  @JsonKey(name: "stremio")
  double? get stremio;
  @override
  @JsonKey(name: "stremio_lib")
  int? get stremioLib;

  /// Create a copy of Popularities
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PopularitiesImplCopyWith<_$PopularitiesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TrailerStream _$TrailerStreamFromJson(Map<String, dynamic> json) {
  return _TrailerStream.fromJson(json);
}

/// @nodoc
mixin _$TrailerStream {
  @JsonKey(name: "title")
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: "ytId")
  String? get ytId => throw _privateConstructorUsedError;

  /// Serializes this TrailerStream to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TrailerStream
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TrailerStreamCopyWith<TrailerStream> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrailerStreamCopyWith<$Res> {
  factory $TrailerStreamCopyWith(
          TrailerStream value, $Res Function(TrailerStream) then) =
      _$TrailerStreamCopyWithImpl<$Res, TrailerStream>;
  @useResult
  $Res call(
      {@JsonKey(name: "title") String? title,
      @JsonKey(name: "ytId") String? ytId});
}

/// @nodoc
class _$TrailerStreamCopyWithImpl<$Res, $Val extends TrailerStream>
    implements $TrailerStreamCopyWith<$Res> {
  _$TrailerStreamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TrailerStream
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? ytId = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      ytId: freezed == ytId
          ? _value.ytId
          : ytId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TrailerStreamImplCopyWith<$Res>
    implements $TrailerStreamCopyWith<$Res> {
  factory _$$TrailerStreamImplCopyWith(
          _$TrailerStreamImpl value, $Res Function(_$TrailerStreamImpl) then) =
      __$$TrailerStreamImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "title") String? title,
      @JsonKey(name: "ytId") String? ytId});
}

/// @nodoc
class __$$TrailerStreamImplCopyWithImpl<$Res>
    extends _$TrailerStreamCopyWithImpl<$Res, _$TrailerStreamImpl>
    implements _$$TrailerStreamImplCopyWith<$Res> {
  __$$TrailerStreamImplCopyWithImpl(
      _$TrailerStreamImpl _value, $Res Function(_$TrailerStreamImpl) _then)
      : super(_value, _then);

  /// Create a copy of TrailerStream
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? ytId = freezed,
  }) {
    return _then(_$TrailerStreamImpl(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      ytId: freezed == ytId
          ? _value.ytId
          : ytId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TrailerStreamImpl implements _TrailerStream {
  const _$TrailerStreamImpl(
      {@JsonKey(name: "title") this.title, @JsonKey(name: "ytId") this.ytId});

  factory _$TrailerStreamImpl.fromJson(Map<String, dynamic> json) =>
      _$$TrailerStreamImplFromJson(json);

  @override
  @JsonKey(name: "title")
  final String? title;
  @override
  @JsonKey(name: "ytId")
  final String? ytId;

  @override
  String toString() {
    return 'TrailerStream(title: $title, ytId: $ytId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrailerStreamImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.ytId, ytId) || other.ytId == ytId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title, ytId);

  /// Create a copy of TrailerStream
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TrailerStreamImplCopyWith<_$TrailerStreamImpl> get copyWith =>
      __$$TrailerStreamImplCopyWithImpl<_$TrailerStreamImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TrailerStreamImplToJson(
      this,
    );
  }
}

abstract class _TrailerStream implements TrailerStream {
  const factory _TrailerStream(
      {@JsonKey(name: "title") final String? title,
      @JsonKey(name: "ytId") final String? ytId}) = _$TrailerStreamImpl;

  factory _TrailerStream.fromJson(Map<String, dynamic> json) =
      _$TrailerStreamImpl.fromJson;

  @override
  @JsonKey(name: "title")
  String? get title;
  @override
  @JsonKey(name: "ytId")
  String? get ytId;

  /// Create a copy of TrailerStream
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TrailerStreamImplCopyWith<_$TrailerStreamImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Trailer _$TrailerFromJson(Map<String, dynamic> json) {
  return _Trailer.fromJson(json);
}

/// @nodoc
mixin _$Trailer {
  @JsonKey(name: "source")
  String? get source => throw _privateConstructorUsedError;
  @JsonKey(name: "type")
  String? get type => throw _privateConstructorUsedError;

  /// Serializes this Trailer to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Trailer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TrailerCopyWith<Trailer> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrailerCopyWith<$Res> {
  factory $TrailerCopyWith(Trailer value, $Res Function(Trailer) then) =
      _$TrailerCopyWithImpl<$Res, Trailer>;
  @useResult
  $Res call(
      {@JsonKey(name: "source") String? source,
      @JsonKey(name: "type") String? type});
}

/// @nodoc
class _$TrailerCopyWithImpl<$Res, $Val extends Trailer>
    implements $TrailerCopyWith<$Res> {
  _$TrailerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Trailer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? source = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TrailerImplCopyWith<$Res> implements $TrailerCopyWith<$Res> {
  factory _$$TrailerImplCopyWith(
          _$TrailerImpl value, $Res Function(_$TrailerImpl) then) =
      __$$TrailerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "source") String? source,
      @JsonKey(name: "type") String? type});
}

/// @nodoc
class __$$TrailerImplCopyWithImpl<$Res>
    extends _$TrailerCopyWithImpl<$Res, _$TrailerImpl>
    implements _$$TrailerImplCopyWith<$Res> {
  __$$TrailerImplCopyWithImpl(
      _$TrailerImpl _value, $Res Function(_$TrailerImpl) _then)
      : super(_value, _then);

  /// Create a copy of Trailer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? source = freezed,
    Object? type = freezed,
  }) {
    return _then(_$TrailerImpl(
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TrailerImpl implements _Trailer {
  const _$TrailerImpl(
      {@JsonKey(name: "source") this.source, @JsonKey(name: "type") this.type});

  factory _$TrailerImpl.fromJson(Map<String, dynamic> json) =>
      _$$TrailerImplFromJson(json);

  @override
  @JsonKey(name: "source")
  final String? source;
  @override
  @JsonKey(name: "type")
  final String? type;

  @override
  String toString() {
    return 'Trailer(source: $source, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrailerImpl &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, source, type);

  /// Create a copy of Trailer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TrailerImplCopyWith<_$TrailerImpl> get copyWith =>
      __$$TrailerImplCopyWithImpl<_$TrailerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TrailerImplToJson(
      this,
    );
  }
}

abstract class _Trailer implements Trailer {
  const factory _Trailer(
      {@JsonKey(name: "source") final String? source,
      @JsonKey(name: "type") final String? type}) = _$TrailerImpl;

  factory _Trailer.fromJson(Map<String, dynamic> json) = _$TrailerImpl.fromJson;

  @override
  @JsonKey(name: "source")
  String? get source;
  @override
  @JsonKey(name: "type")
  String? get type;

  /// Create a copy of Trailer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TrailerImplCopyWith<_$TrailerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Video _$VideoFromJson(Map<String, dynamic> json) {
  return _Video.fromJson(json);
}

/// @nodoc
mixin _$Video {
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "season")
  int? get season => throw _privateConstructorUsedError;
  @JsonKey(name: "number")
  int? get number => throw _privateConstructorUsedError;
  @JsonKey(name: "firstAired")
  String? get firstAired => throw _privateConstructorUsedError;
  @JsonKey(name: "tvdb_id")
  int? get tvdbId => throw _privateConstructorUsedError;
  @JsonKey(name: "rating")
  String? get rating => throw _privateConstructorUsedError;
  @JsonKey(name: "thumbnail")
  String? get thumbnail => throw _privateConstructorUsedError;
  @JsonKey(name: "id")
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "released")
  String? get released => throw _privateConstructorUsedError;
  @JsonKey(name: "episode")
  int? get episode => throw _privateConstructorUsedError;

  /// Serializes this Video to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Video
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VideoCopyWith<Video> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoCopyWith<$Res> {
  factory $VideoCopyWith(Video value, $Res Function(Video) then) =
      _$VideoCopyWithImpl<$Res, Video>;
  @useResult
  $Res call(
      {@JsonKey(name: "name") String? name,
      @JsonKey(name: "season") int? season,
      @JsonKey(name: "number") int? number,
      @JsonKey(name: "firstAired") String? firstAired,
      @JsonKey(name: "tvdb_id") int? tvdbId,
      @JsonKey(name: "rating") String? rating,
      @JsonKey(name: "thumbnail") String? thumbnail,
      @JsonKey(name: "id") String? id,
      @JsonKey(name: "released") String? released,
      @JsonKey(name: "episode") int? episode});
}

/// @nodoc
class _$VideoCopyWithImpl<$Res, $Val extends Video>
    implements $VideoCopyWith<$Res> {
  _$VideoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Video
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? season = freezed,
    Object? number = freezed,
    Object? firstAired = freezed,
    Object? tvdbId = freezed,
    Object? rating = freezed,
    Object? thumbnail = freezed,
    Object? id = freezed,
    Object? released = freezed,
    Object? episode = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      season: freezed == season
          ? _value.season
          : season // ignore: cast_nullable_to_non_nullable
              as int?,
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int?,
      firstAired: freezed == firstAired
          ? _value.firstAired
          : firstAired // ignore: cast_nullable_to_non_nullable
              as String?,
      tvdbId: freezed == tvdbId
          ? _value.tvdbId
          : tvdbId // ignore: cast_nullable_to_non_nullable
              as int?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      released: freezed == released
          ? _value.released
          : released // ignore: cast_nullable_to_non_nullable
              as String?,
      episode: freezed == episode
          ? _value.episode
          : episode // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VideoImplCopyWith<$Res> implements $VideoCopyWith<$Res> {
  factory _$$VideoImplCopyWith(
          _$VideoImpl value, $Res Function(_$VideoImpl) then) =
      __$$VideoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "name") String? name,
      @JsonKey(name: "season") int? season,
      @JsonKey(name: "number") int? number,
      @JsonKey(name: "firstAired") String? firstAired,
      @JsonKey(name: "tvdb_id") int? tvdbId,
      @JsonKey(name: "rating") String? rating,
      @JsonKey(name: "thumbnail") String? thumbnail,
      @JsonKey(name: "id") String? id,
      @JsonKey(name: "released") String? released,
      @JsonKey(name: "episode") int? episode});
}

/// @nodoc
class __$$VideoImplCopyWithImpl<$Res>
    extends _$VideoCopyWithImpl<$Res, _$VideoImpl>
    implements _$$VideoImplCopyWith<$Res> {
  __$$VideoImplCopyWithImpl(
      _$VideoImpl _value, $Res Function(_$VideoImpl) _then)
      : super(_value, _then);

  /// Create a copy of Video
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? season = freezed,
    Object? number = freezed,
    Object? firstAired = freezed,
    Object? tvdbId = freezed,
    Object? rating = freezed,
    Object? thumbnail = freezed,
    Object? id = freezed,
    Object? released = freezed,
    Object? episode = freezed,
  }) {
    return _then(_$VideoImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      season: freezed == season
          ? _value.season
          : season // ignore: cast_nullable_to_non_nullable
              as int?,
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int?,
      firstAired: freezed == firstAired
          ? _value.firstAired
          : firstAired // ignore: cast_nullable_to_non_nullable
              as String?,
      tvdbId: freezed == tvdbId
          ? _value.tvdbId
          : tvdbId // ignore: cast_nullable_to_non_nullable
              as int?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      released: freezed == released
          ? _value.released
          : released // ignore: cast_nullable_to_non_nullable
              as String?,
      episode: freezed == episode
          ? _value.episode
          : episode // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VideoImpl implements _Video {
  const _$VideoImpl(
      {@JsonKey(name: "name") this.name,
      @JsonKey(name: "season") this.season,
      @JsonKey(name: "number") this.number,
      @JsonKey(name: "firstAired") this.firstAired,
      @JsonKey(name: "tvdb_id") this.tvdbId,
      @JsonKey(name: "rating") this.rating,
      @JsonKey(name: "thumbnail") this.thumbnail,
      @JsonKey(name: "id") this.id,
      @JsonKey(name: "released") this.released,
      @JsonKey(name: "episode") this.episode});

  factory _$VideoImpl.fromJson(Map<String, dynamic> json) =>
      _$$VideoImplFromJson(json);

  @override
  @JsonKey(name: "name")
  final String? name;
  @override
  @JsonKey(name: "season")
  final int? season;
  @override
  @JsonKey(name: "number")
  final int? number;
  @override
  @JsonKey(name: "firstAired")
  final String? firstAired;
  @override
  @JsonKey(name: "tvdb_id")
  final int? tvdbId;
  @override
  @JsonKey(name: "rating")
  final String? rating;
  @override
  @JsonKey(name: "thumbnail")
  final String? thumbnail;
  @override
  @JsonKey(name: "id")
  final String? id;
  @override
  @JsonKey(name: "released")
  final String? released;
  @override
  @JsonKey(name: "episode")
  final int? episode;

  @override
  String toString() {
    return 'Video(name: $name, season: $season, number: $number, firstAired: $firstAired, tvdbId: $tvdbId, rating: $rating, thumbnail: $thumbnail, id: $id, released: $released, episode: $episode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VideoImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.season, season) || other.season == season) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.firstAired, firstAired) ||
                other.firstAired == firstAired) &&
            (identical(other.tvdbId, tvdbId) || other.tvdbId == tvdbId) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.released, released) ||
                other.released == released) &&
            (identical(other.episode, episode) || other.episode == episode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, season, number, firstAired,
      tvdbId, rating, thumbnail, id, released, episode);

  /// Create a copy of Video
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VideoImplCopyWith<_$VideoImpl> get copyWith =>
      __$$VideoImplCopyWithImpl<_$VideoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VideoImplToJson(
      this,
    );
  }
}

abstract class _Video implements Video {
  const factory _Video(
      {@JsonKey(name: "name") final String? name,
      @JsonKey(name: "season") final int? season,
      @JsonKey(name: "number") final int? number,
      @JsonKey(name: "firstAired") final String? firstAired,
      @JsonKey(name: "tvdb_id") final int? tvdbId,
      @JsonKey(name: "rating") final String? rating,
      @JsonKey(name: "thumbnail") final String? thumbnail,
      @JsonKey(name: "id") final String? id,
      @JsonKey(name: "released") final String? released,
      @JsonKey(name: "episode") final int? episode}) = _$VideoImpl;

  factory _Video.fromJson(Map<String, dynamic> json) = _$VideoImpl.fromJson;

  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "season")
  int? get season;
  @override
  @JsonKey(name: "number")
  int? get number;
  @override
  @JsonKey(name: "firstAired")
  String? get firstAired;
  @override
  @JsonKey(name: "tvdb_id")
  int? get tvdbId;
  @override
  @JsonKey(name: "rating")
  String? get rating;
  @override
  @JsonKey(name: "thumbnail")
  String? get thumbnail;
  @override
  @JsonKey(name: "id")
  String? get id;
  @override
  @JsonKey(name: "released")
  String? get released;
  @override
  @JsonKey(name: "episode")
  int? get episode;

  /// Create a copy of Video
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VideoImplCopyWith<_$VideoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
