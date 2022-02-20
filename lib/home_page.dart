// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
//TextEditingController emailcontrol = TextEditingController();
  var url = "https://jsonplaceholder.typicode.com/photos";

  var data;

  int count = 0;

  @override
  void initState() {
    super.initState();
    getdata();
  }

  getdata() async {
    var res = await http.get(Uri.parse(url));
    data = jsonDecode(res.body);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: const <Widget>[
            Text("My Application", style: TextStyle(color: Colors.white)),
          ],
        ),
      ),
      body: Center(
        child: Row(
          children: const <Widget>[
            Text("data"),
            ButtonBar()
          ],
        ),
      ),

      drawer: const MyDrawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
            Navigator.pushNamed(context, "/login");
           setState(() {});
        },
        child: const Icon(Icons.refresh),
      ),
    );
  }
}