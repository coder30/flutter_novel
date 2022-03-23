import 'package:flutter/material.dart';

class BookShelfPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('书架'),
        centerTitle: false,
        actions: [
          IconButton(onPressed: () => {Navigator.pushNamed(context, '/search')}, icon: const Icon(Icons.search))
        ],
      ),
      body: const Center(child: Text('书架')),
    );
  }
}
