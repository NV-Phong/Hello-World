import 'package:flutter/material.dart';
import 'package:helloworld/layout/layout.dart';
import 'package:helloworld/screens/animate_screen.dart';
import 'package:helloworld/screens/webview_screen.dart';
import 'package:helloworld/screens/webviews_screen.dart';

class HomeRoutes {
  static final Map<String, WidgetBuilder> routes = {
    '/': (context) => const Layout(body: WebView()),
    '/animate': (context) => const Layout(body: Animate()),
    '/webview': (context) => const Layout(body: WebViewDemo()),
  };
}
