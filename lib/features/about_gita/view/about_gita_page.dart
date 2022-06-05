import 'package:flutter/material.dart';
import 'package:gita_gitroops/features/about_gita/widgets/main_section/main_section.dart';
import 'package:gita_gitroops/features/about_gita/widgets/stats/stats_section.dart';
import 'package:gita_gitroops/features/about_gita/widgets/youtube/youtube_section.dart';
import 'package:gita_gitroops/widgets/page_scaffold.dart';
import 'package:gita_gitroops/widgets/responsive_widget.dart';

class AboutGitaPage extends StatelessWidget {
  static const routeName = '/about-gita';

  const AboutGitaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageScaffold(
      child: Column(
        children: [
          const MainSection(),
          SizedBox(height: ResponsiveWidget.isLargeScreen(context) ? 48 : 24),
          const YoutubeSection(),
          SizedBox(height: ResponsiveWidget.isLargeScreen(context) ? 48 : 24),
          const StatsSection(),
        ],
      ),
    );
  }
}
