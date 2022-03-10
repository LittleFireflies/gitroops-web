import 'package:flutter/material.dart';
import 'package:gita_gitroops/widgets/page_scaffold.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutGitaView extends StatelessWidget {
  static const routeName = '/about-gita';

  const AboutGitaView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageScaffold(
      child: Padding(
        padding: const EdgeInsets.only(top: 100),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 48),
              child: Row(
                children: [
                  const Placeholder(),
                  const SizedBox(width: 100),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Gita Sekar Andarini',
                          style: GoogleFonts.poppins(
                            fontSize: 36,
                          ),
                        ),
                        const SizedBox(height: 16),
                        Text(
                          'Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet.',
                          style: GoogleFonts.poppins(
                            fontSize: 24,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Row(
                          children: const [
                            ElevatedButton(
                              onPressed: null,
                              child: Text('Medsos'),
                            ),
                            const SizedBox(width: 8),
                            ElevatedButton(
                              onPressed: null,
                              child: Text('Medsos'),
                            ),
                            const SizedBox(width: 8),
                            ElevatedButton(
                              onPressed: null,
                              child: Text('Medsos'),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 48),
            Container(
              color: const Color(0xFFC4C4C4),
              padding: const EdgeInsets.all(36),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text(
                        '165',
                        style: GoogleFonts.poppins(
                          fontSize: 72,
                          height: 1,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        'Show',
                        style: GoogleFonts.poppins(
                          fontSize: 36,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        '6',
                        style: GoogleFonts.poppins(
                          fontSize: 72,
                          height: 1,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        'Setlist',
                        style: GoogleFonts.poppins(
                          fontSize: 36,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        '8',
                        style: GoogleFonts.poppins(
                          fontSize: 72,
                          height: 1,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        'Unit Song',
                        style: GoogleFonts.poppins(
                          fontSize: 36,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
