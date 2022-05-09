import 'package:flutter/material.dart';
import 'package:healthyeats/constants.dart';
import 'package:healthyeats/pages/loading_page.dart';
import 'package:healthyeats/pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: kBackgroundColor,
        backgroundColor: kBackgroundColor,
      ),
      home: LoginPage(),
    );
  }
}
