import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cafesync/widget/login_button.dart';
import 'package:cafesync/page/login_screen.dart';
class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {

  final TextEditingController emailController = TextEditingController();

  resetPassword() async {
    if (emailController.text.isEmpty) {

      return;
    }

    try {
      await FirebaseAuth.instance.sendPasswordResetEmail(
        email: emailController.text.trim(),
      );

      /*ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Reset link sent to email")),
      );*/

    } catch (e) {
      /*ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Error occurred")),
      );*/
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
        appBar:AppBar(
            backgroundColor: const  Color(0xFFFFFFFF),//Color(0xFF232227),
            centerTitle: true,
            leading: GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (_) => const LoginScreen()),
                );
              },
              child: Row(
                children: const [
                  SizedBox(width: 5),
                  Icon(Icons.arrow_back, color: Colors.black, size: 24),
                  SizedBox(width: 5),
                  Text(
                    "Back to Log In",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
        ),

        body:Center(
            child:
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Text(
              "Forgot password?",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),

            const SizedBox(height: 10),


                  Text(
                  "No worries, we will send you reset instructions.",
                    textAlign: TextAlign.center,
                  style: TextStyle(

                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),

                const SizedBox(height: 20),

            TextFormField(
              controller: emailController,
              decoration: InputDecoration(
                hintText: 'Email',
                prefixIcon: const Icon(Icons.email_outlined),
                filled: true,
                fillColor:Color(0xFFFFE6EC), //Colors.white,
                contentPadding:
                const EdgeInsets.symmetric(vertical: 18),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
                const SizedBox(height: 30),
                LoginButton(
                  title: "Reset password",
                  onTap:() =>  resetPassword(),
                ),
              ],

            ),
        ),


    );

  }
}

