import 'package:flutter/material.dart';
import 'package:login_application/new_design/circle_card_widget.dart';
import 'package:login_application/new_design/container_widget.dart';
import 'package:login_application/new_design/row_widget.dart';

class CartDesign extends StatelessWidget {
  const CartDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [Text("Hello, Priya"), Icon(Icons.handshake_sharp)],
            ),
            Text("What are you looking for?", style: TextStyle(fontSize: 12)),
          ],
        ),

        actions: [
          Badge(
            label: Text("3"),
            backgroundColor: Colors.red,
            textColor: Colors.green,
            child: Icon(Icons.notifications, size: 30),
          ),
          SizedBox(width: 15),
          Badge(
            smallSize: 12,
            label: Text("3"),
            backgroundColor: Colors.red,
            textColor: Colors.green,
            child: Icon(Icons.shopping_cart_outlined, size: 30),
          ),
          SizedBox(width: 8),
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            spacing: 15,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SearchBar(
                shape: WidgetStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                leading: Icon(Icons.search),
                hintText: "Search for products, brands and more ",
                trailing: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.document_scanner),
                  ),
                ],
              ),
              Container(
                height: 180,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 253, 200, 218),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Summer \n Sale ",
                        maxLines: 2,
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.deepPurpleAccent,
                        ),
                      ),
                      Row(
                        children: [
                          Text("Up to "),
                          Text(
                            "50% OFF",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.deepPurpleAccent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusGeometry.circular(8),
                          ),
                        ),
                        onPressed: () {},
                        child: Text(
                          "Shop Now",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // Fashion
              Row(
                spacing: 6,
                children: [
                  circleCard(
                    "assets/images/girl.png",
                    "Fashion",
                    const Color.fromARGB(255, 245, 157, 208),
                  ),
                  circleCard(
                    "assets/images/beauty.png",
                    "Beauty",
                    const Color.fromARGB(255, 240, 230, 230),
                  ),
                  circleCard(
                    "assets/images/headphone.png",
                    "Electronics",
                    const Color.fromARGB(255, 240, 230, 230),
                  ),
                  circleCard(
                    "assets/images/sofa.png",
                    "Home",
                    const Color.fromARGB(255, 240, 230, 230),
                  ),
                  circleCard(
                    "assets/images/more.png",
                    "More",
                    const Color.fromARGB(255, 240, 230, 230),
                  ),
                ],
              ),

              rowWidget(
                icon: Icons.fireplace,
                title: "Deals of the Day",
                another: "View All",
              ),

              Row(
                spacing: 8,
                children: [
                  containerWidget(
                    Icons.heart_broken,
                    "assets/images/watch.png",
                    "boAt Wave Call 2",
                    "Smart Watch",
                    "\$1,299",
                    "48% OFF",
                  ),
                  containerWidget(
                    Icons.heart_broken,
                    "assets/images/sneakers.png",
                    "Puma Men's",
                    "Sneakers",
                    "\$1,799",
                    "50% OFF",
                  ),
                  containerWidget(
                    Icons.heart_broken,
                    "assets/images/Handbag.png",
                    "Lavie Women's",
                    "Handbag",
                    "\$999",
                    "60% OFF",
                  ),
                ],
              ),

              rowWidget(title: "Best Sellers", another: "View All"),

              Row(
                spacing: 8,
                children: [
                  containerWidget(
                    Icons.heart_broken,
                    "assets/images/ring.png",
                    "Gold plated ring",
                    "Ring",
                    "\$1,299",
                    "48% OFF",
                  ),
                  containerWidget(
                    Icons.heart_broken,
                    "assets/images/airpods.png",
                    "Apple Airpods",
                    "Airpod",
                    "\$1,299",
                    "15% OFF",
                  ),
                  containerWidget(
                    Icons.heart_broken,
                    "assets/images/wallet.png",
                    "Genuine leather ",
                    "Wallet",
                    "\$299",
                    "48% OFF",
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
