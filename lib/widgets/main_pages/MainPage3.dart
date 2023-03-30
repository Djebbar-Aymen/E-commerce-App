import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/widgets/Categories/Categories.dart';

class MainPage3 extends StatefulWidget {
  const MainPage3({Key? key}) : super(key: key);

  @override
  State<MainPage3> createState() => MainPage3State();
}

class MainPage3State extends State<MainPage3> {
  @override
  Widget build(BuildContext context) {
    var widthhh = MediaQuery.of(context).size.width;
    var heighttt = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Color(0xffF9F9F9),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            SizedBox(
              height: 300,
              width: double.infinity,
              child: FittedBox(
                  fit: BoxFit.fill,
                  child: Stack(children: [
                    Image.asset('assets/images/image 4.png'),
                    Positioned(
                      right: 10,
                      bottom: 10,
                      child: Text(
                        'New Collection',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'metropolis',
                            fontWeight: FontWeight.bold,
                            fontSize: 34),
                      ),
                    )
                  ])),
            ),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      Stack(children: [
                        Container(
                          width: widthhh / 2,
                          height: ((heighttt - 300) / 2) - 59,
                          child: Positioned(
                            left: 20,
                            child: Text(
                              'Summer Sale',
                              style: TextStyle(
                                  color: Color(0XFFDB3022),
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ]),
                      Container(
                        width: widthhh / 2,
                        height: ((heighttt - 300) / 2),
                        child: FittedBox(
                          fit: BoxFit.fill,
                          child: Stack(children: [
                            Image.asset('assets/images/image77.png'),
                            Positioned(
                                bottom: 20,
                                left: 15,
                                child: Text(
                                  'Black',
                                  style: TextStyle(
                                      fontFamily: 'metropolis',
                                      fontSize: 34,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ))
                          ]),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    width: widthhh / 2,
                    height: heighttt - 300 - 59,
                    child: FittedBox(
                      fit: BoxFit.fill,
                      child: Stack(children: [
                        Image.asset('assets/images/image 2.png'),
                        Positioned(
                            bottom: 210,
                            left: 20,
                            child: Column(
                              children: [
                                Text(
                                  'Mens',
                                  style: TextStyle(
                                      fontFamily: 'metropolis',
                                      fontSize: 34,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'hoddies',
                                  style: TextStyle(
                                      fontFamily: 'metropolis',
                                      fontSize: 34,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ))
                      ]),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.grey,
        unselectedIconTheme: IconThemeData(color: Colors.grey),
        selectedIconTheme: IconThemeData(
          color: Color(0XFFDB3022),
        ),
        items: [
          BottomNavigationBarItem(
            icon: Container(height: 24, width: 24, child: Icon(Icons.home)),
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Categories()),
                );
              },
              child: Container(
                  height: 29, width: 24, child: Icon(Icons.shop_outlined)),
            ),
            label: 'shop',
          ),
          BottomNavigationBarItem(
            icon: Container(
                height: 29,
                width: 24,
                child: Icon(Icons.shopping_bag_outlined)),
            label: 'Bag',
          ),
          BottomNavigationBarItem(
            icon: Container(
                height: 29,
                width: 24,
                child: Icon(Icons.favorite_border_outlined)),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Container(
                height: 29,
                width: 24,
                child: Icon(Icons.account_circle_outlined)),
            label: 'Profile',
          )
        ],
      ),
    );
  }
}
