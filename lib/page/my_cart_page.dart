import 'package:cafesync/page/home.dart';
import 'package:cafesync/widget/home_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:cafesync/widget/order_now_bar.dart';
class MyCartPage extends StatelessWidget {
  const MyCartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF232227),


      appBar: AppBar(
        backgroundColor: const Color(0xFF232227),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.close,
            color: Colors.white,
            size: 28,
          ),
          onPressed: () {
             Navigator.pushReplacement(context,
               MaterialPageRoute(builder: (_) => const Home()));
          },
        ),
        title: const Text(
          "My Cart",
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: Column(
        children: [

        ],
      ),

      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: const [
          OrderNowBar(),
          SizedBox(height: 20),
          HomeNavBar(),
        ],
      ),
    );
  }
}