import 'package:flutter/material.dart';

class QuizzTextButton extends StatelessWidget {
  const QuizzTextButton({
    Key? key,
    required this.label,
    required this.onPressed,
    this.leading,
    this.style,
  }) : super(key: key);

  final String label;
  final VoidCallback? onPressed;
  final Widget? leading;
  final ButtonStyle? style;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: style ??
          TextButton.styleFrom(
            foregroundColor: Theme.of(context).colorScheme.secondary,
          ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (leading != null) ...[
            leading!,
            const SizedBox(width: 8),
          ],
          Flexible(child: Text(label)),
        ],
      ),
    );
  }
}
