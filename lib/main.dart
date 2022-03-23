import 'package:flutter/material.dart';
import 'package:flutter_novel/page/book_shelf.dart';
import 'package:flutter_novel/page/home.dart';
import 'package:flutter_novel/page/mine.dart';
import 'package:flutter_novel/page/reader.dart';
import 'package:flutter_novel/page/search.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: ''),
      routes: {'/reader': ((context) => ReaderPage()), '/search': (context) => SearchPage()},
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final int _counter = 0;
  int currentIndex = 0;
  final pages = [BookShelfPage(), HomePage(), MinePage()];

  void _onItemClick(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: pages[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: currentIndex,
          onTap: _onItemClick,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.book), label: '书架'),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: '书源'),
            BottomNavigationBarItem(icon: Icon(Icons.man), label: '我的'),
          ],
        ));
  }
}
