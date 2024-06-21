import 'package:flutter/material.dart';

import 'package:impasto/core/theme.dart';

class IndexScreen extends StatelessWidget {
  const IndexScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final isLight = theme.brightness == Brightness.light;

    return Scaffold(
      backgroundColor: isLight ? Freud.brown10 : Freud.brown100,
      body: const SizedBox(),
    );
  }
}
