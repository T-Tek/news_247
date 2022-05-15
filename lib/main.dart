// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:news_247/config/theme.dart';
import 'package:news_247/pages/login_page.dart';
import 'package:news_247/pages/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: theme(),
      home: WelcomePage(),
    );
  }
}
