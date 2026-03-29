import 'package:cafesync/page/home.dart';
import 'package:cafesync/widget/home_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:cafesync/widget/order_now_bar.dart';
import 'package:cafesync/constant/cart_data.dart';
/*class MyCartPage extends StatelessWidget {
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
}*/
class MyCartPage extends StatefulWidget {
  const MyCartPage({super.key});

  @override
  State<MyCartPage> createState() => _MyCartPageState();
}

class _MyCartPageState extends State<MyCartPage> {
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



      body:CartData.cartItems.isEmpty
          ? const Center(
        child: Text(
          "Your cart is empty",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      )
          : ListView.builder(
        itemCount: CartData.cartItems.length,
        itemBuilder: (context, index) {
          final cartItem = CartData.cartItems[index];

          return Card(
            color: Colors.black,
            margin: const EdgeInsets.all(10),
            child: ListTile(
              leading: Image.asset(cartItem.item.image, width: 50),

              title: Text(
                cartItem.item.name,
                style: const TextStyle(color: Colors.white),
              ),

              subtitle: Row(
                children: [

                  IconButton(
                    onPressed: () {
                      setState(() {
                        CartData.decreaseQuantity(index);
                      });
                    },
                    icon: const Icon(Icons.remove, color: Colors.white),
                  ),

                  Text(
                    cartItem.quantity.toString(),
                    style: const TextStyle(color: Colors.white),
                  ),


                  IconButton(
                    onPressed: () {
                      setState(() {
                        CartData.increaseQuantity(index);
                      });
                    },
                    icon: const Icon(Icons.add, color: Colors.white),
                  ),
                ],
              ),

              trailing: Column(
                mainAxisSize: MainAxisSize.min,
                children: [

                  Text(
                    "${cartItem.item.price * cartItem.quantity} Tk",
                    style: const TextStyle(color: Colors.white),
                  ),


                  IconButton(
                    onPressed: () {
                      setState(() {
                        CartData.removeItem(index);
                      });
                    },
                    icon: const Icon(Icons.delete, color: Colors.white,size: 20),

                  ),
                ],
              ),
            ),
          );
        },
      ),

    /*  bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [

          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            color: const Color(0xFF232227),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total: ${CartData.getTotalPrice()} Tk",
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const OrderNowBar(),
              ],
            ),
          ),
          const SizedBox(height: 10),
          const HomeNavBar(),
        ],
      ),*/
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [

          if (CartData.cartItems.isNotEmpty)
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
              color: const Color(0xFF232227),
              child: Row(
                children: [
                  Text(
                    "Total: ${CartData.getTotalPrice()} Tk",
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),


          if (CartData.cartItems.isNotEmpty)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
              child: const OrderNowBar(),
            ),

          const SizedBox(height: 10),


          const HomeNavBar(),
        ],
      ),
    );
  }
}
