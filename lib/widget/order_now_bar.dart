import 'package:cafesync/constant/color.dart';
import 'package:cafesync/page/order_page.dart';
import 'package:flutter/material.dart';

class OrderNowBar extends StatelessWidget {
  const OrderNowBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      alignment: Alignment.center,
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const OrderPage(),
            ),
          );

        },
        child: Container(
          width: 220,
          padding: EdgeInsets.symmetric(vertical: 15),
          decoration: BoxDecoration(
            color: normal,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Center(
            child: Text(
              'Checkout',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}