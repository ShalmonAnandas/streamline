// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cinemeta_catelogue.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CinemetaCatalogue _$CinemetaCatalogueFromJson(Map<String, dynamic> json) {
  return _CinemetaCatalogue.fromJson(json);
}

/// @nodoc
mixin _$CinemetaCatalogue {
  @JsonKey(name: "metas")
  List<Meta>? get metas => throw _privateConstructorUsedError;
  @JsonKey(name: "hasMore")
  bool? get hasMore => throw _privateConstructorUsedError;
  @JsonKey(name: "cacheMaxAge")
  int? get cacheMaxAge => throw _privateConstructorUsedError;
  @JsonKey(name: "staleRevalidate")
  int? get staleRevalidate => throw _privateConstructorUsedError;
  @JsonKey(name: "staleError")
  int? get staleError => throw _privateConstructorUsedError;

  /// Serializes this CinemetaCatalogue to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CinemetaCatalogue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CinemetaCatalogueCopyWith<CinemetaCatalogue> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CinemetaCatalogueCopyWith<$Res> {
  factory $CinemetaCatalogueCopyWith(
          CinemetaCatalogue value, $Res Function(CinemetaCatalogue) then) =
      _$CinemetaCatalogueCopyWithImpl<$Res, CinemetaCatalogue>;
  @useResult
  $Res call(
      {@JsonKey(name: "metas") List<Meta>? metas,
      @JsonKey(name: "hasMore") bool? hasMore,
      @JsonKey(name: "cacheMaxAge") int? cacheMaxAge,
      @JsonKey(name: "staleRevalidate") int? staleRevalidate,
      @JsonKey(name: "staleError") int? staleError});
}

/// @nodoc
class _$CinemetaCatalogueCopyWithImpl<$Res, $Val extends CinemetaCatalogue>
    implements $CinemetaCatalogueCopyWith<$Res> {
  _$CinemetaCatalogueCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CinemetaCatalogue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? metas = freezed,
    Object? hasMore = freezed,
    Object? cacheMaxAge = freezed,
    Object? staleRevalidate = freezed,
    Object? staleError = freezed,
  }) {
    return _then(_value.copyWith(
      metas: freezed == metas
          ? _value.metas
          : metas // ignore: cast_nullable_to_non_nullable
              as List<Meta>?,
      hasMore: freezed == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool?,
      cacheMaxAge: freezed == cacheMaxAge
          ? _value.cacheMaxAge
          : cacheMaxAge // ignore: cast_nullable_to_non_nullable
              as int?,
      staleRevalidate: freezed == staleRevalidate
          ? _value.staleRevalidate
          : staleRevalidate // ignore: cast_nullable_to_non_nullable
              as int?,
      staleError: freezed == staleError
          ? _value.staleError
          : staleError // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CinemetaCatalogueImplCopyWith<$Res>
    implements $CinemetaCatalogueCopyWith<$Res> {
  factory _$$CinemetaCatalogueImplCopyWith(_$CinemetaCatalogueImpl value,
          $Res Function(_$CinemetaCatalogueImpl) then) =
      __$$CinemetaCatalogueImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "metas") List<Meta>? metas,
      @JsonKey(name: "hasMore") bool? hasMore,
      @JsonKey(name: "cacheMaxAge") int? cacheMaxAge,
      @JsonKey(name: "staleRevalidate") int? staleRevalidate,
      @JsonKey(name: "staleError") int? staleError});
}

/// @nodoc
class __$$CinemetaCatalogueImplCopyWithImpl<$Res>
    extends _$CinemetaCatalogueCopyWithImpl<$Res, _$CinemetaCatalogueImpl>
    implements _$$CinemetaCatalogueImplCopyWith<$Res> {
  __$$CinemetaCatalogueImplCopyWithImpl(_$CinemetaCatalogueImpl _value,
      $Res Function(_$CinemetaCatalogueImpl) _then)
      : super(_value, _then);

  /// Create a copy of CinemetaCatalogue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? metas = freezed,
    Object? hasMore = freezed,
    Object? cacheMaxAge = freezed,
    Object? staleRevalidate = freezed,
    Object? staleError = freezed,
  }) {
    return _then(_$CinemetaCatalogueImpl(
      metas: freezed == metas
          ? _value._metas
          : metas // ignore: cast_nullable_to_non_nullable
              as List<Meta>?,
      hasMore: freezed == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool?,
      cacheMaxAge: freezed == cacheMaxAge
          ? _value.cacheMaxAge
          : cacheMaxAge // ignore: cast_nullable_to_non_nullable
              as int?,
      staleRevalidate: freezed == staleRevalidate
          ? _value.staleRevalidate
          : staleRevalidate // ignore: cast_nullable_to_non_nullable
              as int?,
      staleError: freezed == staleError
          ? _value.staleError
          : staleError // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CinemetaCatalogueImpl implements _CinemetaCatalogue {
  const _$CinemetaCatalogueImpl(
      {@JsonKey(name: "metas") final List<Meta>? metas,
      @JsonKey(name: "hasMore") this.hasMore,
      @JsonKey(name: "cacheMaxAge") this.cacheMaxAge,
      @JsonKey(name: "staleRevalidate") this.staleRevalidate,
      @JsonKey(name: "staleError") this.staleError})
      : _metas = metas;

  factory _$CinemetaCatalogueImpl.fromJson(Map<String, dynamic> json) =>
      _$$CinemetaCatalogueImplFromJson(json);

  final List<Meta>? _metas;
  @override
  @JsonKey(name: "metas")
  List<Meta>? get metas {
    final value = _metas;
    if (value == null) return null;
    if (_metas is EqualUnmodifiableListView) return _metas;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "hasMore")
  final bool? hasMore;
  @override
  @JsonKey(name: "cacheMaxAge")
  final int? cacheMaxAge;
  @override
  @JsonKey(name: "staleRevalidate")
  final int? staleRevalidate;
  @override
  @JsonKey(name: "staleError")
  final int? staleError;

  @override
  String toString() {
    return 'CinemetaCatalogue(metas: $metas, hasMore: $hasMore, cacheMaxAge: $cacheMaxAge, staleRevalidate: $staleRevalidate, staleError: $staleError)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CinemetaCatalogueImpl &&
            const DeepCollectionEquality().equals(other._metas, _metas) &&
            (identical(other.hasMore, hasMore) || other.hasMore == hasMore) &&
            (identical(other.cacheMaxAge, cacheMaxAge) ||
                other.cacheMaxAge == cacheMaxAge) &&
            (identical(other.staleRevalidate, staleRevalidate) ||
                other.staleRevalidate == staleRevalidate) &&
            (identical(other.staleError, staleError) ||
                other.staleError == staleError));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_metas),
      hasMore,
      cacheMaxAge,
      staleRevalidate,
      staleError);

  /// Create a copy of CinemetaCatalogue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CinemetaCatalogueImplCopyWith<_$CinemetaCatalogueImpl> get copyWith =>
      __$$CinemetaCatalogueImplCopyWithImpl<_$CinemetaCatalogueImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CinemetaCatalogueImplToJson(
      this,
    );
  }
}

abstract class _CinemetaCatalogue implements CinemetaCatalogue {
  const factory _CinemetaCatalogue(
          {@JsonKey(name: "metas") final List<Meta>? metas,
          @JsonKey(name: "hasMore") final bool? hasMore,
          @JsonKey(name: "cacheMaxAge") final int? cacheMaxAge,
          @JsonKey(name: "staleRevalidate") final int? staleRevalidate,
          @JsonKey(name: "staleError") final int? staleError}) =
      _$CinemetaCatalogueImpl;

  factory _CinemetaCatalogue.fromJson(Map<String, dynamic> json) =
      _$CinemetaCatalogueImpl.fromJson;

  @override
  @JsonKey(name: "metas")
  List<Meta>? get metas;
  @override
  @JsonKey(name: "hasMore")
  bool? get hasMore;
  @override
  @JsonKey(name: "cacheMaxAge")
  int? get cacheMaxAge;
  @override
  @JsonKey(name: "staleRevalidate")
  int? get staleRevalidate;
  @override
  @JsonKey(name: "staleError")
  int? get staleError;

  /// Create a copy of CinemetaCatalogue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CinemetaCatalogueImplCopyWith<_$CinemetaCatalogueImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
