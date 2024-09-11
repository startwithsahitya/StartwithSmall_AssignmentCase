import 'package:flutter/material.dart';
import 'package:startwsmall/Breakpointwise/desktoplayout.dart';
import 'package:startwsmall/Breakpointwise/mobilelayout.dart';
import 'package:startwsmall/Breakpointwise/tabletlayout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'StartWSmall',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF0F0F0),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth <= 600) {
            return const MobileLayout();
          } else if (constraints.maxWidth <= 1200) {
            return const TabletLayout();
          } else {
            return const DesktopLayout();
          }
        },
      ),
    );
  }
}
