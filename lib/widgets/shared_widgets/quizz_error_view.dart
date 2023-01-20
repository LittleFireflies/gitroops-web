import 'package:flutter/material.dart';
import 'package:gita_gitroops/widgets/shared_widgets/quizz_primary_button.dart';

class QuizzErrorView extends StatelessWidget {
  final String errorMessage;
  final VoidCallback? onRetryButtonPressed;

  const QuizzErrorView({
    Key? key,
    required this.errorMessage,
    this.onRetryButtonPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.error_outline,
            size: 80,
          ),
          const SizedBox(height: 28),
          Text(
            errorMessage,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 28),
          Visibility(
            visible: onRetryButtonPressed != null,
            child: QuizzPrimaryButton(
              label: 'Retry',
              onPressed: onRetryButtonPressed,
            ),
          ),
        ],
      ),
    );
  }
}
