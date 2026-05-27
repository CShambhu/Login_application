import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("All Products")),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Image.asset("assets/images/bag1.png", height: 70),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Fjallraven - Foldsack No. 1",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        "Backpack, Fits 15 Laptops",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "men's clothing",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      SizedBox(height: 15),
                      Row(
                        children: [
                          Icon(Icons.star),
                          Icon(Icons.star),
                          Icon(Icons.star),
                          Icon(Icons.star),
                          SizedBox(width: 10),
                          Text("4.1(259)"),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(width: 22),
                  SizedBox(
                    height: 75,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "\$109.95",
                          style: TextStyle(
                            color: Colors.deepPurpleAccent,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Container(
                          height: 40,
                          width: 55,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 0.5),
                          ),
                          child: Icon(Icons.shopping_cart),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Divider(thickness: 0.5),
              //
              //
              Row(
                children: [
                  Divider(thickness: 5),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 19),
                    child: Image.asset("assets/images/tshirt.png", height: 60),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Mens Casual Premium Slim",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        "Fit T-Shirts",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "men's clothing",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      SizedBox(height: 15),
                      Row(
                        children: [
                          Icon(Icons.star),
                          Icon(Icons.star),
                          Icon(Icons.star),
                          Icon(Icons.star),
                          SizedBox(width: 10),
                          Text("4.1(259)"),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(width: 24),
                  SizedBox(
                    height: 75,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "\$22.30",
                          style: TextStyle(
                            color: Colors.deepPurpleAccent,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Container(
                          height: 40,
                          width: 55,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 0.5),
                          ),
                          child: Icon(Icons.shopping_cart),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Divider(thickness: 0.5),
              //
              //
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Divider(thickness: 5),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Image.asset("assets/images/jacket.png", height: 67),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Mens Cotton Jacket",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),

                      SizedBox(height: 10),
                      Text(
                        "men's clothing",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      SizedBox(height: 15),
                      Row(
                        children: [
                          Icon(Icons.star),
                          Icon(Icons.star),
                          Icon(Icons.star),
                          Icon(Icons.star),
                          SizedBox(width: 10),
                          Text("4.7(250)"),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(width: 43),
                  SizedBox(
                    height: 75,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "\$55.99",
                          style: TextStyle(
                            color: Colors.deepPurpleAccent,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Container(
                          height: 40,
                          width: 55,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 0.5),
                          ),
                          child: Icon(Icons.shopping_cart),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Divider(thickness: 0.5),
              //
              //
              Row(
                children: [
                  Divider(thickness: 5),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 26),
                    child: Image.asset(
                      "assets/images/bracelet.png",
                      height: 45,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "John Hardy Women's ",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        "Legends Naga Gold & Silver",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        "Dragon Bracelet",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "jewelery",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      SizedBox(height: 15),
                      Row(
                        children: [
                          Icon(Icons.star),
                          Icon(Icons.star),
                          Icon(Icons.star),
                          Icon(Icons.star),
                          SizedBox(width: 10),
                          Text("4.6(400)"),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(width: 21),
                  SizedBox(
                    height: 75,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "\$695.00",
                          style: TextStyle(
                            color: Colors.deepPurpleAccent,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Container(
                          height: 40,
                          width: 55,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 0.5),
                          ),
                          child: Icon(Icons.shopping_cart),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Divider(thickness: 0.5),
              //
              //
              Row(
                children: [
                  Divider(thickness: 5),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Image.asset("assets/images/jogger.png", height: 45),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Solid Maroon Petite Micropave ",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        "with Maroon Joggers",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),

                      SizedBox(height: 10),
                      Text(
                        "men's clothing",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      SizedBox(height: 15),
                      Row(
                        children: [
                          Icon(Icons.star),
                          Icon(Icons.star),
                          Icon(Icons.star),
                          Icon(Icons.star),

                          SizedBox(width: 10),
                          Text("4.6(70)"),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 75,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "\$168.00",
                          style: TextStyle(
                            color: Colors.deepPurpleAccent,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Container(
                          height: 40,
                          width: 55,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 0.5),
                          ),
                          child: Icon(Icons.shopping_cart),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Divider(thickness: 0.5),
              Row(
                children: [
                  Divider(thickness: 5),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 19),
                    child: Image.asset("assets/images/tshirt.png", height: 60),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Mens Casual Premium Slim",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        "Fit T-Shirts",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "men's clothing",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      SizedBox(height: 15),
                      Row(
                        children: [
                          Icon(Icons.star),
                          Icon(Icons.star),
                          Icon(Icons.star),
                          Icon(Icons.star),
                          SizedBox(width: 10),
                          Text("4.1(259)"),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(width: 24),
                  SizedBox(
                    height: 75,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "\$22.30",
                          style: TextStyle(
                            color: Colors.deepPurpleAccent,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Container(
                          height: 40,
                          width: 55,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 0.5),
                          ),
                          child: Icon(Icons.shopping_cart),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Divider(thickness: 0.5),
              //
              //
            ],
          ),
        ),
      ),
    );
  }
}
