import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';


class Facebook extends StatefulWidget {
  const Facebook({super.key});


  @override
  State<Facebook> createState() => _FacebookState();
}


class _FacebookState extends State<Facebook> {
  late final WebViewController controller;


  @override
  void initState() {
    super.initState();
    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(Uri.parse('https://www.facebook.com'));
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
