import 'package:flutter/material.dart';

import 'package:impasto/core/theme.dart';

class CraftInputSubmit extends StatelessWidget {
  const CraftInputSubmit({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final isLight = theme.brightness == Brightness.light;

    final padding = MediaQuery.of(context).padding;

    return Padding(
      padding: EdgeInsets.only(
        left: padding.left + Freud.space,
        right: padding.right + Freud.space,
      ),
      child: InkWell(
        onTap: () {
          //
        },
        child: Container(
          decoration: BoxDecoration(
            color: isLight ? Freud.brown80 : Freud.brown80,
            borderRadius: BorderRadius.circular(Freud.borderRadius),
          ),
          width: double.infinity,
          height: 64,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Submit',
                style: theme.textTheme.bodyLarge!.copyWith(
                  color: isLight ? Colors.white : Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
