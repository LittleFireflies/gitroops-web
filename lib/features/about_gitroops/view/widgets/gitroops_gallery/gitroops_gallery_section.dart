import 'package:flutter/material.dart';
import 'package:gita_gitroops/features/about_gitroops/view/widgets/gitroops_gallery/responsive/large.dart';
import 'package:gita_gitroops/features/about_gitroops/view/widgets/gitroops_gallery/responsive/small.dart';
import 'package:gita_gitroops/widgets/responsive_widget.dart';

class GitroopsGallerySection extends StatelessWidget {
  const GitroopsGallerySection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ResponsiveWidget(
      largeScreen: LargeGitroopsGallerySection(),
      smallScreen: SmallGitroopsGallerySection(),
    );
  }
}
