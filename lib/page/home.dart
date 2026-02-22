import 'package:cafesync/page/home.dart';
import 'package:cafesync/widget/home_nav_bar.dart';
import 'package:cafesync/widget/items_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cafesync/constant/item_model.dart';


class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {

    final pizzaItems = [
    Item(
      image: 'assets/image/itemswidget/CheezePizza.png',
      name: 'Cheese Pizza',
      subname: 'Creamy & Cheesy',
      price: 350,
      rating: 4.5,
    ),
    Item(
    image: 'assets/image/itemswidget/ChickenPizza.png',
    name: 'Chicken Pizza',
    subname: 'Spicy & Tasty',
    price: 400 ,
    rating: 4.7,
    ),
    Item(
    image:'assets/image/itemswidget/Pepperoni.png' ,
    name: 'Pepperoni Pizza',
    subname: 'Spicy & Savory',
    price: 300 ,
    rating: 4.6,
    ),
    Item(
    image:'assets/image/itemswidget/SicilianPizza.png' ,
    name: ' Sicilian Pizza',
    subname: 'Thick & Crust',
    price: 320 ,
    rating: 4.3,
    ),
    /*Item(
    image:'assets/image/itemswidget/BeefBaconPizza.png' ,
    name: 'BeefBacon Pizza',
    subname: 'Smokey Sweet',
    price: '450Tk',
    rating: 4.8,
    ),*/
    Item(
    image:'assets/image/itemswidget/MashroomPizza.png' ,
    name: 'White Mashroom Pizza',
    subname: 'Earthy Flavor',
    price: 380 ,
    rating: 4.4,
    ),
];

    final burgerItems = [
      Item(
        image: 'assets/image/itemswidget/BeefBaconPizza.png',
        name: 'Beef Burger',
        subname: 'Creamy & Cheesy',
        price: 250 ,
        rating: 4.8,
      ),
    ];

    final chickenItems = [
      Item(
        image: 'assets/image/itemswidget/chickenfry.png',
        name: 'Beef Burger',
        subname: 'Crispy & Spicy',
        price: 150,
        rating: 4.5,
      ),
    ];

    final pastaItems = [
      Item(
        image: 'assets/image/itemswidget/SausagePasta.png',
        name: 'Sausage Pasta',
        subname: 'Creamy & Cheesy',
        price: 150,
        rating: 4.6,
      ),
    ];


    return  DefaultTabController(
      length: 4,
      child: Scaffold(
      backgroundColor: Color(0xFF232227),
      body: SafeArea(
          child:SingleChildScrollView(
            padding: EdgeInsets.only(top: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Icon(
                          Icons.sort_rounded,
                          color: Colors.white,
                          size: 35,
                        ),
                      ),
                      /*InkWell(
                        onTap: () {},
                        child: Icon(
                          Icons.search,
                          color: Colors.white,
                          size: 35,
                        ),
                      ),*/

                    ],
                  ),
                ),

                  SizedBox(height: 30),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child:
                  Text(
                    'Fresh & Testy Bites',
                    style: GoogleFonts.sora(
                      textStyle: TextStyle(
                        fontSize: 32,
                        color: Colors.white,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Delivers on Time',
                        style: GoogleFonts.sora(
                          textStyle: TextStyle(
                            fontSize: 22,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Search',
                          hintStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                          prefixIcon: Icon(Icons.search, color: Colors.white),
                          filled: true,
                          fillColor: Colors.black,
                          contentPadding: EdgeInsets.symmetric(vertical: 18),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                 SizedBox(height: 30),
                TabBar(
                  isScrollable: true,
                  labelStyle: TextStyle(fontSize: 20),
                  labelPadding: EdgeInsets.symmetric(horizontal: 14),
                  tabs: [
                    Tab(text: 'Pizza'),
                    Tab(text: 'Burger'),
                    Tab(text: 'Chicken'),
                    Tab(text: 'Pasta'),


                  ],
                ),


                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.7,
                 child: TabBarView(
                    children: [
                      ItemsWidget(items:pizzaItems),
                      ItemsWidget(items: burgerItems,),
                     ItemsWidget(items: chickenItems),
                      ItemsWidget(items: pastaItems),

                     // Container(color: Colors.red),
                      //Container(color: Colors.red),
                      //Container(color: Colors.red),

                    ],
                  ),
                ),


              ],
            ),
          ),

      ),
        bottomNavigationBar: HomeNavBar(),
    ),
    );
  }
}
