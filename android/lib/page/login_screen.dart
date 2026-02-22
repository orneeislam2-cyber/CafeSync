import 'package:cafesync/constant/color.dart';
import 'package:cafesync/constant/image_string.dart';
import 'package:cafesync/constant/text_string.dart';
import 'package:cafesync/page/home.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cafesync/widget/login_button.dart';
import 'package:cafesync/page/sign_ up.dart';
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});



  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      //
      //
      //
      // backgroundColor: Color(0x801C1C),
      body: Column(
        children: [
         // SizedBox(height: height, width: width),
          SizedBox(
            height: height*0.35,
            width: width,
            child: Image.asset(loginImage, fit: BoxFit.cover),
          ),
        Expanded(
            //bottom: height * 0.3,
          child: SingleChildScrollView(
            //width: width,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.05,vertical: 20),
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.center,
               //crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                Text(
                loginTitle,
                style: GoogleFonts.hind(
                  textStyle: TextStyle(
                    fontSize: 24,
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                textAlign: TextAlign.center,
                ),
              const SizedBox(height: 20),

              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Email',
                  prefixIcon: const Icon(Icons.email_outlined),
                  filled: true,
                  fillColor: const Color(0xFFFFE6EC),
                  contentPadding: const EdgeInsets.symmetric(vertical: 18),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),

              const SizedBox(height: 16),

              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Password',
                  prefixIcon: const Icon(Icons.lock_outline),
                  suffixIcon: const Icon(Icons.visibility_off),
                  filled: true,
                  fillColor: const Color(0xFFFFE6EC),
                  contentPadding: const EdgeInsets.symmetric(vertical: 18),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
                  const SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.check_box_outline_blank_sharp,
                            size: 18,
                            color: Colors.black,
                          ),
                          SizedBox(width: 6),
                          Text(
                            'Remember Me',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500
                            ),
                          )
                        ],
                      ),
                      Text(
                        "Forgot Password?",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      //const SizedBox(height: 20),

                     ],
                      ),
                  const SizedBox(height: 30),
                  LoginButton(
                    title: 'Login',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Home(),
                        ),
                      ); //print("Button Clicked");
                    },
                  ),

                  const SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Dont have an account?',
                        style:
                        TextStyle(
                          fontSize: 14,
                        ),
                      ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const SignUpScreen(),
                              ),
                            );
                          },
                          child: const Text(
                            "Sign Up",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,
                            ),
                          ),
                      )
                    ],
                  )
                ],
                  )


                  )

      ),
                ),
      ],

        ),



    );

  }
}
