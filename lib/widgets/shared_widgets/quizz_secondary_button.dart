import 'package:flutter/material.dart';

class QuizzSecondaryButton extends StatelessWidget {
  const QuizzSecondaryButton({
    Key? key,
    required this.label,
    required this.onPressed,
    this.trailing,
  }) : super(key: key);

  final String label;
  final VoidCallback? onPressed;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(16)),
        ),
        side: BorderSide(
          width: 2,
          color: Theme.of(context).colorScheme.primary,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(child: Text(label)),
          if (trailing != null) ...[
            const SizedBox(width: 8),
            trailing!,
          ],
        ],
      ),
    );
  }
}
