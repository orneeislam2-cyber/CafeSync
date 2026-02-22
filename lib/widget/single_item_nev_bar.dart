import 'package:cafesync/constant/color.dart';
import 'package:cafesync/page/my_cart_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SingleItemNevBar extends StatelessWidget {
  const SingleItemNevBar({super.key});




  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 70,
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text(
                'Total Price',
                style: TextStyle(
                  color: Colors.white60,
                  fontSize:20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 10),
              Text(
                '350 Tk',
                style: TextStyle(
                  color: Colors.white60,
                  fontSize:20,
                  fontWeight: FontWeight.w500,
                ),
              ),

            ],
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const MyCartPage(),
                ),
              );
            },
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 15,horizontal: 20),
              decoration:BoxDecoration(
                color: normal,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  topLeft: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                )

              ),
              child: Row(
                children: [
                  Text(
                    'Add To Cart',
                    style: TextStyle(
                      color: Colors.white60,
                      fontSize:20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(width: 10),
                  Icon(
                    Icons.arrow_forward,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
