import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_application/online_shopping/cart_design/cart_design.dart';
import 'package:login_application/online_shopping/my_cart/widgets/my_cart_widget.dart';

class MyCart extends StatelessWidget {
  const MyCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.to(CartDesign());
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
        title: Center(child: Text("My Cart (3)")),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.favorite_border)),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 50,
              color: const Color.fromARGB(255, 217, 239, 250),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 15,
                      backgroundColor: Colors.green,
                      child: Icon(Icons.check, color: Colors.white, size: 15),
                    ),
                    SizedBox(width: 10),
                    Expanded(child: Text("Yay! You're getting free delivery")),
                    Icon(Icons.local_shipping),
                  ],
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Column(
                spacing: 12,
                children: [
                  cartWidget(
                    icon: Icons.check_box,
                    img: "assets/images/sneakers.png",
                    title: "Puma Men's Sneakers",
                    icon2: Icons.favorite_border,
                    size: "Size: 8",
                    color: "Color: White",
                    price: "\$1,799",
                    off: "50% OFF",
                  ),

                  cartWidget(
                    icon: Icons.check_box,
                    img: "assets/images/Handbag.png",
                    title: "Lavie Women's Handbag",
                    icon2: Icons.favorite_border,
                    color: "Color: Lavender",
                    price: "\$999",
                    off: "60% OFF",
                  ),
                  cartWidget(
                    icon: Icons.check_box,
                    img: "assets/images/watch.png",
                    title: "boAt Wave Call 2",
                    icon2: Icons.favorite_border,
                    color: "Color: Black",
                    price: "\$1,299",
                    off: "48% OFF",
                  ),

                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      // color: Color.fromARGB(255, 223, 233, 250),
                      border: BoxBorder.all(width: 1, color: Colors.grey),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 12,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.local_offer_outlined),
                              SizedBox(width: 10),
                              Text(
                                "Apply Promocode",
                                style: TextStyle(color: Colors.blueGrey),
                              ),
                            ],
                          ),
                          Icon(Icons.arrow_forward_ios),
                        ],
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Price (3 items)"),
                      Text(
                        "\$4,097",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Discount", style: TextStyle(color: Colors.green)),
                      Text(
                        "-\$1909",
                        style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Delivery"),
                      Text(
                        "Free",
                        style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Total Amount",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        "\$2188",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurple,
                      minimumSize: Size(350, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.circular(10),
                      ),
                    ),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Proceed to Checkout",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        SizedBox(width: 10),
                        Icon(Icons.arrow_forward_ios, color: Colors.white),
                      ],
                    ),
                  ),
                  SizedBox(height: 5),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
