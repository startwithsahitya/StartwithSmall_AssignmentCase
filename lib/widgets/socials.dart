import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Socials extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Align(
            alignment: Alignment.center,
            child: SizedBox(
              height: 150,
              child: Center(
                child: Column(
                  children: [
                    Align(
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SvgPicture.asset(
                              'assets/yout.svg',
                              width: MediaQuery.of(context).size.width > 350
                                  ? 19
                                  : 15,
                              height: MediaQuery.of(context).size.width > 350
                                  ? 19
                                  : 15,
                            ),
                            const SizedBox(width: 10),
                            Text(
                              '/startwsahitya',
                              style: GoogleFonts.montserrat(
                                color: Color(0xFF6B6B6B),
                                fontSize:
                                    MediaQuery.of(context).size.width > 350
                                        ? 12
                                        : 9,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(width: 32),
                            SvgPicture.asset(
                              'assets/instaicon.svg',
                              width: MediaQuery.of(context).size.width > 350
                                  ? 17
                                  : 12,
                              height: MediaQuery.of(context).size.width > 350
                                  ? 17
                                  : 12,
                            ),
                            const SizedBox(width: 8),
                            Text(
                              '@startwithsmall',
                              style: GoogleFonts.montserrat(
                                color: Color(0xFF6B6B6B),
                                fontSize:
                                    MediaQuery.of(context).size.width > 350
                                        ? 12
                                        : 9,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        )),
                    const SizedBox(height: 13),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SvgPicture.asset(
                          'assets/linkedInicon.svg',
                          width:
                              MediaQuery.of(context).size.width > 350 ? 15 : 10,
                          height:
                              MediaQuery.of(context).size.width > 350 ? 15 : 10,
                        ),
                        const SizedBox(width: 13),
                        Text(
                          '/sahitya singh',
                          style: GoogleFonts.montserrat(
                            color: Color(0xFF6B6B6B),
                            fontSize: MediaQuery.of(context).size.width > 350
                                ? 12
                                : 9,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(width: 32),
                        SvgPicture.asset(
                          'assets/instaicon.svg',
                          width:
                              MediaQuery.of(context).size.width > 350 ? 17 : 12,
                          height:
                              MediaQuery.of(context).size.width > 350 ? 17 : 12,
                        ),
                        const SizedBox(width: 8),
                        Text(
                          '@startwsahitya',
                          style: GoogleFonts.montserrat(
                            color: Color(0xFF6B6B6B),
                            fontSize: MediaQuery.of(context).size.width > 350
                                ? 12
                                : 9,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )));
  }
}
