import 'package:flutter/material.dart';

class LargeGitroopsGallerySection extends StatelessWidget {
  const LargeGitroopsGallerySection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.surface,
      padding: const EdgeInsets.all(40),
      child: Row(
        children: [
          Expanded(child: Image.asset('assets/fanbase_1.png')),
          const SizedBox(width: 16),
          Expanded(child: Image.asset('assets/fanbase_1.png')),
        ],
      ),
    );
  }
}
