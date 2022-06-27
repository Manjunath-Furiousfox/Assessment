import 'dart:io';
import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';
// import 'package:fluttertoast/fluttertoast.dart';

class CategoryAPI {
  Dio? _dio;

  CategoryAPI() {
    _dio = Dio();
  }
  Future<List?> fetchCategory() async {
    String url = "https://api.cohora.net/post/v1/feed/availableTypes";

    try {
      Response response = await _dio!.get(
        url,
        options: Options(headers: {
          HttpHeaders.contentTypeHeader: "application/json",
        }),
      );
      List list = response.data;
      // print(list);

      return list;
    } catch (error) {
      print(error);
    }
    return null;
  }
}
