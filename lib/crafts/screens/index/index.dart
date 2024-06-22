import 'package:flutter/material.dart';

import 'package:impasto/core/theme.dart';
import 'package:impasto/core/widgets/app_bar.dart';
import 'package:impasto/crafts/data/dummy.dart';
import 'package:impasto/crafts/models/craft.dart';
import 'package:impasto/crafts/screens/show/show.dart';

class IndexScreen extends StatelessWidget {
  const IndexScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final isLight = theme.brightness == Brightness.light;

    return Scaffold(
      backgroundColor: isLight ? Freud.brown10 : Freud.brown100,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const FreudAppBar(
            title: 'Explore',
          ),
          Expanded(
            child: ListView.separated(
              padding: const EdgeInsets.only(
                top: Freud.space,
              ),
              itemBuilder: (context, index) {
                return CraftListItem(craft: dummyCrafts[index]);
              },
              separatorBuilder: (context, index) {
                return const SizedBox(height: Freud.space);
              },
              itemCount: dummyCrafts.length,
            ),
          )
        ],
      ),
    );
  }
}

class CraftListItem extends StatelessWidget {
  const CraftListItem({
    super.key,
    required this.craft,
  });

  final Craft craft;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final isLight = theme.brightness == Brightness.light;

    final padding = MediaQuery.of(context).padding;

    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return ShowScreen(craft: craft);
            },
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.all(Freud.space),
        decoration: BoxDecoration(
          color: isLight ? Colors.white : Freud.brown90,
          borderRadius: BorderRadius.circular(Freud.borderRadius),
        ),
        margin: EdgeInsets.only(
          left: padding.left + Freud.space,
          right: padding.right + Freud.space,
        ),
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                color: isLight ? Freud.brown10 : Freud.brown100,
                borderRadius: BorderRadius.circular(Freud.borderRadiusSmall),
              ),
              width: 48,
              height: 48,
            ),
            const SizedBox(width: Freud.space),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(craft.title),
                  Text(
                    craft.description,
                    style: theme.textTheme.bodySmall!.copyWith(
                      color: isLight ? Freud.gray60 : Freud.gray30,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
