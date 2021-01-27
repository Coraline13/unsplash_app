// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of search_photos;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SearchPhotosTearOff {
  const _$SearchPhotosTearOff();

// ignore: unused_element
  SearchPhotosStart call(String query) {
    return SearchPhotosStart(
      query,
    );
  }

// ignore: unused_element
  SearchPhotosSuccessful successful(List<Photo> photos) {
    return SearchPhotosSuccessful(
      photos,
    );
  }

// ignore: unused_element
  SearchPhotosError error(dynamic error) {
    return SearchPhotosError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SearchPhotos = _$SearchPhotosTearOff();

/// @nodoc
mixin _$SearchPhotos {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String query), {
    @required Result successful(List<Photo> photos),
    @required Result error(dynamic error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String query), {
    Result successful(List<Photo> photos),
    Result error(dynamic error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(SearchPhotosStart value), {
    @required Result successful(SearchPhotosSuccessful value),
    @required Result error(SearchPhotosError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(SearchPhotosStart value), {
    Result successful(SearchPhotosSuccessful value),
    Result error(SearchPhotosError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $SearchPhotosCopyWith<$Res> {
  factory $SearchPhotosCopyWith(
          SearchPhotos value, $Res Function(SearchPhotos) then) =
      _$SearchPhotosCopyWithImpl<$Res>;
}

/// @nodoc
class _$SearchPhotosCopyWithImpl<$Res> implements $SearchPhotosCopyWith<$Res> {
  _$SearchPhotosCopyWithImpl(this._value, this._then);

  final SearchPhotos _value;
  // ignore: unused_field
  final $Res Function(SearchPhotos) _then;
}

/// @nodoc
abstract class $SearchPhotosStartCopyWith<$Res> {
  factory $SearchPhotosStartCopyWith(
          SearchPhotosStart value, $Res Function(SearchPhotosStart) then) =
      _$SearchPhotosStartCopyWithImpl<$Res>;
  $Res call({String query});
}

/// @nodoc
class _$SearchPhotosStartCopyWithImpl<$Res>
    extends _$SearchPhotosCopyWithImpl<$Res>
    implements $SearchPhotosStartCopyWith<$Res> {
  _$SearchPhotosStartCopyWithImpl(
      SearchPhotosStart _value, $Res Function(SearchPhotosStart) _then)
      : super(_value, (v) => _then(v as SearchPhotosStart));

  @override
  SearchPhotosStart get _value => super._value as SearchPhotosStart;

  @override
  $Res call({
    Object query = freezed,
  }) {
    return _then(SearchPhotosStart(
      query == freezed ? _value.query : query as String,
    ));
  }
}

/// @nodoc
class _$SearchPhotosStart implements SearchPhotosStart {
  const _$SearchPhotosStart(this.query) : assert(query != null);

  @override
  final String query;

  @override
  String toString() {
    return 'SearchPhotos(query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SearchPhotosStart &&
            (identical(other.query, query) ||
                const DeepCollectionEquality().equals(other.query, query)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(query);

  @override
  $SearchPhotosStartCopyWith<SearchPhotosStart> get copyWith =>
      _$SearchPhotosStartCopyWithImpl<SearchPhotosStart>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String query), {
    @required Result successful(List<Photo> photos),
    @required Result error(dynamic error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(query);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String query), {
    Result successful(List<Photo> photos),
    Result error(dynamic error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(SearchPhotosStart value), {
    @required Result successful(SearchPhotosSuccessful value),
    @required Result error(SearchPhotosError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(SearchPhotosStart value), {
    Result successful(SearchPhotosSuccessful value),
    Result error(SearchPhotosError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class SearchPhotosStart implements SearchPhotos {
  const factory SearchPhotosStart(String query) = _$SearchPhotosStart;

  String get query;
  $SearchPhotosStartCopyWith<SearchPhotosStart> get copyWith;
}

/// @nodoc
abstract class $SearchPhotosSuccessfulCopyWith<$Res> {
  factory $SearchPhotosSuccessfulCopyWith(SearchPhotosSuccessful value,
          $Res Function(SearchPhotosSuccessful) then) =
      _$SearchPhotosSuccessfulCopyWithImpl<$Res>;
  $Res call({List<Photo> photos});
}

/// @nodoc
class _$SearchPhotosSuccessfulCopyWithImpl<$Res>
    extends _$SearchPhotosCopyWithImpl<$Res>
    implements $SearchPhotosSuccessfulCopyWith<$Res> {
  _$SearchPhotosSuccessfulCopyWithImpl(SearchPhotosSuccessful _value,
      $Res Function(SearchPhotosSuccessful) _then)
      : super(_value, (v) => _then(v as SearchPhotosSuccessful));

  @override
  SearchPhotosSuccessful get _value => super._value as SearchPhotosSuccessful;

  @override
  $Res call({
    Object photos = freezed,
  }) {
    return _then(SearchPhotosSuccessful(
      photos == freezed ? _value.photos : photos as List<Photo>,
    ));
  }
}

/// @nodoc
class _$SearchPhotosSuccessful implements SearchPhotosSuccessful {
  const _$SearchPhotosSuccessful(this.photos) : assert(photos != null);

  @override
  final List<Photo> photos;

  @override
  String toString() {
    return 'SearchPhotos.successful(photos: $photos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SearchPhotosSuccessful &&
            (identical(other.photos, photos) ||
                const DeepCollectionEquality().equals(other.photos, photos)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(photos);

  @override
  $SearchPhotosSuccessfulCopyWith<SearchPhotosSuccessful> get copyWith =>
      _$SearchPhotosSuccessfulCopyWithImpl<SearchPhotosSuccessful>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String query), {
    @required Result successful(List<Photo> photos),
    @required Result error(dynamic error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(photos);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String query), {
    Result successful(List<Photo> photos),
    Result error(dynamic error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(photos);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(SearchPhotosStart value), {
    @required Result successful(SearchPhotosSuccessful value),
    @required Result error(SearchPhotosError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(SearchPhotosStart value), {
    Result successful(SearchPhotosSuccessful value),
    Result error(SearchPhotosError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class SearchPhotosSuccessful implements SearchPhotos {
  const factory SearchPhotosSuccessful(List<Photo> photos) =
      _$SearchPhotosSuccessful;

  List<Photo> get photos;
  $SearchPhotosSuccessfulCopyWith<SearchPhotosSuccessful> get copyWith;
}

/// @nodoc
abstract class $SearchPhotosErrorCopyWith<$Res> {
  factory $SearchPhotosErrorCopyWith(
          SearchPhotosError value, $Res Function(SearchPhotosError) then) =
      _$SearchPhotosErrorCopyWithImpl<$Res>;
  $Res call({dynamic error});
}

/// @nodoc
class _$SearchPhotosErrorCopyWithImpl<$Res>
    extends _$SearchPhotosCopyWithImpl<$Res>
    implements $SearchPhotosErrorCopyWith<$Res> {
  _$SearchPhotosErrorCopyWithImpl(
      SearchPhotosError _value, $Res Function(SearchPhotosError) _then)
      : super(_value, (v) => _then(v as SearchPhotosError));

  @override
  SearchPhotosError get _value => super._value as SearchPhotosError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(SearchPhotosError(
      error == freezed ? _value.error : error as dynamic,
    ));
  }
}

/// @nodoc
class _$SearchPhotosError implements SearchPhotosError {
  const _$SearchPhotosError(this.error) : assert(error != null);

  @override
  final dynamic error;

  @override
  String toString() {
    return 'SearchPhotos.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SearchPhotosError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $SearchPhotosErrorCopyWith<SearchPhotosError> get copyWith =>
      _$SearchPhotosErrorCopyWithImpl<SearchPhotosError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String query), {
    @required Result successful(List<Photo> photos),
    @required Result error(dynamic error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String query), {
    Result successful(List<Photo> photos),
    Result error(dynamic error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(SearchPhotosStart value), {
    @required Result successful(SearchPhotosSuccessful value),
    @required Result error(SearchPhotosError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(SearchPhotosStart value), {
    Result successful(SearchPhotosSuccessful value),
    Result error(SearchPhotosError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class SearchPhotosError implements SearchPhotos {
  const factory SearchPhotosError(dynamic error) = _$SearchPhotosError;

  dynamic get error;
  $SearchPhotosErrorCopyWith<SearchPhotosError> get copyWith;
}
