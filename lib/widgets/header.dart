import 'package:flutter/material.dart';
import 'package:gita_gitroops/features/about_gita/view/about_gita_page.dart';
import 'package:gita_gitroops/features/about_gitroops/view/about_gitroops_page.dart';
import 'package:gita_gitroops/features/home/view/home_page.dart';
import 'package:gita_gitroops/features/quiz/view/home/quiz_home_page.dart';
import 'package:gita_gitroops/features/schedule/view/schedule_page.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 30,
        left: 48,
        right: 48,
      ),
      child: Row(
        children: [
          Text(
            'GITA SEKAR ANDARINI',
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.w600,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          const Spacer(),
          NavItem(
            text: 'Home',
            onPressed: () {
              Navigator.pushNamed(context, HomePage.routeName);
            },
          ),
          NavItem(
            text: 'Schedule',
            onPressed: () {
              Navigator.pushNamed(context, SchedulePage.routeName);
            },
          ),
          NavItem(
            text: 'Quiz',
            onPressed: () {
              Navigator.pushNamed(context, QuizHomePage.routeName);
            },
          ),
          NavItem(
            text: 'About Gita',
            onPressed: () {
              Navigator.pushNamed(context, AboutGitaPage.routeName);
            },
          ),
          NavItem(
            text: 'About Us',
            onPressed: () {
              Navigator.pushNamed(context, AboutGitroopsPage.routeName);
            },
          ),
        ],
      ),
    );
  }
}

class NavItem extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const NavItem({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w500,
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
        style: TextButton.styleFrom(
          foregroundColor: Colors.black,
        ),
      ),
    );
  }
}
