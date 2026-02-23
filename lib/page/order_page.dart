/*import 'package:flutter/material.dart';

class OrderplacePage extends StatefulWidget {
  const OrderplacePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

    );
  }
}*/
import 'package:cafesync/constant/color.dart';
import 'package:cafesync/widget/home_nav_bar.dart';
import 'package:flutter/material.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({super.key});

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {

  String deliveryType = "Home Delivery";
  String paymentMethod = "Cash on Delivery";
  String onlineMethod = "Bkash";

  Widget buildTextField(String hint) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: hint,
          filled: true,
          fillColor: const Color(0xFFFFE6EC),
          contentPadding:
          const EdgeInsets.symmetric(vertical: 18, horizontal: 15),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const
        Text("Order Now"),
        backgroundColor: normal,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(15),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // Personal Information
            const Text("Personal Information",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),

            const SizedBox(height: 10),

            buildTextField("Full Name"),
            buildTextField("Phone Number"),
            buildTextField("Email"),

            const SizedBox(height: 10),

            // Address
            const Text("Address",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),

            const SizedBox(height: 10),

            buildTextField("Area"),
            buildTextField("House/Road No"),
            buildTextField("District"),

            const SizedBox(height: 10),

            /// 🔶 Total Price
            const Text("Total Price",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),

            buildTextField("350 Tk"),

            const SizedBox(height: 10),

            // Delivery Options
            const Text("Delivery Options",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),

            RadioListTile(
              title: const Text("Home Delivery"),
              value: "Home Delivery",
              groupValue: deliveryType,
              onChanged: (value) {
                setState(() => deliveryType = value!);
              },
            ),

            RadioListTile(
              title: const Text("Pick Up"),
              value: "Pick Up",
              groupValue: deliveryType,
              onChanged: (value) {
                setState(() => deliveryType = value!);
              },
            ),

            const SizedBox(height: 10),

            // Payment Method
            const Text("Payment Method",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),

            RadioListTile(
              title: const Text("Cash on Delivery"),
              value: "Cash on Delivery",
              groupValue: paymentMethod,
              onChanged: (value) {
                setState(() => paymentMethod = value!);
              },
            ),

            RadioListTile(
              title: const Text("Online Payment"),
              value: "Online Payment",
              groupValue: paymentMethod,
              onChanged: (value) {
                setState(() => paymentMethod = value!);
              },
            ),

            // Online Payment Options
            if (paymentMethod == "Online Payment") ...[

              RadioListTile(
                title: const Text("Bkash"),
                value: "Bkash",
                groupValue: onlineMethod,
                onChanged: (value) {
                  setState(() => onlineMethod = value!);
                },
              ),

              RadioListTile(
                title: const Text("Nagad"),
                value: "Nagad",
                groupValue: onlineMethod,
                onChanged: (value) {
                  setState(() => onlineMethod = value!);
                },
              ),

              RadioListTile(
                title: const Text("Rocket"),
                value: "Rocket",
                groupValue: onlineMethod,
                onChanged: (value) {
                  setState(() => onlineMethod = value!);
                },
              ),

              buildTextField("Enter Payment Number"),
            ],

            const SizedBox(height: 10),

            // Promo Code
            const Text("Promo Code",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),

            buildTextField("Enter Promo Code"),

            const SizedBox(height: 25),

            // Confirm Button
            SizedBox(
              width: double.infinity,
              height: 55,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: normal,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                onPressed: () {},
                child: const Text(
                  "Confirm Order",
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),

            const SizedBox(height: 30),

          ],
        ),
      ),
      bottomNavigationBar: const HomeNavBar(),
    );
  }
}