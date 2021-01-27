import 'package:unsplash_app/src/actions/get_photos.dart';
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
  }

  return builder.build();
}
