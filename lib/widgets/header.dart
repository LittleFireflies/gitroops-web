import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'GITA SEKAR ANDARINI',
          style: GoogleFonts.poppins(
            fontSize: 36,
            fontWeight: FontWeight.w600,
          ),
        ),
        Row(
          children: [
            TextButton(
              onPressed: () {},
              child: Text(
                'Home',
                style: GoogleFonts.poppins(
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
              onPressed: () {},
              child: Text(
                'Schedule',
                style: GoogleFonts.poppins(
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
              onPressed: () {},
              child: Text(
                'About Gita',
                style: GoogleFonts.poppins(
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
              onPressed: () {},
              child: Text(
                'About Us',
                style: GoogleFonts.poppins(
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
    );
  }
}
