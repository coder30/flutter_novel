import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_novel/database/source.dart';
import 'package:flutter_novel/model/book_source.dart';
import 'package:html/parser.dart';

class SearchPage extends StatelessWidget {
  TextEditingController textController = TextEditingController();

  void onSubmit(String text) async {
    List<BookSource> sourceList = await SourceListHelper().soureceList();
    for (var element in sourceList) {
      if (element.searchUrl == "") continue;

      String searchUrl = element.searchUrl ?? '';
      var index = searchUrl.indexOf(',');
      if (index > 0) {
        continue;
      }
      if (!searchUrl.startsWith('http')) {
        searchUrl = element.bookSourceUrl! + searchUrl;
      }
      searchUrl = searchUrl.replaceAll("{{key}}", text);
      searchUrl = searchUrl.replaceAll("{{page}}", "1");
      element.searchUrl = searchUrl;
    }

    Response response;
    var dio = Dio();
    for (var element in sourceList) {
      if (element.searchUrl == null) continue;
      print(element);
      try {
        response = await dio.get(element.searchUrl ?? '');
        if (response.statusCode == 200) {
          var dom = parse(response.data);
          print(dom.querySelector(element.ruleSearch?.bookList ?? ''));
        }
      } catch (e) {}
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Container(
          height: 40,
          padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
          decoration: BoxDecoration(
            color: const Color(0xFFF2F2F2),
            borderRadius: BorderRadius.circular(10),
          ),
          child: TextField(
            autofocus: true,
            decoration: const InputDecoration(hintText: '搜索书名、作者', border: InputBorder.none),
            onSubmitted: onSubmit,
          ),
        ),
      ),
      body: SearchResultList(),
    );
  }
}

class SearchResultList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(child: const Text(""));
  }
}
