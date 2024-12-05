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
      ..loadRequest(Uri.parse(
          'https://l.facebook.com/l.php?u=https%3A%2F%2Fv0.dev%2Fchat%2FXCySaU8n2wP%3Fb%3Db_jNAi40VjMRO%26fbclid%3DIwZXh0bgNhZW0CMTAAAR0iwXmFq0mKE_rCuK4NVx0QNsiA_XKH2tWPXFlvfBrOGpnmKHZVu0LhwG8_aem_vdQF-fc5xX9b-ewy4yzYdw&h=AT0_LY59Rj-kB7kXyw1orWh4rAtu5wcJ11zkSrdX1opjjXadT7B-e7FahniHMKle5jZliEFQGzUZfCtlc4z-Jwc_wMFVmq4JTulNZ0sVl_bQnqX6yGE6lLL58TH7mGvUSB5AoQ'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WebView Screen'),
      ),
      body: WebViewWidget(controller: _controller),
    );
  }
}
