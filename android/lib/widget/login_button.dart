import 'package:cafesync/constant/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginButton extends StatelessWidget {
  final String title;
  final VoidCallback? onTap;
  const LoginButton({super.key, required this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xFFFFE6EC),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Text(
            title,
            style:
               TextStyle(
                color:Colors.black ,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
        ),

    );
  }
}
