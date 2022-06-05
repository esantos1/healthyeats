import 'package:flutter/material.dart';
import 'package:healthyeats/constants.dart';
import 'package:healthyeats/pages/login_page.dart';
import 'package:healthyeats/routes/routes.dart';

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
        primaryColor: Color(0xFFFDBA57),
        scaffoldBackgroundColor: kBackgroundColor,
        backgroundColor: kBackgroundColor,
      ),
      initialRoute: '/',
      routes: routes,
    );
  }
}
