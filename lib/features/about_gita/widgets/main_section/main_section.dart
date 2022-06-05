import 'package:flutter/material.dart';
import 'package:gita_gitroops/features/about_gita/widgets/main_section/responsive/large.dart';
import 'package:gita_gitroops/features/about_gita/widgets/main_section/responsive/medium.dart';
import 'package:gita_gitroops/features/about_gita/widgets/main_section/responsive/small.dart';
import 'package:gita_gitroops/widgets/responsive_widget.dart';

class MainSection extends StatelessWidget {
  const MainSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ResponsiveWidget(
      largeScreen: LargeMainSection(),
      mediumScreen: MediumMainSection(),
      smallScreen: SmallMainSection(),
    );
  }
}
