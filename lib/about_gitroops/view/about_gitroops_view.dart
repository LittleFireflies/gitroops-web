import 'package:flutter/material.dart';
import 'package:gita_gitroops/widgets/page_scaffold.dart';
import 'package:google_fonts/google_fonts.dart';

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
            style: GoogleFonts.poppins(
              fontSize: 36,
            ),
          ),
        ],
      ),
    );
  }
}
