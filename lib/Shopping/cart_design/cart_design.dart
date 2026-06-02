import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_application/cart_design.dart';
import 'package:login_application/home.dart';
import 'package:login_application/Profile/profile.dart';
import 'package:login_application/Profile/profilesettings.dart';
import 'package:login_application/Shopping/cart_design/widgets/circle_card_widget.dart';
import 'package:login_application/Shopping/cart_design/widgets/container_widget.dart';
import 'package:login_application/Shopping/cart_design/widgets/row_widget.dart';
import 'package:login_application/Shopping/my_cart/my_cart.dart';
import 'package:login_application/truecaller.dart';

class CartDesign extends StatelessWidget {
  const CartDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
            backgroundColor: Colors.white,
            textColor: Colors.green,
            child: Icon(Icons.notifications, size: 30),
          ),
          SizedBox(width: 10),
          Badge(
            label: Text("3"),
            backgroundColor: Colors.white,
            textColor: Colors.green,
            child: GestureDetector(
              onTap: () {
                Get.to(MyCart());
              },
              child: Icon(Icons.shopping_cart_outlined, size: 30),
            ),
          ),
          SizedBox(width: 8),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 180, 214, 241),
              ),
              child: Text('Menu'),
            ),
            ListTile(
              title: const Text('Profile'),
              onTap: () {
                Get.to(Profile());
              },
            ),
            ListTile(
              title: const Text('True Caller'),
              onTap: () {
                Get.to(TrueCaller());
              },
            ),
            ListTile(
              title: const Text('My Cart'),
              onTap: () {
                Get.to(MyCart());
              },
            ),
            ListTile(
              title: const Text('Settings'),
              onTap: () {
                Get.to(ProfileSettings());
              },
            ),
          ],
        ),
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
              CarouselSlider(
                items: [
                  //2nd Image of Slider
                  Container(
                    width: double.infinity,

                    margin: EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      border: Border.all(width: 1),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Column(
                      children: [
                        Image.asset("assets/images/more.png", height: 150),
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,

                    margin: EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      border: Border.all(width: 1),

                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Column(
                      children: [
                        Image.asset("assets/images/watch.png", height: 150),
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      border: Border.all(width: 1),

                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Column(
                      children: [
                        Image.asset("assets/images/sneakers.png", height: 150),
                      ],
                    ),
                  ),
                ],
                options: CarouselOptions(
                  height: 190.0,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  aspectRatio: 16 / 9,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  viewportFraction: 0.8,
                ),
              ),
              //
              // Container(
              //   height: 180,
              //   width: double.infinity,
              //   decoration: BoxDecoration(
              //     color: const Color.fromARGB(255, 253, 200, 218),
              //     borderRadius: BorderRadius.circular(15),
              //   ),
              //   child: Padding(
              //     padding: const EdgeInsets.all(15.0),
              //     child: Column(
              //       crossAxisAlignment: CrossAxisAlignment.start,
              //       children: [
              //         Text(
              //           "Summer \n Sale ",
              //           maxLines: 2,
              //           style: TextStyle(
              //             fontSize: 25,
              //             fontWeight: FontWeight.bold,
              //             color: Colors.deepPurpleAccent,
              //           ),
              //         ),
              //         Row(
              //           children: [
              //             Text("Up to "),
              //             Text(
              //               "50% OFF",
              //               style: TextStyle(
              //                 fontSize: 20,
              //                 fontWeight: FontWeight.bold,
              //               ),
              //             ),
              //           ],
              //         ),
              //         ElevatedButton(
              //           style: ElevatedButton.styleFrom(
              //             backgroundColor: Colors.deepPurpleAccent,
              //             shape: RoundedRectangleBorder(
              //               borderRadius: BorderRadiusGeometry.circular(8),
              //             ),
              //           ),
              //           onPressed: () {},
              //           child: Text(
              //             "Shop Now",
              //             style: TextStyle(
              //               fontWeight: FontWeight.bold,
              //               color: Colors.white,
              //             ),
              //           ),
              //         ),
              //       ],
              //     ),
              //   ),
              // ),

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

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  spacing: 8,
                  children: [
                    containerWidget(
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.favorite_border),
                      ),
                      "assets/images/watch.png",
                      "boAt Wave Call 2",
                      "Smart Watch",
                      "\$1,299",
                      "48% OFF",
                    ),
                    containerWidget(
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.favorite_border),
                      ),

                      "assets/images/sneakers.png",
                      "Puma Men's",
                      "Sneakers",
                      "\$1,799",
                      "50% OFF",
                    ),
                    containerWidget(
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.favorite_border),
                      ),

                      "assets/images/Handbag.png",
                      "Lavie Women's",
                      "Handbag",
                      "\$999",
                      "60% OFF",
                    ),
                  ],
                ),
              ),

              rowWidget(title: "Best Sellers", another: "View All"),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  spacing: 8,
                  children: [
                    containerWidget(
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.favorite_border),
                      ),

                      "assets/images/ring.png",
                      "Gold plated ring",
                      "Ring",
                      "\$1,299",
                      "48% OFF",
                    ),
                    containerWidget(
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.favorite_border),
                      ),

                      "assets/images/airpods.png",
                      "Apple Airpods",
                      "Airpod",
                      "\$1,299",
                      "15% OFF",
                    ),
                    containerWidget(
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.favorite_border),
                      ),

                      "assets/images/wallet.png",
                      "Genuine leather ",
                      "Wallet",
                      "\$299",
                      "48% OFF",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
