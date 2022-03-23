import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_novel/database/source.dart';
import 'package:flutter_novel/model/book_source.dart';

void getSourceList(String url) async {
  List<BookSource> sourceList = await fetchSourceList(url);
  for (var element in sourceList) {
    SourceListHelper().insert(element);
  }
}

Future<List<BookSource>> fetchSourceList(String url) async {
  Response response;
  var dio = Dio();
  response = await dio.get(url);
  List<BookSource> data = getBookSourceList(jsonDecode(response.data));
  return data;
}
