import 'package:flutter/material.dart';
import 'package:helloworld/screens/animate_screen.dart';
import 'package:helloworld/screens/webview_screen.dart';
import 'package:helloworld/screens/webviews_screen.dart';

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int currentPageIndex = 0;

  // Các trang ứng với từng tab
  final List<Widget> pages = [
    const WebView(),
    const Animate(),
    const WebViewDemo(),
    const Center(child: Text('Messages Page')), // Trang Messages
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentPageIndex,
        children: pages,
      ),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),
            label: 'WebView',
          ),
          NavigationDestination(
            icon: Icon(Icons.notifications),
            label: 'Animation',
          ),
          NavigationDestination(
            icon: Icon(Icons.message),
            label: 'WebView Demo',
          ),
        ],
      ),
    );
  }
}
