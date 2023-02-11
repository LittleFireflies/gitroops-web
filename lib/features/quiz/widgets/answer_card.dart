import 'package:flutter/material.dart';
import 'package:gita_gitroops/theme/color_scheme.dart';
import 'package:gita_gitroops/widgets/shared_widgets/quizz_primary_button.dart';
import 'package:gita_gitroops/widgets/shared_widgets/quizz_secondary_button.dart';

class AnswerCard extends StatelessWidget {
  const AnswerCard({
    Key? key,
    required this.text,
    required this.correctAnswer,
    this.selected = false,
    required this.onTap,
  }) : super(key: key);

  final String text;
  final bool selected;
  final bool correctAnswer;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return selected
        ? QuizzSecondaryButton(
            label: text,
            trailing: correctAnswer
                ? Icon(
                    Icons.check_circle_rounded,
                    color: Theme.of(context).colorScheme.green,
                  )
                : Icon(
                    Icons.close,
                    color: Theme.of(context).colorScheme.red,
                  ),
            onPressed: onTap,
          )
        : QuizzPrimaryButton(label: text, onPressed: onTap);
  }
}
