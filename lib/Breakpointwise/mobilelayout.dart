import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:startwsmall/widgets/Login/loginsignupui.dart';
import 'package:startwsmall/widgets/carousellist.dart';
import 'package:startwsmall/widgets/introwidget.dart';
import 'package:startwsmall/widgets/joincommunity.dart';
import 'package:startwsmall/widgets/takechallenge.dart';

class MobileLayout extends StatefulWidget {
  const MobileLayout({Key? key}) : super(key: key);

  @override
  _MobileLayoutState createState() => _MobileLayoutState();
}

class _MobileLayoutState extends State<MobileLayout> {
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xFFF0F0F0), // Background color set to #fafafa
        child: SingleChildScrollView(
          controller: _scrollController,
          child: Align(
            alignment: Alignment.topCenter,
            child: Column(
              children: [
                const SizedBox(height: 66), // Add some space at the top
                WelcomeMessage(),
                const SizedBox(
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
                const SizedBox(height: 60),
                // Add some space between "Join Now" button and carousel slider

                const CarouselWithCounter(),
                const SizedBox(height: 75),
                // Add some space between carousel slider and circle tracker
                // Add some space between circle tracker and "Take up the challenge" text
                TakeUpTheChallenge(),
                const SizedBox(height: 55),

                const LoginSignupWidget(),
                const SizedBox(height: 78),
                // Add some space between circle tracker and "Take up the challenge" text
                JoinTheCommunity(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _scrollToMiddle() {
    _scrollController.animateTo(
      MediaQuery.of(context).size.height + 120, // scroll to middle part
      duration: Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }
}
