import 'package:cafesync/constant/color.dart';
import 'package:cafesync/constant/image_string.dart';
import 'package:cafesync/constant/text_string.dart';
import 'package:cafesync/page/home.dart';
import 'package:cafesync/widget/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cafesync/page/login_screen.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          //SizedBox(height: height, width: width),
          SizedBox(
            height: height,
            width: width,
            child: Image.asset(startScreenImage, fit: BoxFit.cover),
          ),

          Positioned(
            top: height * 0.06,
            left: width * 0.05,
            child: Text(
              "CafeSync",
              style: GoogleFonts.sora(
                textStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 35,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
          ),

          Positioned(
            bottom: height * 0.1,
            child: SizedBox(
              width: width,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.05),
                child: Column(

                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      startPageTitle,
                      style: GoogleFonts.sora(
                        textStyle: TextStyle(
                          fontSize: 35,
                          color: Colors.white,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 10),
                    Text(
                      startPageSubtitle,
                      style: GoogleFonts.sora(
                        textStyle: TextStyle(color: lighterColor),
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 20),
                    ButtonWidget(
                      title: 'Get Started',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Home(),//LoginScreen(),
                          ),
                        ); //print("Button Clicked");
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
