import 'package:cafesync/constant/item_model.dart';
import 'package:cafesync/widget/single_item_nev_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SingleItemPage extends StatefulWidget {
  final Item item;
  const SingleItemPage({super.key, required this.item});

  @override
  State<SingleItemPage> createState() => _SingleItemPageState();
}

class _SingleItemPageState extends State<SingleItemPage> {
  int quantity =1;

  @override
  Widget build(BuildContext context) {
    double totalPrice = widget.item.price * quantity;
    return Scaffold(
        backgroundColor: Color(0xFF232227),
        body: SafeArea(
            child:Padding(
                padding: EdgeInsets.only(top: 25,left: 15,right: 15),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                    onTap: () {
                      Navigator.pop(context);
            },
              child: Icon(
                Icons.arrow_back_ios_new,
                color: Colors.white,
                size: 32,
              ),
                ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Image.asset(
                          widget.item.image,
                          height: MediaQuery.of(context).size.height/2.5,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(height: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                widget.item.name,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 28,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Row(
                                  children: [

                                       InkWell(
                                         onTap:() {
                                           if (quantity > 1) {
                                             setState(() {
                                               quantity--;
                                             });
                                           }
                                         },
                                         child: Container(
                                          alignment: Alignment.center,
                                          width: 30,
                                          height: 30,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(5),
                                          ),
                                          child: Icon(
                                            CupertinoIcons.minus,
                                            size: 20,
                                          ),
                                         ),
                                       ),


                                    SizedBox(width: 8),
                                    Text(
                                      quantity.toString(),
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize:20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(width: 8),

                                    InkWell(
                                      onTap: () {
                                        setState(() {
                                          quantity++;
                                        });
                                      },
                                      child: Container(
                                        alignment: Alignment.center,
                                        width: 30,
                                        height: 30,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(5),
                                        ),
                                        child: Icon(
                                          CupertinoIcons.plus,
                                          size: 20,
                                        ),
                                      ),
                                    )
                                  ],

                                )
                              ],
                            ),
                          ),

                          SizedBox(height: 5),
                          Text(
                            'Description',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize:20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          SizedBox(height: 5),
                          Text(
                            'Indulge in a perfectly baked pizza layered with rich tomato sauce and premium mozzarella cheese, melted to golden perfection. Crafted on a soft yet crispy crust,every bite delivers a smooth, creamy texture and a luxurious cheesy flavor - a timeless classic made for true pizza lover',

                            style: TextStyle(
                              color: Colors.white,
                              fontSize:16,
                              //fontWeight: FontWeight.bold,
                            ),
                          ),

                           SizedBox(height: 20),

                          Text(
                            "Total: $totalPrice Tk",
                            style: const TextStyle(
                                color: Colors.amber,
                                fontSize: 22,
                                fontWeight: FontWeight.bold),
                          ),

                        ],
                      )
          ],

                ),


            ),


        ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(bottom: 45),
        child: SingleItemNevBar(),
      )

    );
  }
}
