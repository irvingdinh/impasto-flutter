import 'package:flutter/material.dart';

import 'package:impasto/core/theme.dart';

class CraftInputSubmit extends StatelessWidget {
  const CraftInputSubmit({
    super.key,
    required this.onTap,
  });

  final void Function() onTap;

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
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            color: isLight ? Freud.brown80 : Freud.brown60,
            borderRadius: BorderRadius.circular(Freud.borderRadiusCircle),
          ),
          width: double.infinity,
          height: 64,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Generate',
                style: theme.textTheme.bodyLarge!.copyWith(
                  color: isLight ? Colors.white : Colors.white,
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
