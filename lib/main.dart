import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:http/http.dart';
import 'package:redux/redux.dart';
import 'package:unsplash_app/src/actions/get_photos.dart';
import 'package:unsplash_app/src/data/unsplash_api.dart';
import 'package:unsplash_app/src/middleware/app_middleware.dart';
import 'package:unsplash_app/src/models/app_state.dart';
import 'package:unsplash_app/src/presentation/home_page.dart';
import 'package:unsplash_app/src/reducer/reducer.dart';

void main() {
  final Client client = Client();
  final UnsplashApi unsplashApi = UnsplashApi(client: client);
  final AppMiddleware middleware = AppMiddleware(unsplashApi: unsplashApi);
  final AppState initialState = AppState.initialState();
  final Store<AppState> store = Store<AppState>(
    reducer,
    initialState: initialState,
    middleware: middleware.middleware,
  );

  store.dispatch(const GetPhotos());

  runApp(MyApp(store: store));
}

class MyApp extends StatelessWidget {
  const MyApp({Key key, @required this.store}) : super(key: key);

  final Store<AppState> store;

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: store,
      child: const MaterialApp(
        home: HomePage(),
      ),
    );
  }
}
