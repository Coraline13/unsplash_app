import 'dart:convert';

import 'package:http/http.dart';
import 'package:meta/meta.dart';
import 'package:unsplash_app/src/models/photo.dart';

class UnsplashApi {
  const UnsplashApi({@required Client client})
      : assert(client != null),
        _client = client;

  final Client _client;

  Future<List<Photo>> getPhotos(
    int page,
  ) async {
    final Uri url = Uri(
      scheme: 'https',
      host: 'api.unsplash.com',
      pathSegments: <String>['photos'],
      queryParameters: <String, String>{
        'client_id': 'lIjDLBNmGFVSi-sd2_G9k2yB21sRIeQ7r5oPzazgApY',
        'page': '$page',
        'per_page': '10',
        'order_by': 'latest',
      },
    );

    final Response response = await _client.get(url);
    final String body = response.body;
    final List<dynamic> list = jsonDecode(body);
    return list //
        .map((dynamic json) => Photo.fromJson(json))
        .toList();
  }
}
