import 'package:flutter/material.dart';
import 'package:gita_gitroops/features/quiz/domains/models/answer_history.dart';
import 'package:gita_gitroops/theme/color_scheme.dart';

class AnswerHistoryView extends StatelessWidget {
  const AnswerHistoryView({
    Key? key,
    required this.answer,
  }) : super(key: key);

  final AnswerHistory answer;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            answer.question,
            style: const TextStyle(
              fontSize: 14,
            ),
          ),
          Row(
            children: [
              if (answer.answer != answer.correctAnswer) ...[
                Icon(
                  Icons.close,
                  color: Theme.of(context).colorScheme.red,
                ),
                Flexible(
                  child:
                      Text(answer.answer == '' ? 'No Answer' : answer.answer),
                ),
                const SizedBox(width: 8),
              ],
              Icon(
                Icons.check,
                color: Theme.of(context).colorScheme.green,
              ),
              Flexible(
                child: Text(answer.correctAnswer),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
