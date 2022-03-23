import 'package:flutter/material.dart';
import 'package:flutter_novel/database/source.dart';
import 'package:flutter_novel/model/book_source.dart';
import 'package:flutter_novel/presenter/source.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  late Future<List<BookSource>> sourceList;
  TextEditingController inputController = TextEditingController();

  @override
  void initState() {
    sourceList = SourceListHelper().soureceList();
  }

  void clickAdd() async {
    bool? input = await showInputDialog();
    if (input != null) {
      print(inputController.text);
      getSourceList(inputController.text);
    }
    inputController.clear();
  }

  void onSubmit(String text) {
    Navigator.of(context).pop(true);
  }

  // 弹出对话框
  Future<bool?> showInputDialog() {
    return showDialog<bool>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("网络导入"),
          content: TextField(
              autofocus: true,
              decoration: const InputDecoration(
                hintText: 'url',
              ),
              onSubmitted: onSubmit,
              controller: inputController),
          actions: <Widget>[
            TextButton(
              child: const Text("取消"),
              onPressed: () => Navigator.of(context).pop(), // 关闭对话框
            ),
            TextButton(
              child: const Text("确定"),
              onPressed: () {
                //关闭对话框并返回true
                Navigator.of(context).pop(true);
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: false,
          title: const Text('书源'),
          actions: [IconButton(onPressed: clickAdd, icon: const Icon(Icons.add))],
        ),
        body: Center(
            child: FutureBuilder<List<BookSource>>(
          future: sourceList,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                  itemCount: snapshot.data?.length,
                  itemBuilder: (BuildContext contenxt, int index) {
                    return BookSourceCard(snapshot.data?[index]);
                  });
            }
            return const Text('');
          },
        )));
  }
}

class BookSourceCard extends StatelessWidget {
  BookSource? bookSource;

  BookSourceCard(this.bookSource);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.fromLTRB(20, 5, 10, 5),
        decoration: BoxDecoration(color: Colors.grey, borderRadius: BorderRadius.circular(10)),
        child: Text(bookSource?.bookSourceName ?? ''));
  }
}
