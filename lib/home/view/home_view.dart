import 'package:flutter/material.dart';
import 'package:gita_gitroops/widgets/header.dart';
import 'package:gita_gitroops/widgets/page_scaffold.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeView extends StatelessWidget {
  static const routeName = '/';

  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageScaffold(
      child: Column(
        children: [
          const Header(),
          Padding(
            padding: const EdgeInsets.only(
              top: 120,
              bottom: 120,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 500,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Lorem Ipsum Dolor Sit Amet',
                        style: GoogleFonts.poppins(
                          fontSize: 60,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text('Explore'),
                      ),
                    ],
                  ),
                ),
                Stack(
                  children: [
                    Container(
                      width: 600,
                      height: 800,
                      color: Color(0xFFE5E5E5),
                    ),
                    Positioned(
                      top: 40,
                      left: -75,
                      child: SizedBox(
                        width: 560,
                        height: 600,
                        child: Placeholder(),
                      ),
                    ),
                  ],
                  clipBehavior: Clip.none,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
