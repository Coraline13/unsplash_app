import 'package:atelieruldigital_flutter/src/06/homework/src/actions/get_photos.dart';
import 'package:atelieruldigital_flutter/src/06/homework/src/models/app_state.dart';

AppState reducer(AppState state, dynamic action) {
  print('action: $action');
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
