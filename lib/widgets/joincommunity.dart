import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:startwsmall/widgets/socials.dart';

class JoinTheCommunity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Align(
            alignment: Alignment.center,
            child: SizedBox(
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
                              'Join the Community ?',
                              style: GoogleFonts.montserrat(
                                color: Colors.black,
                                fontSize: 22,
                                fontWeight: FontWeight.w600,
                                height: 1.2,
                              ),
                            ),
                            const SizedBox(height: 20),
                            Text(
                              'Set sail on a voyage of discovery! 🚀 Join our circle of innovators and let your dreams take wing. Register, meet the criteria, and together, we’ll soar to success! 🌟🛫',
                              style: GoogleFonts.montserrat(
                                color: Color(0xFF6B6B6B),
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                                height: 1.5,
                              ),
                            ),
                            const SizedBox(height: 47),
                            MediaQuery.of(context).size.width < 1200
                                ? Socials()
                                : SizedBox(
                                    height: 0,
                                  )
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
