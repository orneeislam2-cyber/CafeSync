import 'package:cafesync/constant/color.dart';
import 'package:cafesync/page/my_cart_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cafesync/constant/cart_data.dart';
import 'package:cafesync/constant/item_model.dart';

class SingleItemNevBar extends StatelessWidget {
  final Item item;
  final int quantity;
  const SingleItemNevBar({
    super.key,required this.item,
    required this.quantity,
  });




  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 70,
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

              Text(
      "${item.price * quantity} Tk",
                style: TextStyle(
                  color: Colors.white60,
                  fontSize:20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              /*SizedBox(height: 10),
              Text(
                '350 Tk',
                style: TextStyle(
                  color: Colors.white60,
                  fontSize:20,
                  fontWeight: FontWeight.w500,
                ),
              ),

            ],
          ),*/
          InkWell(
            onTap: () {
            CartData.addItem(item, quantity);
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
                    Icons.arrow_forward, color: Colors.white),

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
