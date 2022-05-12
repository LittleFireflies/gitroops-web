import 'package:flutter/material.dart';
import 'package:gita_gitroops/about_gita/view/about_gita_view.dart';
import 'package:gita_gitroops/about_gitroops/view/about_gitroops_view.dart';
import 'package:gita_gitroops/home/view/home_view.dart';
import 'package:gita_gitroops/schedule/view/schedule_view.dart';

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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'GITA SEKAR ANDARINI',
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.w600,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          Row(
            children: [
              NavItem(
                text: 'Home',
                onPressed: () {
                  Navigator.pushNamed(context, HomeView.routeName);
                },
              ),
              NavItem(
                text: 'Schedule',
                onPressed: () {
                  Navigator.pushNamed(context, ScheduleView.routeName);
                },
              ),
              NavItem(
                text: 'About Gita',
                onPressed: () {
                  Navigator.pushNamed(context, AboutGitaView.routeName);
                },
              ),
              NavItem(
                text: 'About Us',
                onPressed: () {
                  Navigator.pushNamed(context, AboutGitroopsView.routeName);
                },
              ),
            ],
          )
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
          primary: Colors.black,
        ),
      ),
    );
  }
}
