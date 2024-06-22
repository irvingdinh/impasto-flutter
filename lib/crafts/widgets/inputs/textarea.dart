import 'package:flutter/material.dart';

import 'package:impasto/core/theme.dart';
import 'package:impasto/crafts/models/craft.dart';

class CraftInputTextarea extends StatelessWidget {
  const CraftInputTextarea({
    super.key,
    required this.input,
    required this.controller,
  });

  final CraftInput input;

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final isLight = theme.brightness == Brightness.light;

    final padding = MediaQuery.of(context).padding;

    return Container(
      margin: EdgeInsets.only(
        left: padding.left + Freud.space,
        right: padding.right + Freud.space,
      ),
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(input.title),
          const SizedBox(height: Freud.space),
          TextField(
            controller: controller,
            decoration: InputDecoration(
              hintStyle: theme.textTheme.bodyMedium!.copyWith(
                color: isLight ? Freud.gray60 : Freud.gray30,
              ),
              contentPadding: const EdgeInsets.all(Freud.space),
              filled: true,
              fillColor: isLight ? Freud.gray20 : Freud.brown90,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(Freud.borderRadius),
                borderSide: BorderSide.none,
              ),
            ),
            style: theme.textTheme.bodyMedium,
            maxLines: 8,
            minLines: 4,
          ),
        ],
      ),
    );
  }
}
