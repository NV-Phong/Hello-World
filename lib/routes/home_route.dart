import 'package:flutter/material.dart';
import 'package:helloworld/screens/test_screen.dart';
import 'package:helloworld/screens/webview.screen.dart';

class HomeRoutes {
  static const String test = '/';
  static const String webview = 'webview';
  static Map<String, WidgetBuilder> get routes {
    return {
      test: (context) => const Test(),
      webview: (context) => const WebView(),
    };
  }
}
