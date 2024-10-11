import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class FeedbackPage extends StatefulWidget {
  const FeedbackPage({super.key});

  @override
  State<FeedbackPage> createState() => _FeedbackPageState();
}

class _FeedbackPageState extends State<FeedbackPage> {
  late final WebViewController controller;

  @override
  void initState() {
    super.initState();
    controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(
        Uri.parse('https://docs.google.com/forms/d/e/1FAIpQLSfNUXS-lCP9p64QZBfgPAoF5h3Q49RFxwbT-SRaquIoDLJVVw/viewform?usp=sf_link'),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Heritage Hub",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xFF6993FF),
      ),
      body: WebViewWidget(
        controller: controller,
      ),
    );
  }
}