import 'package:assessment/models/feed_model.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class FeedAPI {
  Dio? _dio;

  FeedAPI() {
    _dio = Dio();
  }

  Future<List<Items>?> fetchFeed(List type) async {
    var params = {
      "postTypes": type,
    };
    String url =
        'https://api.cohora.net/post/v1/feed?feedOrigin=ALL_ACTIVITY&page=1&perPage=20';

    try {
      Response response = await _dio!.get(url, queryParameters: params);
      Feed feed = Feed.fromJson(response.data);
      return feed.items;
    } on DioError catch (e) {
      debugPrint(e.message);
    }
    return null;
  }
}
