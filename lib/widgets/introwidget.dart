import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeMessage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(
          'assets/Mobile_logo.svg',
          width: MediaQuery.of(context).size.width < 1200 ? 130 : 165,
          height: MediaQuery.of(context).size.width < 1200 ? 130 : 165,
        ),
        const SizedBox(height: 40), // Add some space between image and text
        SizedBox(
          width: MediaQuery.of(context).size.width < 1200 ? 330 : 500,
          child: Text(
            'Welcome to StartWSmall, a dynamic community where learning, innovation, and networking come together. Join us to fuel your personal and professional growth. Let\'s embark on an exploration of endless possibilities together. 🚀🌱💡',
            textAlign: TextAlign.center,
            style: GoogleFonts.montserrat(
              color: Color(0xFF6B6B6B),
              fontSize: 13,
              fontWeight: FontWeight.w500,
              height: 1.5, // Adjust line spacing as needed
            ),
          ),
        ),
      ],
    );
  }
}
