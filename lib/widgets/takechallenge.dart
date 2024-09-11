import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TakeUpTheChallenge extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Align(
            alignment: Alignment.center,
            child: SizedBox(
              width: MediaQuery.of(context).size.width > 1200
                  ? 400
                  : MediaQuery.of(context).size.width,
              child: Center(
                child: Stack(
                  children: [
                    Positioned(
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width > 550
                            ? 448
                            : MediaQuery.of(context).size.width / 1.23,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'TAKE UP THE CHALLENGE',
                              style: GoogleFonts.montserrat(
                                color: Colors.black,
                                fontSize: 22,
                                fontWeight: FontWeight.w600,
                                height: 1.2,
                              ),
                            ),
                            const SizedBox(height: 20),
                            Text(
                              'Join the Challenge to test your boundaries and grow personally. Register and log in for enrollment opportunities. Finish the challenge to gain premium access, podcasting opportunities, content sharing, exclusive networking, and more benefits to enhance your experience!” 🚀🎙️📲🌟',
                              style: GoogleFonts.montserrat(
                                color: Color(0xFF6B6B6B),
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                                height: 1.5,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )));
  }
}
