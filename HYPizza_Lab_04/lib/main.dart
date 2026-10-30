import 'package:flutter/material.dart';

import 'home.dart';
import 'menu.dart';
import 'facebook.dart';
import 'twitter.dart';
import 'contact.dart';
import 'about.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      routes: {
        'menu': (context) => Menu(),
        'about': (context) => About(),
        'contact': (context) => Contact(),
        'twitter': (context) => Twitter(),
        'facebook': (context) => Facebook(),
      },
    );
  }
}
