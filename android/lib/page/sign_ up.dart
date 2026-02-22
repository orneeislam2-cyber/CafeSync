import 'package:cafesync/constant/image_string.dart';
import 'package:cafesync/page/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:cafesync/widget/login_button.dart';
import 'package:cafesync/page/home.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
          body: Stack(
            children: [
            SizedBox(height: height, width: width),
            SizedBox(
            //height: height*0.22,
            width: width,
            child: Image.asset(signupImage, fit: BoxFit.cover),
          ),
        Positioned(
            bottom: height * 0.2,
            child: SizedBox(
                width: width,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.05),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Lets Get Started!',
                        style:
                        TextStyle(
                            fontSize: 24,
                            color: Colors.black,
                            fontWeight: FontWeight.w900,
                          ),

                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 7),
                      Text(
                        'Create an account to get all features',
                        style:
                           TextStyle(color: Colors.black),

                        textAlign: TextAlign.center,
                ),
                      const SizedBox(height: 25),

                      TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Username',
                          prefixIcon: const Icon(Icons.person_2_outlined),
                          filled: true,
                          fillColor:  Colors.white,
                          contentPadding: const EdgeInsets.symmetric(vertical: 18),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                      const SizedBox(height: 15),

                      TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Email',
                          prefixIcon: const Icon(Icons.email_outlined),
                          filled: true,
                          fillColor:  Colors.white,//(0xFFFFE6EC),
                          contentPadding: const EdgeInsets.symmetric(vertical: 18),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),

                      const SizedBox(height: 15),

                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: 'Password',
                          prefixIcon: const Icon(Icons.lock_outline),
                          suffixIcon: const Icon(Icons.visibility_off),
                          filled: true,
                          fillColor:  Colors.white,//(0xFFFFE6EC),
                          contentPadding: const EdgeInsets.symmetric(vertical: 18),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                      const SizedBox(height: 15),

                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: '    Confirm Password',
                          //prefixIcon: const Icon(Icons.lock_outline),
                          suffixIcon: const Icon(Icons.visibility_off),
                          filled: true,
                          fillColor:  Colors.white,//(0xFFFFE6EC),
                          contentPadding: const EdgeInsets.symmetric(vertical: 18),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                      const SizedBox(height: 15),
                      const SizedBox(height: 30),
                      LoginButton(
                        title: 'Sign Up',
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Home(),
                            ),
                          ); //print("Button Clicked");
                        },

                      ),

                      const SizedBox(height: 50),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Already have an account?',
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
                                  builder: (context) => const LoginScreen(),
                                ),
                              );
                            },
                            child: const Text(
                              "Login",
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
          ),
                ),
            ),
        ),
      ],
    ),
    );
  }
}