import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

// Stateful widget to display WebView
class Facebook extends StatefulWidget {
  const Facebook({super.key});

  @override
  State<Facebook> createState() => _FacebookState();
}

// State class for Facebook
class _FacebookState extends State<Facebook> {
  // WebViewController to control the WebView
  late final WebViewController controller;

  @override
  void initState() {
    super.initState();

    // Initialize the WebViewController
    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(Uri.parse('https://www.facebook.com'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Facebook'),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),

      body: WebViewWidget(controller: controller),
    );
  }
}
