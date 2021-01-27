// GENERATED CODE - DO NOT MODIFY BY HAND

part of photo;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Photo> _$photoSerializer = new _$PhotoSerializer();

class _$PhotoSerializer implements StructuredSerializer<Photo> {
  @override
  final Iterable<Type> types = const [Photo, _$Photo];
  @override
  final String wireName = 'Photo';

  @override
  Iterable<Object> serialize(Serializers serializers, Photo object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object>[];
  }

  @override
  Photo deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new PhotoBuilder().build();
  }
}

class _$Photo extends Photo {
  factory _$Photo([void Function(PhotoBuilder) updates]) =>
      (new PhotoBuilder()..update(updates)).build();

  _$Photo._() : super._();

  @override
  Photo rebuild(void Function(PhotoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PhotoBuilder toBuilder() => new PhotoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Photo;
  }

  @override
  int get hashCode {
    return 524764470;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('Photo').toString();
  }
}

class PhotoBuilder implements Builder<Photo, PhotoBuilder> {
  _$Photo _$v;

  PhotoBuilder();

  @override
  void replace(Photo other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Photo;
  }

  @override
  void update(void Function(PhotoBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Photo build() {
    final _$result = _$v ?? new _$Photo._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
