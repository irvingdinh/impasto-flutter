import 'package:flutter/material.dart';

import 'package:impasto/core/theme.dart';
import 'package:impasto/core/widgets/app_bar.dart';
import 'package:impasto/crafts/models/craft.dart';
import 'package:impasto/crafts/widgets/inputs/submit.dart';
import 'package:impasto/crafts/widgets/inputs/textarea.dart';

class ShowScreen extends StatefulWidget {
  const ShowScreen({
    super.key,
    required this.craft,
  });

  final Craft craft;

  @override
  State<ShowScreen> createState() => _ShowScreenState();
}

class _ShowScreenState extends State<ShowScreen> {
  final Map<String, TextEditingController> inputToController = {};

  @override
  void initState() {
    super.initState();

    for (final input in widget.craft.inputs) {
      final controller = TextEditingController();
      inputToController[input.name] = controller;
    }
  }

  void onSubmit() {
    for (final input in widget.craft.inputs) {
      inputToController[input.name];
    }
  }

  @override
  void dispose() {
    inputToController.forEach((key, value) {
      value.dispose();
    });

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final isLight = theme.brightness == Brightness.light;

    List<Widget> fields = [];
    for (final input in widget.craft.inputs) {
      switch (input.type) {
        case CraftInputType.textarea:
          fields.add(
            CraftInputTextarea(
              input: input,
              controller: inputToController[input.name]!,
            ),
          );
          break;
        default:
          break;
      }

      fields.add(const SizedBox(height: Freud.space));
    }

    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        backgroundColor: isLight ? Freud.brown10 : Freud.brown100,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            FreudAppBar(
              title: widget.craft.title,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(height: Freud.space),
                    ...fields,
                    const SizedBox(height: Freud.space),
                    CraftInputSubmit(onTap: onSubmit),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
