import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:unsplash_app/src/actions/get_photos.dart';
import 'package:unsplash_app/src/actions/set_selected_photo.dart';
import 'package:unsplash_app/src/containers/is_loading_container.dart';
import 'package:unsplash_app/src/containers/page_container.dart';
import 'package:unsplash_app/src/containers/photos_container.dart';
import 'package:unsplash_app/src/models/app_state.dart';
import 'package:unsplash_app/src/models/photo.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageContainer(
      builder: (BuildContext context, int page) {
        return IsLoadingContainer(
          builder: (BuildContext context, bool isLoading) {
            return Scaffold(
              appBar: AppBar(
                title: Text('${page - 1}'),
              ),
              body: Column(
                children: <Widget>[
                  Expanded(
                    child: Builder(
                      builder: (BuildContext context) {
                        if (isLoading) {
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        }
                        return PhotosContainer(
                          builder: (BuildContext context, BuiltList<Photo> photos) {
                            return Column(
                              children: <Widget>[
                                Expanded(
                                  child: StaggeredGridView.builder(
                                    shrinkWrap: true,
                                    padding: const EdgeInsets.all(16.0),
                                    gridDelegate: SliverStaggeredGridDelegateWithFixedCrossAxisCount(
                                      staggeredTileBuilder: (_) => const StaggeredTile.fit(1),
                                      crossAxisCount: 2,
                                      crossAxisSpacing: 16.0,
                                      mainAxisSpacing: 16.0,
                                    ),
                                    itemCount: photos.length,
                                    itemBuilder: (BuildContext context, int index) {
                                      final Photo photo = photos[index];
                                      return InkWell(
                                        onTap: () async {
                                          StoreProvider.of<AppState>(context).dispatch(SetSelectedPhoto(photo.id));
                                          Navigator.pushNamed(context, '/photoDetail');
                                        },
                                        child: Stack(
                                          alignment: AlignmentDirectional.topEnd,
                                          children: <Widget>[
                                            GridTile(
                                              child: Hero(
                                                tag: '${photo.id}',
                                                child: Image.network(photo.urls['small']),
                                              ),
                                            ),
                                            GestureDetector(
                                              onTap: () {
                                                print('IT WORKS!');
                                              },
                                              child: Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: Container(
                                                  width: 40.0,
                                                  height: 40.0,
                                                  decoration: BoxDecoration(
                                                    color: Colors.white70,
                                                    borderRadius: BorderRadius.circular(4.0),
                                                  ),
                                                  child: Column(
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                    children: <Widget>[
                                                      const Icon(
                                                        Icons.favorite,
                                                        size: 25.0,
                                                        color: Color(0xff373737),
                                                      ),
                                                      Text(
                                                        '${photo.likes}',
                                                        style: const TextStyle(
                                                          fontSize: 10.0,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      );
                                    },
                                  ),
                                ),
                                FlatButton(
                                  child: const Text('Load more'),
                                  onPressed: () {
                                    StoreProvider.of<AppState>(context).dispatch(const GetPhotos());
                                  },
                                ),
                              ],
                            );
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
