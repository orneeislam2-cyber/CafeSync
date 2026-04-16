
import 'package:cafesync/constant/color.dart';
import 'package:cafesync/widget/home_nav_bar.dart';
import 'package:flutter/material.dart';
//new imports
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cafesync/constant/cart_data.dart';
import 'package:cafesync/page/home.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({super.key});

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
//new
  final nameController = TextEditingController();
  final phoneController = TextEditingController();
  final emailController = TextEditingController();
  final areaController = TextEditingController();
  final addressController = TextEditingController();
  final districtController = TextEditingController();
  final paymentController = TextEditingController();
  final promoCodeController = TextEditingController();
//

  String deliveryType = "Home Delivery";
  String paymentMethod = "Cash on Delivery";
  String onlineMethod = "Bkash";

  Widget buildTextField(String hint,TextEditingController controller) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: TextFormField(
        controller: controller,
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
    double totalPrice = CartData.getTotalPrice();
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

            buildTextField("Full Name", nameController),
            buildTextField("Phone Number",phoneController),
            buildTextField("Email",emailController),

            const SizedBox(height: 10),

            // Address
            const Text("Address",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),

            const SizedBox(height: 10),

            buildTextField("Area",areaController),
            buildTextField("House/Road No",addressController),
            buildTextField("District",districtController),

            const SizedBox(height: 10),


            const Text("Total Price",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),


            Text(
              "Total: $totalPrice Tk",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 10),


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

             // buildTextField("Enter Payment Number"),
              buildTextField("Enter Payment Number",paymentController), // temporary fix
            ],

            const SizedBox(height: 10),


            const Text("Promo Code",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),

            buildTextField("Enter Promo Code",promoCodeController),

            const SizedBox(height: 25),


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

                onPressed: () async {
    final user = FirebaseAuth.instance.currentUser;

    if (user == null) {
    ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(content: Text("Please login first")),
    );
    return;
    }

    await FirebaseFirestore.instance.collection('orders').add({
    'userId': user.uid,
    'name': nameController.text,
    'phone': phoneController.text,
    'email': emailController.text,
    'area': areaController.text,
    'address': addressController.text,
    'district': districtController.text,
    'totalPrice': totalPrice,
    'deliveryType': deliveryType,
    'paymentMethod': paymentMethod,
    'status': 'confirmed',
    'timestamp': FieldValue.serverTimestamp(),
    });


    CartData.cartItems.clear();


    ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(content: Text("Order Confirmed ✅")),
    );

    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => const Home()),
          (route) => false,
    );
    },


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