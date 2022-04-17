import 'package:flutter/material.dart';
import 'package:gita_gitroops/about_gita/view/about_gita_view.dart';
import 'package:gita_gitroops/about_gitroops/view/about_gitroops_view.dart';
import 'package:gita_gitroops/home/view/home_view.dart';
import 'package:gita_gitroops/schedule/view/schedule_view.dart';
import 'package:gita_gitroops/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: GitroopsTheme.mainTheme(),
      initialRoute: HomeView.routeName,
      routes: {
        HomeView.routeName: (context) => const HomeView(),
        AboutGitaView.routeName: (context) => const AboutGitaView(),
        ScheduleView.routeName: (context) => const ScheduleView(),
        AboutGitroopsView.routeName: (context) => const AboutGitroopsView(),
      },
    );
  }
}
