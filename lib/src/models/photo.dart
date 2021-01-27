library photo;

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

  static Serializer<Photo> get serializer => _$photoSerializer;
}
