import 'package:flutter/material.dart';

import 'package:impasto/core/theme.dart';
import 'package:impasto/crafts/screens/index/index.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Impasto: AI Art & Avatar',
      theme: theme,
      darkTheme: darkTheme,
      home: const IndexScreen(),
    );
  }
}
