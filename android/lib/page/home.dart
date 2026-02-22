import 'package:cafesync/widget/home_nav_bar.dart';
import 'package:cafesync/widget/items_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
      length: 4,
      child: Scaffold(
      backgroundColor: Color(0xFF232227),
      body: SafeArea(
          child:Padding(
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
                      InkWell(
                        onTap: () {},
                        child: Icon(
                          Icons.search,
                          color: Colors.white,
                          size: 35,
                        ),
                      ),

                    ],
                  ),
                ),

                const  SizedBox(height: 30),
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
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child:
                  Text(
                    'Delivers on Time',
                    style: GoogleFonts.sora(
                      textStyle: TextStyle(
                        fontSize: 22,
                        color: Colors.white,
                        //fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 30),
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

                Flexible(
                  flex: 1,
                  child: TabBarView(
                    children: [
                      ItemsWidget(),
                      ItemsWidget(),
                      ItemsWidget(),
                      ItemsWidget(),

                     // Container(color: Colors.red),
                      //Container(color: Colors.red),
                      //Container(color: Colors.red),

                    ],
                  ),
                )
              ],
            ),
          ),

      ),
        bottomNavigationBar: HomeNavBar(),
    ),
    );
  }
}
