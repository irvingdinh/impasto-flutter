import 'package:flutter/material.dart';

import 'package:firebase_core/firebase_core.dart';

import 'package:impasto/core/theme.dart';
import 'package:impasto/crafts/screens/index/index.dart';
import 'package:impasto/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

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
