import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cafesync/widget/login_button.dart';
import 'package:cafesync/page/home.dart';
import 'package:cafesync/page/login_screen.dart';
class Logout extends StatefulWidget {
  const Logout({super.key});

  @override
  State<Logout> createState() => _LogoutState();
}

class _LogoutState extends State<Logout> {
  final user=FirebaseAuth.instance.currentUser;
  signout() async{
    await FirebaseAuth.instance.signOut();
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (_) => const LoginScreen()),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar:AppBar(
        backgroundColor: const  Color(0xFFFFE6EC),//Color(0xFF232227),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.close,
            color: Colors.black,
            size: 28,
          ),
          onPressed: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (_) => const Home()));
          },
        ),
        title:  Text(
          "Profile Details",
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body:Center(
        child:
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
      Text(
        "Welcome",
        style: TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),

        const SizedBox(height: 10),

            Text(
              "${user?.displayName ?? "User"}",
              style: const TextStyle(
                fontSize: 24,
                color: Colors.black,
              ),
            ),

            const SizedBox(height: 10),

        Text(
          '${user!.email}',
        style:  TextStyle(
          fontSize: 18,
          color: Colors.black,
        ),
      ),
        const SizedBox(height: 40),


        LoginButton(
          title: "Logout",
          onTap: signout,
        ),
        ],

       ),
      ),


    );
  }
}
