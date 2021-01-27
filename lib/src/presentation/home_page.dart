import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:unsplash_app/src/containers/is_loading_container.dart';
import 'package:unsplash_app/src/containers/page_container.dart';
import 'package:unsplash_app/src/containers/photos_container.dart';
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
                                  child: GridView.builder(
                                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 2,
                                    ),
                                    itemCount: photos.length,
                                    itemBuilder: (BuildContext context, int index) {
                                      final Photo photo = photos[index];

                                      return GridTile(
                                        child: Image.network(photo.urls['small']),
                                      );
                                    },
                                  ),
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
