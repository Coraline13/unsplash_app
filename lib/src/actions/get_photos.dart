library get_photos;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:unsplash_app/src/models/photo.dart';

part 'get_photos.freezed.dart';

@freezed
abstract class GetPhotos with _$GetPhotos {
  const factory GetPhotos() = GetPhotosStart;

  const factory GetPhotos.successful(List<Photo> photos) = GetPhotosSuccessful;

  const factory GetPhotos.error(dynamic error) = GetPhotosError;
}
