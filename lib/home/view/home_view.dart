import 'package:flutter/material.dart';
import 'package:gita_gitroops/widgets/page_scaffold.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeView extends StatelessWidget {
  static const routeName = '/';

  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageScaffold(
      child: Padding(
        padding: const EdgeInsets.only(
          top: 80,
          left: 100,
          right: 100,
          bottom: 80,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 48),
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
            ),
            const SizedBox(width: 80),
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
    );
  }
}
