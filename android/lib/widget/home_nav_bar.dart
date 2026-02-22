import 'package:cafesync/constant/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeNavBar extends StatelessWidget {
  const HomeNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      height: 80,
      decoration: BoxDecoration(
        color: Color(0xFF232227),
        boxShadow:[ BoxShadow(
          color: Colors.black.withOpacity(0.4),
          spreadRadius: 1,
          blurRadius: 8,
        ),
    ]
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

          Icon(
            Icons.restaurant_menu,
            color: Colors.white,
            size: 35,
          ),

          Icon(
            Icons.notifications,
            color: Colors.white,
            size: 35,
          ),

          Container(
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: normal,
              borderRadius: BorderRadius.circular(30),
              boxShadow:[
                BoxShadow(
                  color: Colors.white.withOpacity(0.2),
                  spreadRadius: 1,
                  blurRadius: 6,
                ),
              ] ,

            ),
            child: Icon(
              CupertinoIcons.cart_fill,
              color: Colors.white,
              size: 30,
            ),
          ),

          Icon(
            Icons.receipt_long,
            color: Colors.white,
            size: 35,
          ),

          Icon(
            Icons.person,
            color: Colors.white,
            size: 35,
          ),


        ],
      ),
    );
  }
}
