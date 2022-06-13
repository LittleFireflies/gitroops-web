import 'package:flutter/material.dart';
import 'package:gita_gitroops/widgets/page_scaffold.dart';

class AboutGitroopsPage extends StatelessWidget {
  static const routeName = '/about-gitroops';

  const AboutGitroopsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageScaffold(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 48),
        child: Column(
          children: const [
            GitroopsProfileSection(),
            SizedBox(height: 80),
            GitroopsGallerySection()
          ],
        ),
      ),
    );
  }
}

class GitroopsGallerySection extends StatelessWidget {
  const GitroopsGallerySection({
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

class GitroopsProfileSection extends StatelessWidget {
  const GitroopsProfileSection({
    Key? key,
  }) : super(key: key);

  static const _description =
      'Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet.';

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 1000,
      child: Row(
        children: [
          Expanded(
            flex: 4,
            child: Image.asset('assets/gitroops_logo.png'),
          ),
          Expanded(
            flex: 6,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Gitroops',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 36,
                  ),
                ),
                const SizedBox(height: 16),
                const Text(
                  _description,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 24,
                  ),
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text('Link Form'),
                    ),
                    const SizedBox(width: 40),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text('Link IG'),
                    ),
                    const SizedBox(width: 40),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text('Link Twitter'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
