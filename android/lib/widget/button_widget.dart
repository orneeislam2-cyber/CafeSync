import 'package:cafesync/constant/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonWidget extends StatelessWidget {
  final String title;
  final VoidCallback? onTap;
  const ButtonWidget({super.key, required this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
       child: Container(
      height: 60,
      width: double.infinity,
      decoration: BoxDecoration(
        color: normal,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
          child: Text(
            title,
            style: GoogleFonts.sora(
                textStyle: TextStyle(
                    color: whiteColor,
                    fontSize: 20,
                ),
            ),
          ),
      ),
    ),
    );
  }
}
