import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';


class Twitter extends StatefulWidget {
  const Twitter({super.key});


  @override
  State<Twitter> createState() => _TwitterState();
}


class _TwitterState extends State<Twitter> {
  late final WebViewController controller;


  @override
  void initState() {
    super.initState();
    // Initialize the WebViewController
    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted) // Enable JS
      ..loadRequest(Uri.parse('https://www.twitter.com')); // Load Twitter
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: const Text(
          'HY Pizza',
          style: TextStyle(fontSize: 25.0),
        ),
      ),
      body: WebViewWidget(controller: controller),
    );
  }
}
