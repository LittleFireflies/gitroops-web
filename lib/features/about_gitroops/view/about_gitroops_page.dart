import 'package:flutter/material.dart';
import 'package:gita_gitroops/features/about_gitroops/view/widgets/gitroops_gallery/gitroops_gallery_section.dart';
import 'package:gita_gitroops/features/about_gitroops/view/widgets/gitroops_profile/gitroops_profile_section.dart';
import 'package:gita_gitroops/widgets/page_scaffold.dart';

class AboutGitroopsPage extends StatelessWidget {
  static const routeName = '/about-gitroops';

  const AboutGitroopsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const PageScaffold(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 48),
        child: Column(
          children: [
            GitroopsProfileSection(),
            SizedBox(height: 80),
            GitroopsGallerySection()
          ],
        ),
      ),
    );
  }
}
