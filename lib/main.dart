import 'package:flutter/material.dart';
import 'package:gita_gitroops/features/about_gita/view/about_gita_page.dart';
import 'package:gita_gitroops/features/about_gitroops/view/about_gitroops_page.dart';
import 'package:gita_gitroops/features/home/view/home_page.dart';
import 'package:gita_gitroops/features/schedule/view/schedule_page.dart';
import 'package:gita_gitroops/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gitroops #TheNewTroops',
      theme: GitroopsTheme.mainTheme(),
      initialRoute: HomePage.routeName,
      routes: {
        HomePage.routeName: (context) => const HomePage(),
        AboutGitaPage.routeName: (context) => const AboutGitaPage(),
        SchedulePage.routeName: (context) => const SchedulePage(),
        AboutGitroopsPage.routeName: (context) => const AboutGitroopsPage(),
      },
    );
  }
}
