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
            ),
          ),
          Row(
            children: [
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, HomeView.routeName);
                },
                child: Text(
                  'Home',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                style: TextButton.styleFrom(
                  primary: Colors.black,
                ),
              ),
              const SizedBox(width: 48),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, ScheduleView.routeName);
                },
                child: Text(
                  'Schedule',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                style: TextButton.styleFrom(
                  primary: Colors.black,
                ),
              ),
              const SizedBox(width: 48),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, AboutGitaView.routeName);
                },
                child: Text(
                  'About Gita',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                style: TextButton.styleFrom(
                  primary: Colors.black,
                ),
              ),
              const SizedBox(width: 48),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, AboutGitroopsView.routeName);
                },
                child: Text(
                  'About Us',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                style: TextButton.styleFrom(
                  primary: Colors.black,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
