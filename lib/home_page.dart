import 'package:flutter/material.dart';

import 'drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My App"),
      ),
      // ignore: prefer_const_constructors
      drawer: MyDrawer(),
      body: Center(
        child: Container(
          child: Text("welcome to flutter"),
        ),
      ),
    );
  }
}
