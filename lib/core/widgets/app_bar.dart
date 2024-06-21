import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:impasto/core/theme.dart';

class FreudAppBar extends StatelessWidget {
  const FreudAppBar({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final isLight = theme.brightness == Brightness.light;

    final padding = MediaQuery.of(context).padding;

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarBrightness: isLight ? Brightness.light : Brightness.dark,
    ));

    return Container(
      margin: EdgeInsets.only(
        left: padding.left + Freud.space,
        top: padding.top,
        right: padding.right + Freud.space,
      ),
      height: 48,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: theme.textTheme.bodyMedium!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
