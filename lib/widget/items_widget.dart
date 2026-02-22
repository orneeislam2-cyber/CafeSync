import 'package:cafesync/page/home.dart';
import 'package:cafesync/page/single_item_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cafesync/constant/item_model.dart';
class ItemsWidget extends StatelessWidget {
  final List<Item> items;
  const ItemsWidget({super.key,required this.items});

  @override
  Widget build(BuildContext context) {


    return GridView.builder(
      physics: NeverScrollableScrollPhysics(), // scroll handled by parent
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      itemCount: items.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.76,
      ),
      itemBuilder: (context, index) {
        final item = items[index];
        return Container(
          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          margin: EdgeInsets.symmetric(vertical: 8, horizontal: 13),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color(0xFF232227),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.4),
                spreadRadius: 1,
                blurRadius: 8,
              ),
            ],
          ),

          child: Column(
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>  SingleItemPage(item: item),
                    ),
                  ); //pr
                },

                  child: Image.asset(
                    item.image,
                    width: 120,
                    height: 120,
                    fit: BoxFit.cover,
                  ),
                ),
         SizedBox(height: 10),


              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  item.name,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),

              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  item.subname,
                  style: const TextStyle(
                      color: Colors.white60,
                      fontSize: 14
                  ),
                ),
              ),

              const SizedBox(height: 10),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "${item.price} Tk",
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      const Icon(Icons.star,
                          color: Colors.amber, size: 18),
                      Text(
                        item.rating.toString(),
                        style: const TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}