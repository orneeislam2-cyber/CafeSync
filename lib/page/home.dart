import 'package:cafesync/page/home.dart';
import 'package:cafesync/widget/home_nav_bar.dart';
import 'package:cafesync/widget/items_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cafesync/constant/item_model.dart';
import 'package:cafesync/page/logout.dart';



class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {


  TextEditingController searchController = TextEditingController();
  String searchText = "";


  List<Item> filterItems(List<Item> items) {
    if (searchText.isEmpty) return items;

    return items.where((item) {
      return item.name.toLowerCase().contains(searchText) ||
          item.subname.toLowerCase().contains(searchText);
    }).toList();
  }

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
        price: 400,
        rating: 4.7,
      ),
      Item(
        image: 'assets/image/itemswidget/Pepperoni.png',
        name: 'Pepperoni Pizza',
        subname: 'Spicy & Savory',
        price: 300,
        rating: 4.6,
      ),
      Item(
        image: 'assets/image/itemswidget/SicilianPizza.png',
        name: 'Sicilian Pizza',
        subname: 'Thick & Crust',
        price: 320,
        rating: 4.3,
      ),
      Item(
        image: 'assets/image/itemswidget/MashroomPizza.png',
        name: 'White Mashroom Pizza',
        subname: 'Earthy Flavor',
        price: 380,
        rating: 4.4,
      ),
    ];

    final burgerItems = [
      Item(
        image: 'assets/image/itemswidget/beefBurger.jpg',
        name: 'Beef Burger',
        subname: 'Creamy & Cheesy',
        price: 250,
        rating: 4.8,
      ),

      Item(
        image: 'assets/image/itemswidget/ChickenBurger.jpg',
        name: 'Chicken Burger',
        subname: 'Crispy Chicken',
        price: 220,
        rating: 4.5,
      ),

      Item(
        image: 'assets/image/itemswidget/CheeseBurger.jpg',
        name: 'Cheese Burger',
        subname: 'Cheesy Delight',
        price: 260,
        rating: 4.6,
      ),
      Item(
        image: 'assets/image/itemswidget/DoublePattyBurger.jpg',
        name: 'Double Patty Burger',
        subname: 'Extra Juicy & Filling',
        price: 320,
        rating: 4.8,
      ),


      Item(
        image: 'assets/image/itemswidget/SpicyGingerBurger.jpg',
        name: 'Spicy Zinger Burger',
        subname: 'Hot & Crispy',
        price: 280,
        rating: 4.7,
      ),

    ];

    final chickenItems = [
      Item(
        image: 'assets/image/itemswidget/chickenfry.png',
        name: 'Chicken Fry',
        subname: 'Crispy & Spicy',
        price: 150,
        rating: 4.5,
      ),
      Item(
        image: 'assets/image/itemswidget/ChickenWings.jpg',
        name: 'Chicken Wings',
        subname: 'Spicy & Crispy',
        price: 200,
        rating: 4.5,
      ),

      Item(
        image: 'assets/image/itemswidget/ChickenPopcorn.jpg',
        name: 'Chicken Popcorn',
        subname: 'Bite Size Delight',
        price: 150,
        rating: 4.4,
      ),

      Item(
        image: 'assets/image/itemswidget/GrilledChicken.jpg',
        name: 'Grilled Chicken',
        subname: 'Healthy & Tasty',
        price: 250,
        rating: 4.7,
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
      Item(
        image: 'assets/image/itemswidget/ChickenAlfredo.jpg',
        name: 'Chicken Alfredo',
        subname: 'Creamy White Sauce',
        price: 220,
        rating: 4.7,
      ),

      Item(
        image: 'assets/image/itemswidget/SpaghettiiBolognese.jpg',
        name: 'Spaghetti Bolognese',
        subname: 'Rich Meat Sauce',
        price: 200,
        rating: 4.6,
      ),

      Item(
        image: 'assets/image/itemswidget/VegPasta.jpg',
        name: 'Veg Pasta',
        subname: 'Healthy & Light',
        price: 170,
        rating: 4.3,
      ),
      Item(
        image: 'assets/image/itemswidget/Lasagna.jpg',
        name: 'Lasagna',
        subname: 'Cheesy & Layered',
        price: 280,
        rating: 4.8,
      ),

    ];

    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Color(0xFF232227),

        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [


              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.sort_rounded, color: Colors.white, size: 35),

                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Logout(),
                          ),
                        );
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                        decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          children: const [
                            Icon(Icons.person, color: Colors.white, size: 18),
                            SizedBox(width: 5),
                            Text(
                              "Logout",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),


              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Text(
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
                child: TextFormField(
                  controller: searchController,
                  onChanged: (value) {
                    setState(() {
                      searchText = value.toLowerCase();

                    });
                  },
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: 'Search',
                    hintStyle: TextStyle(color: Colors.white),
                    prefixIcon: Icon(Icons.search, color: Colors.white),
                    filled: true,
                    fillColor: Colors.black,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),

              SizedBox(height: 10),


              TabBar(
                isScrollable: true,
                labelStyle: TextStyle(fontSize: 20),
                tabs: [
                  Tab(text: 'Pizza'),
                  Tab(text: 'Burger'),
                  Tab(text: 'Chicken'),
                  Tab(text: 'Pasta'),
                ],
              ),


              Expanded(
                child: TabBarView(
                  children: [


                    ItemsWidget(items: filterItems(pizzaItems)),
                    ItemsWidget(items: filterItems(burgerItems)),
                    ItemsWidget(items: filterItems(chickenItems)),
                    ItemsWidget(items: filterItems(pastaItems)),

                  ],
                ),
              ),
            ],
          ),
        ),

        bottomNavigationBar: HomeNavBar(),
      ),
    );
  }
}