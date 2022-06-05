import 'package:flutter/material.dart';
import 'package:gita_gitroops/widgets/page_scaffold.dart';

class AboutGitroopsPage extends StatelessWidget {
  static const routeName = '/about-gitroops';

  const AboutGitroopsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageScaffold(
      child: Stack(
        alignment: Alignment.center,
        children: [
          const Placeholder(),
          Text(
            'About Gitroops',
            style: TextStyle(
              fontSize: 36,
            ),
          ),
        ],
      ),
    );
  }
}
