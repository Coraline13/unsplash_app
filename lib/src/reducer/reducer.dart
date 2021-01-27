import 'package:unsplash_app/src/actions/get_photos.dart';
import 'package:unsplash_app/src/actions/search_photos.dart';
import 'package:unsplash_app/src/actions/set_selected_photo.dart';
import 'package:unsplash_app/src/actions/update_color.dart';
import 'package:unsplash_app/src/models/app_state.dart';

AppState reducer(AppState state, dynamic action) {
  print('ACTION: $action');
  final AppStateBuilder builder = state.toBuilder();

  if (action is GetPhotosStart) {
    builder.isLoading = true;
  } else if (action is GetPhotosSuccessful) {
    builder
      ..photos.addAll(action.photos)
      ..isLoading = false
      ..nextPage = builder.nextPage + 1;
  } else if (action is GetPhotosError) {
    builder.isLoading = false;
  } else if (action is SetSelectedPhoto) {
    builder.selectedPhoto = action.photoId;
  } else if (action is SearchPhotosStart) {
    builder.isLoading = true;
  } else if (action is SearchPhotosSuccessful) {
    builder
      ..photos.addAll(action.photos)
      ..isLoading = false
      ..nextPage = builder.nextPage + 1;
  } else if (action is SearchPhotosError) {
    builder.isLoading = false;
  } else if (action is UpdateColor) {
    builder
      ..photos.clear()
      ..nextPage = 1
      ..color = action.color;
  }

  return builder.build();
}
