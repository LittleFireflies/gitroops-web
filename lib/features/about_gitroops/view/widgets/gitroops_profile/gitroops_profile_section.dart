import 'package:flutter/material.dart';
import 'package:gita_gitroops/features/about_gitroops/view/widgets/gitroops_profile/responsive/large.dart';
import 'package:gita_gitroops/features/about_gitroops/view/widgets/gitroops_profile/responsive/small.dart';
import 'package:gita_gitroops/utils/constants.dart';
import 'package:gita_gitroops/widgets/responsive_widget.dart';

class GitroopsProfileSection extends StatelessWidget {
  const GitroopsProfileSection({Key? key}) : super(key: key);

  static const _description = AppConstants.aboutGitroops;

  @override
  Widget build(BuildContext context) {
    return const ResponsiveWidget(
      largeScreen: LargeGitroopsProfileSection(
        description: _description,
      ),
      smallScreen: SmallGitroopsProfileSection(
        description: _description,
      ),
    );
  }
}
