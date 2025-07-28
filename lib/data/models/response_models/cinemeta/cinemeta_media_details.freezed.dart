// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cinemeta_media_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CinemetaMediaDetails _$CinemetaMediaDetailsFromJson(Map<String, dynamic> json) {
  return _CinemetaMediaDetails.fromJson(json);
}

/// @nodoc
mixin _$CinemetaMediaDetails {
  @JsonKey(name: "meta")
  Meta? get meta => throw _privateConstructorUsedError;

  /// Serializes this CinemetaMediaDetails to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CinemetaMediaDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CinemetaMediaDetailsCopyWith<CinemetaMediaDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CinemetaMediaDetailsCopyWith<$Res> {
  factory $CinemetaMediaDetailsCopyWith(CinemetaMediaDetails value,
          $Res Function(CinemetaMediaDetails) then) =
      _$CinemetaMediaDetailsCopyWithImpl<$Res, CinemetaMediaDetails>;
  @useResult
  $Res call({@JsonKey(name: "meta") Meta? meta});

  $MetaCopyWith<$Res>? get meta;
}

/// @nodoc
class _$CinemetaMediaDetailsCopyWithImpl<$Res,
        $Val extends CinemetaMediaDetails>
    implements $CinemetaMediaDetailsCopyWith<$Res> {
  _$CinemetaMediaDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CinemetaMediaDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meta = freezed,
  }) {
    return _then(_value.copyWith(
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Meta?,
    ) as $Val);
  }

  /// Create a copy of CinemetaMediaDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MetaCopyWith<$Res>? get meta {
    if (_value.meta == null) {
      return null;
    }

    return $MetaCopyWith<$Res>(_value.meta!, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CinemetaMediaDetailsImplCopyWith<$Res>
    implements $CinemetaMediaDetailsCopyWith<$Res> {
  factory _$$CinemetaMediaDetailsImplCopyWith(_$CinemetaMediaDetailsImpl value,
          $Res Function(_$CinemetaMediaDetailsImpl) then) =
      __$$CinemetaMediaDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "meta") Meta? meta});

  @override
  $MetaCopyWith<$Res>? get meta;
}

/// @nodoc
class __$$CinemetaMediaDetailsImplCopyWithImpl<$Res>
    extends _$CinemetaMediaDetailsCopyWithImpl<$Res, _$CinemetaMediaDetailsImpl>
    implements _$$CinemetaMediaDetailsImplCopyWith<$Res> {
  __$$CinemetaMediaDetailsImplCopyWithImpl(_$CinemetaMediaDetailsImpl _value,
      $Res Function(_$CinemetaMediaDetailsImpl) _then)
      : super(_value, _then);

  /// Create a copy of CinemetaMediaDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meta = freezed,
  }) {
    return _then(_$CinemetaMediaDetailsImpl(
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Meta?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CinemetaMediaDetailsImpl implements _CinemetaMediaDetails {
  const _$CinemetaMediaDetailsImpl({@JsonKey(name: "meta") this.meta});

  factory _$CinemetaMediaDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$CinemetaMediaDetailsImplFromJson(json);

  @override
  @JsonKey(name: "meta")
  final Meta? meta;

  @override
  String toString() {
    return 'CinemetaMediaDetails(meta: $meta)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CinemetaMediaDetailsImpl &&
            (identical(other.meta, meta) || other.meta == meta));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, meta);

  /// Create a copy of CinemetaMediaDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CinemetaMediaDetailsImplCopyWith<_$CinemetaMediaDetailsImpl>
      get copyWith =>
          __$$CinemetaMediaDetailsImplCopyWithImpl<_$CinemetaMediaDetailsImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CinemetaMediaDetailsImplToJson(
      this,
    );
  }
}

abstract class _CinemetaMediaDetails implements CinemetaMediaDetails {
  const factory _CinemetaMediaDetails(
      {@JsonKey(name: "meta") final Meta? meta}) = _$CinemetaMediaDetailsImpl;

  factory _CinemetaMediaDetails.fromJson(Map<String, dynamic> json) =
      _$CinemetaMediaDetailsImpl.fromJson;

  @override
  @JsonKey(name: "meta")
  Meta? get meta;

  /// Create a copy of CinemetaMediaDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CinemetaMediaDetailsImplCopyWith<_$CinemetaMediaDetailsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
