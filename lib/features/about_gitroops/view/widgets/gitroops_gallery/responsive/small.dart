import 'package:flutter/material.dart';

class SmallGitroopsGallerySection extends StatelessWidget {
  const SmallGitroopsGallerySection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.surface,
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Image.asset('assets/fanbase_1.png'),
          const SizedBox(height: 8),
          Image.asset('assets/fanbase_2.jpg'),
        ],
      ),
    );
  }
}
