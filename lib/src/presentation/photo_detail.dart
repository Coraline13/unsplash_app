import 'package:flutter/material.dart';
import 'package:unsplash_app/src/containers/photo_container.dart';
import 'package:unsplash_app/src/models/photo.dart';

class PhotoDetail extends StatelessWidget {
  const PhotoDetail({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PhotoContainer(
      builder: (BuildContext context, Photo photo) {
        print('PHOTO: $photo');
        return Scaffold(
          appBar: AppBar(
            title: Text(photo.altDescription ?? ''),
          ),
          body: Hero(
            tag: '${photo.id}',
            child: Image.network(photo.urls['regular']),
          ),
        );
      },
    );
  }
}
