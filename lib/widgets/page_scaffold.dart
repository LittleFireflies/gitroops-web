import 'package:flutter/material.dart';
import 'package:gita_gitroops/about_gita/view/about_gita_view.dart';
import 'package:gita_gitroops/about_gitroops/view/about_gitroops_view.dart';
import 'package:gita_gitroops/home/view/home_view.dart';
import 'package:gita_gitroops/schedule/view/schedule_view.dart';
import 'package:gita_gitroops/widgets/header.dart';
import 'package:gita_gitroops/widgets/responsive_widget.dart';

class PageScaffold extends StatelessWidget {
  final Widget child;

  const PageScaffold({Key? key, required this.child}) : super(key: key);

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
                      title: Text('Home'),
                      onTap: () {
                        Navigator.pushNamed(context, HomeView.routeName);
                      },
                    ),
                    ListTile(
                      title: Text('Schedule'),
                      onTap: () {
                        Navigator.pushNamed(context, ScheduleView.routeName);
                      },
                    ),
                    ListTile(
                      title: Text('About Gita'),
                      onTap: () {
                        Navigator.pushNamed(context, AboutGitaView.routeName);
                      },
                    ),
                    ListTile(
                      title: Text('About Us'),
                      onTap: () {
                        Navigator.pushNamed(
                            context, AboutGitroopsView.routeName);
                      },
                    ),
                  ],
                ),
              ),
            )
          : null,
      body: SingleChildScrollView(
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
      ),
    );
  }
}
