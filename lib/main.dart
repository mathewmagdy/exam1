import 'package:exam/second_page.dart';
import 'package:exam/third_page.dart';
import 'package:flutter/material.dart';

import 'first_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: FirstPage.routeName,
      routes: {
        FirstPage.routeName: (context) => FirstPage(),
        SecondPage.routeName: (context) => SecondPage(),
        ThirdPage.routeName: (context) => ThirdPage(),
      },
    );
  }
}

