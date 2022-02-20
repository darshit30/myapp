import 'package:flutter/material.dart';
import 'package:myapp/home_page.dart';

import 'DrawerMenu/account.dart';
import 'loginpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const LoginPage(),
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      routes: {
        "/login": (context) => const LoginPage(),
        "/home": (context) => const HomePage(),
        "/account": (context) => const AccountPage()
      },
    );
  }
}
