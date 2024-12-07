import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebView extends StatefulWidget {
  const WebView({super.key});

  @override
  State<WebView> createState() => _TestState();
}

class _TestState extends State<WebView> {
  late final WebViewController _controller;

  @override
  void initState() {
    super.initState();
    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(Uri.parse('https://www.pinterest.com/pog03032003'));
    // ..loadRequest(Uri.parse('https://www.youtube.com/watch?v=XyPi72cA5fw'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          // title: const Text('WebView Screen'),
          ),
      body: WebViewWidget(controller: _controller),
    );
  }
}
