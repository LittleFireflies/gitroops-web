import 'package:flutter/material.dart';
import 'package:gita_gitroops/widgets/page_scaffold.dart';

class AboutGitroopsView extends StatelessWidget {
  static const routeName = '/about-gitroops';

  const AboutGitroopsView({Key? key}) : super(key: key);

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
