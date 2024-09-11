import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class CarouselWithCounter extends StatefulWidget {
  const CarouselWithCounter({super.key});

  @override
  State<CarouselWithCounter> createState() => _CarouselWithCounterState();
}

class _CarouselWithCounterState extends State<CarouselWithCounter> {
  int _currentSlide = 0; // Declaration of _currentSlide variable

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            aspectRatio: 100,
            height: MediaQuery.of(context).size.width > 550
                ? 385
                : MediaQuery.of(context).size.width * 0.7,
            viewportFraction:
                MediaQuery.of(context).size.width > 1200 ? 0.4 : 1,
            initialPage: 0,
            enableInfiniteScroll: true,
            reverse: false,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 4),
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeCenterPage: true,
            padEnds: true,
            onPageChanged: (index, reason) {
              setState(() {
                _currentSlide = index;
              });
            },
            scrollDirection: Axis.horizontal,
          ),
          items: [
            // Carousel 1
            Builder(
              builder: (BuildContext context) {
                return Container(
                  width: MediaQuery.of(context).size.width > 550
                      ? 440
                      : MediaQuery.of(context).size.width * 0.8,
                  margin: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.width * 0.2,
                    clipBehavior: Clip.antiAlias,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.width > 550
                              ? 55
                              : MediaQuery.of(context).size.width * 0.1,
                        ),
                        Text(
                          'OUR VISION',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.montserrat(
                            color: Colors.black,
                            fontSize: MediaQuery.of(context).size.width > 316
                                ? 18
                                : 15,
                            fontWeight: FontWeight.w600,
                            height: 1.4,
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.width > 550
                              ? 16.5
                              : MediaQuery.of(context).size.width * 0.03,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width > 550
                              ? 300
                              : MediaQuery.of(context).size.width * 0.6,
                          child: Text(
                            'We\'re building a platform where individuals progress together, fostering a supportive ecosystem driven by impactful collaboration. 🌱 It\'s about community, not just profits. Join us in shaping a future where everyone succeeds! 🚀✨',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.montserrat(
                              color: const Color(0xFF6B6B6B),
                              fontSize: MediaQuery.of(context).size.width > 360
                                  ? 12
                                  : 9,
                              fontWeight: FontWeight.w500,
                              height: 1.5,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
            // Carousel 2
            Builder(
              builder: (BuildContext context) {
                return Container(
                  width: MediaQuery.of(context).size.width > 550
                      ? 440
                      : MediaQuery.of(context).size.width * 0.8,
                  margin: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.width * 0.2,
                    clipBehavior: Clip.antiAlias,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.width > 550
                              ? 55
                              : MediaQuery.of(context).size.width * 0.1,
                        ),
                        Text(
                          'Join Us !!!',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.montserrat(
                            color: Colors.black,
                            fontSize: MediaQuery.of(context).size.width > 316
                                ? 18
                                : 15,
                            fontWeight: FontWeight.w600,
                            height: 1.4,
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.width > 550
                              ? 16.5
                              : MediaQuery.of(context).size.width * 0.03,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width > 550
                              ? 300
                              : MediaQuery.of(context).size.width * 0.6,
                          child: Text(
                            'Set sail on a voyage of discovery! 🚀 Join our circle of innovators and let your dreams take wing. Register, meet the criteria, and together, we’ll soar to success! 🌟🛫',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.montserrat(
                              color: const Color(0xFF6B6B6B),
                              fontSize: MediaQuery.of(context).size.width > 360
                                  ? 12
                                  : 10,
                              fontWeight: FontWeight.w500,
                              height: 1.5,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
            // Carousel 3
            Builder(
              builder: (BuildContext context) {
                return Container(
                  width: MediaQuery.of(context).size.width > 550
                      ? 440
                      : MediaQuery.of(context).size.width * 0.85,
                  margin: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.width * 0.2,
                    clipBehavior: Clip.antiAlias,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.width > 550
                              ? 55
                              : MediaQuery.of(context).size.width * 0.1,
                        ),
                        Text(
                          'FOLLOW US !!!',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.montserrat(
                            color: Colors.black,
                            fontSize: MediaQuery.of(context).size.width > 316
                                ? 18
                                : 15,
                            fontWeight: FontWeight.w600,
                            height: 1.4,
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.width > 550
                              ? 30
                              : MediaQuery.of(context).size.width * 0.03,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.width > 370
                              ? 150
                              : 100,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Column(
                                    children: [
                                      Image.asset(
                                        'assets/introyt.png',
                                        width:
                                            MediaQuery.of(context).size.width >
                                                    370
                                                ? 150
                                                : 100,
                                        height:
                                            MediaQuery.of(context).size.width >
                                                    370
                                                ? 82
                                                : 55,
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        'Check Out First Video !!!',
                                        style: GoogleFonts.montserrat(
                                          color: const Color(0xFF6B6B6B),
                                          fontSize: MediaQuery.of(context)
                                                      .size
                                                      .width >
                                                  315
                                              ? 10
                                              : 6,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Column(
                                    children: [
                                      const SizedBox(height: 2),
                                      Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            const SizedBox(width: 2),
                                            SvgPicture.asset(
                                              'assets/yout.svg',
                                              width: MediaQuery.of(context)
                                                          .size
                                                          .width >
                                                      370
                                                  ? 19
                                                  : 13,
                                              height: MediaQuery.of(context)
                                                          .size
                                                          .width >
                                                      370
                                                  ? 19
                                                  : 13,
                                            ),
                                            const SizedBox(width: 10),
                                            Text(
                                              '/startwsahitya',
                                              style: GoogleFonts.montserrat(
                                                color: const Color(0xFF6B6B6B),
                                                fontSize: MediaQuery.of(context)
                                                            .size
                                                            .width >
                                                        370
                                                    ? 12
                                                    : 9,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ]),
                                      const SizedBox(height: 9),
                                      Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            const SizedBox(width: 9),
                                            SvgPicture.asset(
                                              'assets/instaicon.svg',
                                              width: MediaQuery.of(context)
                                                          .size
                                                          .width >
                                                      370
                                                  ? 15
                                                  : 10,
                                              height: MediaQuery.of(context)
                                                          .size
                                                          .width >
                                                      370
                                                  ? 15
                                                  : 10,
                                            ),
                                            const SizedBox(width: 10),
                                            Text(
                                              '@startwsahitya',
                                              style: GoogleFonts.montserrat(
                                                color: const Color(0xFF6B6B6B),
                                                fontSize: MediaQuery.of(context)
                                                            .size
                                                            .width >
                                                        370
                                                    ? 12
                                                    : 9,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ]),
                                      const SizedBox(height: 9),
                                      Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            const SizedBox(width: 14),
                                            SvgPicture.asset(
                                              'assets/instaicon.svg',
                                              width: MediaQuery.of(context)
                                                          .size
                                                          .width >
                                                      370
                                                  ? 15
                                                  : 10,
                                              height: MediaQuery.of(context)
                                                          .size
                                                          .width >
                                                      370
                                                  ? 15
                                                  : 10,
                                            ),
                                            const SizedBox(width: 10),
                                            Text(
                                              '@startwithsmall',
                                              style: GoogleFonts.montserrat(
                                                color: const Color(0xFF6B6B6B),
                                                fontSize: MediaQuery.of(context)
                                                            .size
                                                            .width >
                                                        370
                                                    ? 12
                                                    : 9,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ]),
                                      const SizedBox(height: 9),
                                      Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            SvgPicture.asset(
                                              'assets/linkedInicon.svg',
                                              width: MediaQuery.of(context)
                                                          .size
                                                          .width >
                                                      370
                                                  ? 15
                                                  : 10,
                                              height: MediaQuery.of(context)
                                                          .size
                                                          .width >
                                                      370
                                                  ? 15
                                                  : 10,
                                            ),
                                            const SizedBox(width: 10),
                                            Text(
                                              '/sahitya singh',
                                              style: GoogleFonts.montserrat(
                                                color: const Color(0xFF6B6B6B),
                                                fontSize: MediaQuery.of(context)
                                                            .size
                                                            .width >
                                                        370
                                                    ? 12
                                                    : 9,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ]),
                                    ],
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
              },
            ),
          ],
        ),
        const SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [0, 1, 2].map((i) {
            return Container(
              width: 10.0,
              height: 10.0,
              margin:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _currentSlide == i ? Colors.blue.shade900 : Colors.grey,
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
