// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cinemeta_manifest.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CinemetaManifest _$CinemetaManifestFromJson(Map<String, dynamic> json) {
  return _CinemetaManifest.fromJson(json);
}

/// @nodoc
mixin _$CinemetaManifest {
  @JsonKey(name: "id")
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "version")
  String? get version => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "resources")
  List<String>? get resources => throw _privateConstructorUsedError;
  @JsonKey(name: "types")
  List<String>? get types => throw _privateConstructorUsedError;
  @JsonKey(name: "idPrefixes")
  List<String>? get idPrefixes => throw _privateConstructorUsedError;
  @JsonKey(name: "addonCatalogs")
  List<AddonCatalog>? get addonCatalogs => throw _privateConstructorUsedError;
  @JsonKey(name: "catalogs")
  List<Catalog>? get catalogs => throw _privateConstructorUsedError;
  @JsonKey(name: "behaviorHints")
  BehaviorHints? get behaviorHints => throw _privateConstructorUsedError;

  /// Serializes this CinemetaManifest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CinemetaManifest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CinemetaManifestCopyWith<CinemetaManifest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CinemetaManifestCopyWith<$Res> {
  factory $CinemetaManifestCopyWith(
          CinemetaManifest value, $Res Function(CinemetaManifest) then) =
      _$CinemetaManifestCopyWithImpl<$Res, CinemetaManifest>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") String? id,
      @JsonKey(name: "version") String? version,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "resources") List<String>? resources,
      @JsonKey(name: "types") List<String>? types,
      @JsonKey(name: "idPrefixes") List<String>? idPrefixes,
      @JsonKey(name: "addonCatalogs") List<AddonCatalog>? addonCatalogs,
      @JsonKey(name: "catalogs") List<Catalog>? catalogs,
      @JsonKey(name: "behaviorHints") BehaviorHints? behaviorHints});

  $BehaviorHintsCopyWith<$Res>? get behaviorHints;
}

/// @nodoc
class _$CinemetaManifestCopyWithImpl<$Res, $Val extends CinemetaManifest>
    implements $CinemetaManifestCopyWith<$Res> {
  _$CinemetaManifestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CinemetaManifest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? version = freezed,
    Object? description = freezed,
    Object? name = freezed,
    Object? resources = freezed,
    Object? types = freezed,
    Object? idPrefixes = freezed,
    Object? addonCatalogs = freezed,
    Object? catalogs = freezed,
    Object? behaviorHints = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      resources: freezed == resources
          ? _value.resources
          : resources // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      types: freezed == types
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      idPrefixes: freezed == idPrefixes
          ? _value.idPrefixes
          : idPrefixes // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      addonCatalogs: freezed == addonCatalogs
          ? _value.addonCatalogs
          : addonCatalogs // ignore: cast_nullable_to_non_nullable
              as List<AddonCatalog>?,
      catalogs: freezed == catalogs
          ? _value.catalogs
          : catalogs // ignore: cast_nullable_to_non_nullable
              as List<Catalog>?,
      behaviorHints: freezed == behaviorHints
          ? _value.behaviorHints
          : behaviorHints // ignore: cast_nullable_to_non_nullable
              as BehaviorHints?,
    ) as $Val);
  }

  /// Create a copy of CinemetaManifest
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
abstract class _$$CinemetaManifestImplCopyWith<$Res>
    implements $CinemetaManifestCopyWith<$Res> {
  factory _$$CinemetaManifestImplCopyWith(_$CinemetaManifestImpl value,
          $Res Function(_$CinemetaManifestImpl) then) =
      __$$CinemetaManifestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") String? id,
      @JsonKey(name: "version") String? version,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "resources") List<String>? resources,
      @JsonKey(name: "types") List<String>? types,
      @JsonKey(name: "idPrefixes") List<String>? idPrefixes,
      @JsonKey(name: "addonCatalogs") List<AddonCatalog>? addonCatalogs,
      @JsonKey(name: "catalogs") List<Catalog>? catalogs,
      @JsonKey(name: "behaviorHints") BehaviorHints? behaviorHints});

  @override
  $BehaviorHintsCopyWith<$Res>? get behaviorHints;
}

/// @nodoc
class __$$CinemetaManifestImplCopyWithImpl<$Res>
    extends _$CinemetaManifestCopyWithImpl<$Res, _$CinemetaManifestImpl>
    implements _$$CinemetaManifestImplCopyWith<$Res> {
  __$$CinemetaManifestImplCopyWithImpl(_$CinemetaManifestImpl _value,
      $Res Function(_$CinemetaManifestImpl) _then)
      : super(_value, _then);

  /// Create a copy of CinemetaManifest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? version = freezed,
    Object? description = freezed,
    Object? name = freezed,
    Object? resources = freezed,
    Object? types = freezed,
    Object? idPrefixes = freezed,
    Object? addonCatalogs = freezed,
    Object? catalogs = freezed,
    Object? behaviorHints = freezed,
  }) {
    return _then(_$CinemetaManifestImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      resources: freezed == resources
          ? _value._resources
          : resources // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      types: freezed == types
          ? _value._types
          : types // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      idPrefixes: freezed == idPrefixes
          ? _value._idPrefixes
          : idPrefixes // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      addonCatalogs: freezed == addonCatalogs
          ? _value._addonCatalogs
          : addonCatalogs // ignore: cast_nullable_to_non_nullable
              as List<AddonCatalog>?,
      catalogs: freezed == catalogs
          ? _value._catalogs
          : catalogs // ignore: cast_nullable_to_non_nullable
              as List<Catalog>?,
      behaviorHints: freezed == behaviorHints
          ? _value.behaviorHints
          : behaviorHints // ignore: cast_nullable_to_non_nullable
              as BehaviorHints?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CinemetaManifestImpl implements _CinemetaManifest {
  const _$CinemetaManifestImpl(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "version") this.version,
      @JsonKey(name: "description") this.description,
      @JsonKey(name: "name") this.name,
      @JsonKey(name: "resources") final List<String>? resources,
      @JsonKey(name: "types") final List<String>? types,
      @JsonKey(name: "idPrefixes") final List<String>? idPrefixes,
      @JsonKey(name: "addonCatalogs") final List<AddonCatalog>? addonCatalogs,
      @JsonKey(name: "catalogs") final List<Catalog>? catalogs,
      @JsonKey(name: "behaviorHints") this.behaviorHints})
      : _resources = resources,
        _types = types,
        _idPrefixes = idPrefixes,
        _addonCatalogs = addonCatalogs,
        _catalogs = catalogs;

  factory _$CinemetaManifestImpl.fromJson(Map<String, dynamic> json) =>
      _$$CinemetaManifestImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final String? id;
  @override
  @JsonKey(name: "version")
  final String? version;
  @override
  @JsonKey(name: "description")
  final String? description;
  @override
  @JsonKey(name: "name")
  final String? name;
  final List<String>? _resources;
  @override
  @JsonKey(name: "resources")
  List<String>? get resources {
    final value = _resources;
    if (value == null) return null;
    if (_resources is EqualUnmodifiableListView) return _resources;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _types;
  @override
  @JsonKey(name: "types")
  List<String>? get types {
    final value = _types;
    if (value == null) return null;
    if (_types is EqualUnmodifiableListView) return _types;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _idPrefixes;
  @override
  @JsonKey(name: "idPrefixes")
  List<String>? get idPrefixes {
    final value = _idPrefixes;
    if (value == null) return null;
    if (_idPrefixes is EqualUnmodifiableListView) return _idPrefixes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<AddonCatalog>? _addonCatalogs;
  @override
  @JsonKey(name: "addonCatalogs")
  List<AddonCatalog>? get addonCatalogs {
    final value = _addonCatalogs;
    if (value == null) return null;
    if (_addonCatalogs is EqualUnmodifiableListView) return _addonCatalogs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Catalog>? _catalogs;
  @override
  @JsonKey(name: "catalogs")
  List<Catalog>? get catalogs {
    final value = _catalogs;
    if (value == null) return null;
    if (_catalogs is EqualUnmodifiableListView) return _catalogs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "behaviorHints")
  final BehaviorHints? behaviorHints;

  @override
  String toString() {
    return 'CinemetaManifest(id: $id, version: $version, description: $description, name: $name, resources: $resources, types: $types, idPrefixes: $idPrefixes, addonCatalogs: $addonCatalogs, catalogs: $catalogs, behaviorHints: $behaviorHints)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CinemetaManifestImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._resources, _resources) &&
            const DeepCollectionEquality().equals(other._types, _types) &&
            const DeepCollectionEquality()
                .equals(other._idPrefixes, _idPrefixes) &&
            const DeepCollectionEquality()
                .equals(other._addonCatalogs, _addonCatalogs) &&
            const DeepCollectionEquality().equals(other._catalogs, _catalogs) &&
            (identical(other.behaviorHints, behaviorHints) ||
                other.behaviorHints == behaviorHints));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      version,
      description,
      name,
      const DeepCollectionEquality().hash(_resources),
      const DeepCollectionEquality().hash(_types),
      const DeepCollectionEquality().hash(_idPrefixes),
      const DeepCollectionEquality().hash(_addonCatalogs),
      const DeepCollectionEquality().hash(_catalogs),
      behaviorHints);

  /// Create a copy of CinemetaManifest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CinemetaManifestImplCopyWith<_$CinemetaManifestImpl> get copyWith =>
      __$$CinemetaManifestImplCopyWithImpl<_$CinemetaManifestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CinemetaManifestImplToJson(
      this,
    );
  }
}

abstract class _CinemetaManifest implements CinemetaManifest {
  const factory _CinemetaManifest(
      {@JsonKey(name: "id") final String? id,
      @JsonKey(name: "version") final String? version,
      @JsonKey(name: "description") final String? description,
      @JsonKey(name: "name") final String? name,
      @JsonKey(name: "resources") final List<String>? resources,
      @JsonKey(name: "types") final List<String>? types,
      @JsonKey(name: "idPrefixes") final List<String>? idPrefixes,
      @JsonKey(name: "addonCatalogs") final List<AddonCatalog>? addonCatalogs,
      @JsonKey(name: "catalogs") final List<Catalog>? catalogs,
      @JsonKey(name: "behaviorHints")
      final BehaviorHints? behaviorHints}) = _$CinemetaManifestImpl;

  factory _CinemetaManifest.fromJson(Map<String, dynamic> json) =
      _$CinemetaManifestImpl.fromJson;

  @override
  @JsonKey(name: "id")
  String? get id;
  @override
  @JsonKey(name: "version")
  String? get version;
  @override
  @JsonKey(name: "description")
  String? get description;
  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "resources")
  List<String>? get resources;
  @override
  @JsonKey(name: "types")
  List<String>? get types;
  @override
  @JsonKey(name: "idPrefixes")
  List<String>? get idPrefixes;
  @override
  @JsonKey(name: "addonCatalogs")
  List<AddonCatalog>? get addonCatalogs;
  @override
  @JsonKey(name: "catalogs")
  List<Catalog>? get catalogs;
  @override
  @JsonKey(name: "behaviorHints")
  BehaviorHints? get behaviorHints;

  /// Create a copy of CinemetaManifest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CinemetaManifestImplCopyWith<_$CinemetaManifestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AddonCatalog _$AddonCatalogFromJson(Map<String, dynamic> json) {
  return _AddonCatalog.fromJson(json);
}

/// @nodoc
mixin _$AddonCatalog {
  @JsonKey(name: "type")
  String? get type => throw _privateConstructorUsedError;
  @JsonKey(name: "id")
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;

  /// Serializes this AddonCatalog to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AddonCatalog
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddonCatalogCopyWith<AddonCatalog> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddonCatalogCopyWith<$Res> {
  factory $AddonCatalogCopyWith(
          AddonCatalog value, $Res Function(AddonCatalog) then) =
      _$AddonCatalogCopyWithImpl<$Res, AddonCatalog>;
  @useResult
  $Res call(
      {@JsonKey(name: "type") String? type,
      @JsonKey(name: "id") String? id,
      @JsonKey(name: "name") String? name});
}

/// @nodoc
class _$AddonCatalogCopyWithImpl<$Res, $Val extends AddonCatalog>
    implements $AddonCatalogCopyWith<$Res> {
  _$AddonCatalogCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddonCatalog
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddonCatalogImplCopyWith<$Res>
    implements $AddonCatalogCopyWith<$Res> {
  factory _$$AddonCatalogImplCopyWith(
          _$AddonCatalogImpl value, $Res Function(_$AddonCatalogImpl) then) =
      __$$AddonCatalogImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "type") String? type,
      @JsonKey(name: "id") String? id,
      @JsonKey(name: "name") String? name});
}

/// @nodoc
class __$$AddonCatalogImplCopyWithImpl<$Res>
    extends _$AddonCatalogCopyWithImpl<$Res, _$AddonCatalogImpl>
    implements _$$AddonCatalogImplCopyWith<$Res> {
  __$$AddonCatalogImplCopyWithImpl(
      _$AddonCatalogImpl _value, $Res Function(_$AddonCatalogImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddonCatalog
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$AddonCatalogImpl(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddonCatalogImpl implements _AddonCatalog {
  const _$AddonCatalogImpl(
      {@JsonKey(name: "type") this.type,
      @JsonKey(name: "id") this.id,
      @JsonKey(name: "name") this.name});

  factory _$AddonCatalogImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddonCatalogImplFromJson(json);

  @override
  @JsonKey(name: "type")
  final String? type;
  @override
  @JsonKey(name: "id")
  final String? id;
  @override
  @JsonKey(name: "name")
  final String? name;

  @override
  String toString() {
    return 'AddonCatalog(type: $type, id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddonCatalogImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type, id, name);

  /// Create a copy of AddonCatalog
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddonCatalogImplCopyWith<_$AddonCatalogImpl> get copyWith =>
      __$$AddonCatalogImplCopyWithImpl<_$AddonCatalogImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddonCatalogImplToJson(
      this,
    );
  }
}

abstract class _AddonCatalog implements AddonCatalog {
  const factory _AddonCatalog(
      {@JsonKey(name: "type") final String? type,
      @JsonKey(name: "id") final String? id,
      @JsonKey(name: "name") final String? name}) = _$AddonCatalogImpl;

  factory _AddonCatalog.fromJson(Map<String, dynamic> json) =
      _$AddonCatalogImpl.fromJson;

  @override
  @JsonKey(name: "type")
  String? get type;
  @override
  @JsonKey(name: "id")
  String? get id;
  @override
  @JsonKey(name: "name")
  String? get name;

  /// Create a copy of AddonCatalog
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddonCatalogImplCopyWith<_$AddonCatalogImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BehaviorHints _$BehaviorHintsFromJson(Map<String, dynamic> json) {
  return _BehaviorHints.fromJson(json);
}

/// @nodoc
mixin _$BehaviorHints {
  @JsonKey(name: "newEpisodeNotifications")
  bool? get newEpisodeNotifications => throw _privateConstructorUsedError;

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
      {@JsonKey(name: "newEpisodeNotifications")
      bool? newEpisodeNotifications});
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
    Object? newEpisodeNotifications = freezed,
  }) {
    return _then(_value.copyWith(
      newEpisodeNotifications: freezed == newEpisodeNotifications
          ? _value.newEpisodeNotifications
          : newEpisodeNotifications // ignore: cast_nullable_to_non_nullable
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
      {@JsonKey(name: "newEpisodeNotifications")
      bool? newEpisodeNotifications});
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
    Object? newEpisodeNotifications = freezed,
  }) {
    return _then(_$BehaviorHintsImpl(
      newEpisodeNotifications: freezed == newEpisodeNotifications
          ? _value.newEpisodeNotifications
          : newEpisodeNotifications // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BehaviorHintsImpl implements _BehaviorHints {
  const _$BehaviorHintsImpl(
      {@JsonKey(name: "newEpisodeNotifications") this.newEpisodeNotifications});

  factory _$BehaviorHintsImpl.fromJson(Map<String, dynamic> json) =>
      _$$BehaviorHintsImplFromJson(json);

  @override
  @JsonKey(name: "newEpisodeNotifications")
  final bool? newEpisodeNotifications;

  @override
  String toString() {
    return 'BehaviorHints(newEpisodeNotifications: $newEpisodeNotifications)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BehaviorHintsImpl &&
            (identical(
                    other.newEpisodeNotifications, newEpisodeNotifications) ||
                other.newEpisodeNotifications == newEpisodeNotifications));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, newEpisodeNotifications);

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
      {@JsonKey(name: "newEpisodeNotifications")
      final bool? newEpisodeNotifications}) = _$BehaviorHintsImpl;

  factory _BehaviorHints.fromJson(Map<String, dynamic> json) =
      _$BehaviorHintsImpl.fromJson;

  @override
  @JsonKey(name: "newEpisodeNotifications")
  bool? get newEpisodeNotifications;

  /// Create a copy of BehaviorHints
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BehaviorHintsImplCopyWith<_$BehaviorHintsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Catalog _$CatalogFromJson(Map<String, dynamic> json) {
  return _Catalog.fromJson(json);
}

/// @nodoc
mixin _$Catalog {
  @JsonKey(name: "type")
  String? get type => throw _privateConstructorUsedError;
  @JsonKey(name: "id")
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "genres")
  List<String>? get genres => throw _privateConstructorUsedError;
  @JsonKey(name: "extra")
  List<Extra>? get extra => throw _privateConstructorUsedError;
  @JsonKey(name: "extraSupported")
  List<String>? get extraSupported => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "extraRequired")
  List<String>? get extraRequired => throw _privateConstructorUsedError;

  /// Serializes this Catalog to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Catalog
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CatalogCopyWith<Catalog> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CatalogCopyWith<$Res> {
  factory $CatalogCopyWith(Catalog value, $Res Function(Catalog) then) =
      _$CatalogCopyWithImpl<$Res, Catalog>;
  @useResult
  $Res call(
      {@JsonKey(name: "type") String? type,
      @JsonKey(name: "id") String? id,
      @JsonKey(name: "genres") List<String>? genres,
      @JsonKey(name: "extra") List<Extra>? extra,
      @JsonKey(name: "extraSupported") List<String>? extraSupported,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "extraRequired") List<String>? extraRequired});
}

/// @nodoc
class _$CatalogCopyWithImpl<$Res, $Val extends Catalog>
    implements $CatalogCopyWith<$Res> {
  _$CatalogCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Catalog
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? id = freezed,
    Object? genres = freezed,
    Object? extra = freezed,
    Object? extraSupported = freezed,
    Object? name = freezed,
    Object? extraRequired = freezed,
  }) {
    return _then(_value.copyWith(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      genres: freezed == genres
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      extra: freezed == extra
          ? _value.extra
          : extra // ignore: cast_nullable_to_non_nullable
              as List<Extra>?,
      extraSupported: freezed == extraSupported
          ? _value.extraSupported
          : extraSupported // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      extraRequired: freezed == extraRequired
          ? _value.extraRequired
          : extraRequired // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CatalogImplCopyWith<$Res> implements $CatalogCopyWith<$Res> {
  factory _$$CatalogImplCopyWith(
          _$CatalogImpl value, $Res Function(_$CatalogImpl) then) =
      __$$CatalogImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "type") String? type,
      @JsonKey(name: "id") String? id,
      @JsonKey(name: "genres") List<String>? genres,
      @JsonKey(name: "extra") List<Extra>? extra,
      @JsonKey(name: "extraSupported") List<String>? extraSupported,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "extraRequired") List<String>? extraRequired});
}

/// @nodoc
class __$$CatalogImplCopyWithImpl<$Res>
    extends _$CatalogCopyWithImpl<$Res, _$CatalogImpl>
    implements _$$CatalogImplCopyWith<$Res> {
  __$$CatalogImplCopyWithImpl(
      _$CatalogImpl _value, $Res Function(_$CatalogImpl) _then)
      : super(_value, _then);

  /// Create a copy of Catalog
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? id = freezed,
    Object? genres = freezed,
    Object? extra = freezed,
    Object? extraSupported = freezed,
    Object? name = freezed,
    Object? extraRequired = freezed,
  }) {
    return _then(_$CatalogImpl(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      genres: freezed == genres
          ? _value._genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      extra: freezed == extra
          ? _value._extra
          : extra // ignore: cast_nullable_to_non_nullable
              as List<Extra>?,
      extraSupported: freezed == extraSupported
          ? _value._extraSupported
          : extraSupported // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      extraRequired: freezed == extraRequired
          ? _value._extraRequired
          : extraRequired // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CatalogImpl implements _Catalog {
  const _$CatalogImpl(
      {@JsonKey(name: "type") this.type,
      @JsonKey(name: "id") this.id,
      @JsonKey(name: "genres") final List<String>? genres,
      @JsonKey(name: "extra") final List<Extra>? extra,
      @JsonKey(name: "extraSupported") final List<String>? extraSupported,
      @JsonKey(name: "name") this.name,
      @JsonKey(name: "extraRequired") final List<String>? extraRequired})
      : _genres = genres,
        _extra = extra,
        _extraSupported = extraSupported,
        _extraRequired = extraRequired;

  factory _$CatalogImpl.fromJson(Map<String, dynamic> json) =>
      _$$CatalogImplFromJson(json);

  @override
  @JsonKey(name: "type")
  final String? type;
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

  final List<Extra>? _extra;
  @override
  @JsonKey(name: "extra")
  List<Extra>? get extra {
    final value = _extra;
    if (value == null) return null;
    if (_extra is EqualUnmodifiableListView) return _extra;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _extraSupported;
  @override
  @JsonKey(name: "extraSupported")
  List<String>? get extraSupported {
    final value = _extraSupported;
    if (value == null) return null;
    if (_extraSupported is EqualUnmodifiableListView) return _extraSupported;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "name")
  final String? name;
  final List<String>? _extraRequired;
  @override
  @JsonKey(name: "extraRequired")
  List<String>? get extraRequired {
    final value = _extraRequired;
    if (value == null) return null;
    if (_extraRequired is EqualUnmodifiableListView) return _extraRequired;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Catalog(type: $type, id: $id, genres: $genres, extra: $extra, extraSupported: $extraSupported, name: $name, extraRequired: $extraRequired)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CatalogImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._genres, _genres) &&
            const DeepCollectionEquality().equals(other._extra, _extra) &&
            const DeepCollectionEquality()
                .equals(other._extraSupported, _extraSupported) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._extraRequired, _extraRequired));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      type,
      id,
      const DeepCollectionEquality().hash(_genres),
      const DeepCollectionEquality().hash(_extra),
      const DeepCollectionEquality().hash(_extraSupported),
      name,
      const DeepCollectionEquality().hash(_extraRequired));

  /// Create a copy of Catalog
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CatalogImplCopyWith<_$CatalogImpl> get copyWith =>
      __$$CatalogImplCopyWithImpl<_$CatalogImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CatalogImplToJson(
      this,
    );
  }
}

abstract class _Catalog implements Catalog {
  const factory _Catalog(
          {@JsonKey(name: "type") final String? type,
          @JsonKey(name: "id") final String? id,
          @JsonKey(name: "genres") final List<String>? genres,
          @JsonKey(name: "extra") final List<Extra>? extra,
          @JsonKey(name: "extraSupported") final List<String>? extraSupported,
          @JsonKey(name: "name") final String? name,
          @JsonKey(name: "extraRequired") final List<String>? extraRequired}) =
      _$CatalogImpl;

  factory _Catalog.fromJson(Map<String, dynamic> json) = _$CatalogImpl.fromJson;

  @override
  @JsonKey(name: "type")
  String? get type;
  @override
  @JsonKey(name: "id")
  String? get id;
  @override
  @JsonKey(name: "genres")
  List<String>? get genres;
  @override
  @JsonKey(name: "extra")
  List<Extra>? get extra;
  @override
  @JsonKey(name: "extraSupported")
  List<String>? get extraSupported;
  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "extraRequired")
  List<String>? get extraRequired;

  /// Create a copy of Catalog
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CatalogImplCopyWith<_$CatalogImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Extra _$ExtraFromJson(Map<String, dynamic> json) {
  return _Extra.fromJson(json);
}

/// @nodoc
mixin _$Extra {
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "options")
  List<String>? get options => throw _privateConstructorUsedError;
  @JsonKey(name: "isRequired")
  bool? get isRequired => throw _privateConstructorUsedError;
  @JsonKey(name: "optionsLimit")
  int? get optionsLimit => throw _privateConstructorUsedError;

  /// Serializes this Extra to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Extra
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ExtraCopyWith<Extra> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExtraCopyWith<$Res> {
  factory $ExtraCopyWith(Extra value, $Res Function(Extra) then) =
      _$ExtraCopyWithImpl<$Res, Extra>;
  @useResult
  $Res call(
      {@JsonKey(name: "name") String? name,
      @JsonKey(name: "options") List<String>? options,
      @JsonKey(name: "isRequired") bool? isRequired,
      @JsonKey(name: "optionsLimit") int? optionsLimit});
}

/// @nodoc
class _$ExtraCopyWithImpl<$Res, $Val extends Extra>
    implements $ExtraCopyWith<$Res> {
  _$ExtraCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Extra
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? options = freezed,
    Object? isRequired = freezed,
    Object? optionsLimit = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      options: freezed == options
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      isRequired: freezed == isRequired
          ? _value.isRequired
          : isRequired // ignore: cast_nullable_to_non_nullable
              as bool?,
      optionsLimit: freezed == optionsLimit
          ? _value.optionsLimit
          : optionsLimit // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExtraImplCopyWith<$Res> implements $ExtraCopyWith<$Res> {
  factory _$$ExtraImplCopyWith(
          _$ExtraImpl value, $Res Function(_$ExtraImpl) then) =
      __$$ExtraImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "name") String? name,
      @JsonKey(name: "options") List<String>? options,
      @JsonKey(name: "isRequired") bool? isRequired,
      @JsonKey(name: "optionsLimit") int? optionsLimit});
}

/// @nodoc
class __$$ExtraImplCopyWithImpl<$Res>
    extends _$ExtraCopyWithImpl<$Res, _$ExtraImpl>
    implements _$$ExtraImplCopyWith<$Res> {
  __$$ExtraImplCopyWithImpl(
      _$ExtraImpl _value, $Res Function(_$ExtraImpl) _then)
      : super(_value, _then);

  /// Create a copy of Extra
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? options = freezed,
    Object? isRequired = freezed,
    Object? optionsLimit = freezed,
  }) {
    return _then(_$ExtraImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      options: freezed == options
          ? _value._options
          : options // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      isRequired: freezed == isRequired
          ? _value.isRequired
          : isRequired // ignore: cast_nullable_to_non_nullable
              as bool?,
      optionsLimit: freezed == optionsLimit
          ? _value.optionsLimit
          : optionsLimit // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExtraImpl implements _Extra {
  const _$ExtraImpl(
      {@JsonKey(name: "name") this.name,
      @JsonKey(name: "options") final List<String>? options,
      @JsonKey(name: "isRequired") this.isRequired,
      @JsonKey(name: "optionsLimit") this.optionsLimit})
      : _options = options;

  factory _$ExtraImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExtraImplFromJson(json);

  @override
  @JsonKey(name: "name")
  final String? name;
  final List<String>? _options;
  @override
  @JsonKey(name: "options")
  List<String>? get options {
    final value = _options;
    if (value == null) return null;
    if (_options is EqualUnmodifiableListView) return _options;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "isRequired")
  final bool? isRequired;
  @override
  @JsonKey(name: "optionsLimit")
  final int? optionsLimit;

  @override
  String toString() {
    return 'Extra(name: $name, options: $options, isRequired: $isRequired, optionsLimit: $optionsLimit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExtraImpl &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._options, _options) &&
            (identical(other.isRequired, isRequired) ||
                other.isRequired == isRequired) &&
            (identical(other.optionsLimit, optionsLimit) ||
                other.optionsLimit == optionsLimit));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name,
      const DeepCollectionEquality().hash(_options), isRequired, optionsLimit);

  /// Create a copy of Extra
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExtraImplCopyWith<_$ExtraImpl> get copyWith =>
      __$$ExtraImplCopyWithImpl<_$ExtraImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExtraImplToJson(
      this,
    );
  }
}

abstract class _Extra implements Extra {
  const factory _Extra(
      {@JsonKey(name: "name") final String? name,
      @JsonKey(name: "options") final List<String>? options,
      @JsonKey(name: "isRequired") final bool? isRequired,
      @JsonKey(name: "optionsLimit") final int? optionsLimit}) = _$ExtraImpl;

  factory _Extra.fromJson(Map<String, dynamic> json) = _$ExtraImpl.fromJson;

  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "options")
  List<String>? get options;
  @override
  @JsonKey(name: "isRequired")
  bool? get isRequired;
  @override
  @JsonKey(name: "optionsLimit")
  int? get optionsLimit;

  /// Create a copy of Extra
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExtraImplCopyWith<_$ExtraImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
