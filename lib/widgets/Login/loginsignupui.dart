// ignore_for_file: library_private_types_in_public_api

/*
class MobileLayout extends StatefulWidget {
  const MobileLayout({super.key});

  @override
  _MobileLayoutState createState() => _MobileLayoutState();
}
*/

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginSignupWidget extends StatefulWidget {
  const LoginSignupWidget({super.key});

  @override
  _LoginSignupWidgetState createState() => _LoginSignupWidgetState();
}

class _LoginSignupWidgetState extends State<LoginSignupWidget> {
  bool isHovered1 = false;
  bool isHovered2 = false;
  bool _isObscure = true; // Initially hide password

  @override
  Widget build(BuildContext context) {
    return Center(
        child: SizedBox(
      width: MediaQuery.of(context).size.width > 1200
          ? 500
          : MediaQuery.of(context).size.width,
      height: 250,
      child: Stack(alignment: Alignment.center, children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Positioned(
              top: 0,
              child: Container(
                width: MediaQuery.of(context).size.width > 600
                    ? 480
                    : MediaQuery.of(context).size.width / 1.25,
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Color(0x66C1C1C1),
                      width: 1.0,
                    ),
                  ),
                ),
                child: TextFormField(
                  textAlign: TextAlign.start,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Enter your email',
                    hintStyle: GoogleFonts.montserrat(
                      textStyle: const TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 13,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 70,
              child: Container(
                width: MediaQuery.of(context).size.width > 600
                    ? 480
                    : MediaQuery.of(context).size.width / 1.25,
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Color(0x66C1C1C1),
                      width: 1.0,
                    ),
                  ),
                ),
                child: TextFormField(
                  obscureText: _isObscure,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Enter your password',
                    hintStyle: GoogleFonts.montserrat(
                      textStyle: const TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 13,
                      ),
                    ),
                    suffixIcon: IconButton(
                      iconSize: 20, // Adjust size of the eye icon
                      icon: Icon(
                        _isObscure ? Icons.visibility : Icons.visibility_off,
                        color: Colors.grey,
                      ),
                      onPressed: () {
                        setState(() {
                          _isObscure = !_isObscure;
                        });
                      },
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Positioned(
                  bottom: 95,
                  child: MouseRegion(
                    onEnter: (_) => setState(() => isHovered1 = true),
                    onExit: (_) => setState(() => isHovered1 = false),
                    child: GestureDetector(
                      onTap: () {
                        // Handle forget password action
                      },
                      child: Text(
                        'Forget Password ?',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 10,
                            fontWeight: FontWeight.w600,
                            height: 1,
                            decoration:
                                isHovered1 ? TextDecoration.underline : null,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width > 600
                      ? 306
                      : MediaQuery.of(context).size.width / 3,
                ),
                Positioned(
                  left: 0,
                  bottom: 95,
                  child: MouseRegion(
                    onEnter: (_) => setState(() => isHovered2 = true),
                    onExit: (_) => setState(() => isHovered2 = false),
                    child: GestureDetector(
                      onTap: () {
                        // Handle T&C Applies action
                      },
                      child: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: '* T&C Applies ',
                              style: GoogleFonts.montserrat(
                                textStyle: TextStyle(
                                  color: const Color(0xFF00174A),
                                  fontSize: 10,
                                  fontWeight: FontWeight.w600,
                                  height: 1,
                                  decoration: isHovered2
                                      ? TextDecoration.underline
                                      : null,
                                ),
                              ),
                            ),
                          ],
                        ),
                        textAlign: TextAlign.right,
                      ),
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(
              height: 50,
            ),

            // Button 1: Log In
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Button 1: Log In
                Positioned(
                  left: 0,
                  bottom: 0,
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width > 550
                        ? 250
                        : MediaQuery.of(context).size.width / 2.2,
                    height: 43,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF00174A),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'Log In',
                          style: GoogleFonts.montserrat(
                            textStyle: const TextStyle(
                              color: Colors.white,
                              fontSize: 11,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

                SizedBox(
                  width: MediaQuery.of(context).size.width > 600
                      ? 6
                      : MediaQuery.of(context).size.width / 100,
                ),
                // Button 2: Sign Up
                Positioned(
                  left: MediaQuery.of(context).size.width / 2.2,
                  bottom: 5,
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width > 550
                        ? 197
                        : MediaQuery.of(context).size.width / 2.8,
                    height: 43,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(
                              width: 1, color: Color(0xFF00174A)),
                          borderRadius: BorderRadius.circular(14),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'Sign Up',
                          style: GoogleFonts.montserrat(
                            textStyle: const TextStyle(
                              color: Color(0xFF00174A),
                              fontSize: 11,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ]),
    ));
  }
}
