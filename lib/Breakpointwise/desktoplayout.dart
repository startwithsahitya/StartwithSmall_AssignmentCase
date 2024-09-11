import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:startwsmall/widgets/Login/loginsignupui.dart';
import 'package:startwsmall/widgets/carousellist.dart';
import 'package:startwsmall/widgets/introwidget.dart';
import 'package:startwsmall/widgets/joincommunity.dart';
import 'package:startwsmall/widgets/socials.dart';
import 'package:startwsmall/widgets/takechallenge.dart';

class DesktopLayout extends StatefulWidget {
  const DesktopLayout({Key? key}) : super(key: key);

  @override
  _DesktopLayoutState createState() => _DesktopLayoutState();
}

class _DesktopLayoutState extends State<DesktopLayout> {
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double width = constraints.maxWidth;
        Color backgroundColor = Color(0xFFF0F0F0);
        if (width > 1600) {
          width = 1600; // Set maximum width to 1600
        }
        return Scaffold(
            body: Center(

                // Centering the content
                child: Scaffold(
          backgroundColor: backgroundColor,
          body: Center(
            child: Container(
              width: width,
              color: backgroundColor, // Background color set based on width
              child: SingleChildScrollView(
                controller: _scrollController,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 66), // Add some space at the top
                    WelcomeMessage(),
                    SizedBox(
                        height:
                            40), // Add some space between text and "Join Now" button
                    GestureDetector(
                      onTap: _scrollToMiddle, // Scroll to middle part
                      child: SizedBox(
                        width: 127,
                        height: 48,
                        child: Stack(
                          children: [
                            Positioned.fill(
                              child: Container(
                                decoration: BoxDecoration(
                                  color: const Color(0xFF00174A),
                                  borderRadius: BorderRadius.circular(17),
                                ),
                              ),
                            ),
                            Center(
                              child: Text(
                                'Join Now',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.montserrat(
                                  color: Colors.white,
                                  fontSize: 11,
                                  fontWeight: FontWeight.w600,
                                  height: 1.0, // Adjust line spacing as needed
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                        height:
                            60), // Add some space between "Join Now" button and carousel slider
                    CarouselWithCounter(),
                    SizedBox(
                        height:
                            75), // Add some space between carousel slider and "Take up the challenge" text
                    Row(
                      children: [
                        TakeUpTheChallenge(),
                        SizedBox(width: 55),
                        Column(children: [
                          SizedBox(height: 60),
                          LoginSignupWidget(),
                        ]),
                      ],
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                    ),
                    SizedBox(
                        height:
                            78), // Add some space between circle tracker and "Take up the challenge" text
                    Row(
                      children: [
                        JoinTheCommunity(),
                        SizedBox(width: 55),
                        Column(children: [
                          SizedBox(height: 60),
                          Socials(),
                        ]),
                      ],
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                    ),
                  ],
                ),
              ),
            ),
          ),
        )));
      },
    );
  }

  void _scrollToMiddle() {
    _scrollController.animateTo(
      MediaQuery.of(context).size.height, // scroll to middle part
      duration: Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }
}
