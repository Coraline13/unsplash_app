library photo;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:unsplash_app/src/models/serializers.dart';

part 'photo.g.dart';

abstract class Photo implements Built<Photo, PhotoBuilder> {
  factory Photo([void Function(PhotoBuilder) updates]) = _$Photo;

  factory Photo.fromJson(dynamic json) {
    return serializers.deserializeWith(serializer, json);
  }

  Photo._();

  String get id;

  int get width;

  int get height;

  @nullable
  String get description;

  @BuiltValueField(wireName: 'alt_description')
  String get altDescription;

  BuiltMap<String, String> get urls;

  static Serializer<Photo> get serializer => _$photoSerializer;
}
