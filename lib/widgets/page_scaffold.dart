import 'package:flutter/material.dart';
import 'package:gita_gitroops/features/about_gita/view/about_gita_page.dart';
import 'package:gita_gitroops/features/about_gitroops/view/about_gitroops_page.dart';
import 'package:gita_gitroops/features/home/view/home_page.dart';
import 'package:gita_gitroops/features/quiz/view/home/quiz_home_page.dart';
import 'package:gita_gitroops/features/schedule/view/schedule_page.dart';
import 'package:gita_gitroops/widgets/header.dart';
import 'package:gita_gitroops/widgets/responsive_widget.dart';

class PageScaffold extends StatelessWidget {
  final bool scrollable;
  final Widget child;

  const PageScaffold({
    Key? key,
    required this.child,
    this.scrollable = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ResponsiveWidget.getScreenSizeId(context) < ResponsiveWidget.large
          ? AppBar(
              title: const Text('Gita Sekar Andarini'),
              centerTitle: false,
            )
          : null,
      drawer: ResponsiveWidget.getScreenSizeId(context) < ResponsiveWidget.large
          ? Drawer(
              child: SafeArea(
                child: Column(
                  children: [
                    ListTile(
                      title: const Text('Home'),
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.pushNamed(context, HomePage.routeName);
                      },
                    ),
                    ListTile(
                      title: const Text('Schedule'),
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.pushNamed(context, SchedulePage.routeName);
                      },
                    ),
                    ListTile(
                      title: const Text('Quiz'),
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.pushNamed(context, QuizHomePage.routeName);
                      },
                    ),
                    ListTile(
                      title: const Text('About Gita'),
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.pushNamed(context, AboutGitaPage.routeName);
                      },
                    ),
                    ListTile(
                      title: const Text('About Us'),
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.pushNamed(
                            context, AboutGitroopsPage.routeName);
                      },
                    ),
                  ],
                ),
              ),
            )
          : null,
      body: scrollable
          ? SingleChildScrollView(
              child: Align(
                alignment: Alignment.topCenter,
                child: SizedBox(
                  width: 1440,
                  child: Column(
                    children: [
                      if (ResponsiveWidget.getScreenSizeId(context) >
                          ResponsiveWidget.medium) ...[const Header()],
                      child,
                    ],
                  ),
                ),
              ),
            )
          : Align(
              alignment: Alignment.topCenter,
              child: SizedBox(
                width: 1440,
                child: Column(
                  children: [
                    if (ResponsiveWidget.getScreenSizeId(context) >
                        ResponsiveWidget.medium) ...[const Header()],
                    Expanded(child: child),
                  ],
                ),
              ),
            ),
    );
  }
}
