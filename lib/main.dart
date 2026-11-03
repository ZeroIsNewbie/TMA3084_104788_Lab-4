import 'package:flutter/material.dart';

import 'home.dart';
import 'menu.dart';
import 'facebook.dart';
import 'twitter.dart';
import 'contact.dart';
import 'about.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'JL3 Pizza',
      initialRoute: '/',
      routes: {
        '/': (context) => const Home(),
        'menu': (context) => const Menu(),
        'about': (context) => const About(),
        'contact': (context) => const Contact(),
        'twitter': (context) => const Twitter(),
        'facebook': (context) => const Facebook(),
      },
    );
  }
}
