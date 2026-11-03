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
      ..loadRequest(Uri.parse('https://www.X.com')); // Load Twitter
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue, // Twitter color theme
        title: Row(
          children: [
            const Text('JL3 Pizza', style: TextStyle(fontSize: 25.0)),
            const Spacer(), // Push icons to the right
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '3'); // Twitter page
              },
              child: Image.asset(
                'assets/images/twitter.jpg',
                width: 30,
                fit: BoxFit.cover,
                height: 30,
              ),
            ),
            const SizedBox(width: 10),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '4'); // Facebook page
              },
              child: Image.asset(
                'assets/images/facebook.png',
                fit: BoxFit.contain,
                height: 30,
                width: 30,
              ),
            ),
          ],
        ),
      ),
      body: WebViewWidget(controller: controller), // Display Twitter page
    );
  }
}
