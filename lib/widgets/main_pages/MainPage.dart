import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/widgets/Categories/Categories.dart';
import 'package:flutter_ecommerce/widgets/main_pages/MainPage2.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => MainPageState();
}

class MainPageState extends State<MainPage> {
  int _currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffF9F9F9),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(children: [
                SizedBox(
                  height: 480,
                  width: double.infinity,
                  child: FittedBox(
                      fit: BoxFit.cover,
                      child: Image.asset('assets/images/main.png')),
                ),
                Positioned(
                  bottom: 0,
                  left: 20,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 2,
                          ),
                          Text(
                            'Fashion Sales',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 48,
                                fontFamily: 'metropolis',
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 9,
                      ),
                      SizedBox(
                        height: 36,
                        width: 160,
                        child: ClipRRect(
                          // borderRadius: BorderRadius.circular(12.0),
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(25.0)),
                                  primary: Color(0XFFDB3022)),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const MainPage2()),
                                );
                              },
                              child: Text(
                                'check',
                                style: TextStyle(
                                    fontFamily: 'metropolis',
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              )),
                        ),
                      ),
                    ],
                  ),
                ),
              ]),
              SizedBox(
                height: 80,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'NEW',
                    style: TextStyle(
                        fontFamily: 'metropolis',
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 232,
                  ),
                  Text('View All'),
                ],
              ),
              SizedBox(
                height: 14,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    'You have never seen it before ',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                  width: 900,
                  height: 250,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    children: [
                      SizedBox(width: 5),
                      Stack(children: [
                        Container(
                          height: 216,
                          width: 140,
                          child: Image.asset('assets/images/new2.png'),
                        ),
                        Positioned(
                          left: 0,
                          top: 35,
                          child: SizedBox(
                            height: 20,
                            width: 50,
                            child: ClipRRect(
                              // borderRadius: BorderRadius.circular(12.0),
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(25.0)),
                                      primary: Color(0XFF000000)),
                                  onPressed: () {},
                                  child: Text(
                                    'NEW',
                                    style: TextStyle(
                                        fontFamily: 'metropolis',
                                        fontSize: 7,
                                        fontWeight: FontWeight.bold),
                                  )),
                            ),
                          ),
                        )
                      ]),
                      Stack(children: [
                        Container(
                          height: 216,
                          width: 170,
                          child: Image.asset('assets/images/new1.png'),
                        ),
                        Positioned(
                          left: 0,
                          top: 35,
                          child: SizedBox(
                            height: 20,
                            width: 50,
                            child: ClipRRect(
                              // borderRadius: BorderRadius.circular(12.0),
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(25.0)),
                                      primary: Color(0XFF000000)),
                                  onPressed: () {},
                                  child: Text(
                                    'NEW',
                                    style: TextStyle(
                                        fontFamily: 'metropolis',
                                        fontSize: 7,
                                        fontWeight: FontWeight.bold),
                                  )),
                            ),
                          ),
                        )
                      ]),
                      Stack(children: [
                        Container(
                          height: 216,
                          width: 140,
                          child: Image.asset('assets/images/new2.png'),
                        ),
                        Positioned(
                          left: 0,
                          top: 35,
                          child: SizedBox(
                            height: 20,
                            width: 50,
                            child: ClipRRect(
                              // borderRadius: BorderRadius.circular(12.0),
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(25.0)),
                                      primary: Color(0XFF000000)),
                                  onPressed: () {},
                                  child: Text(
                                    'NEW',
                                    style: TextStyle(
                                        fontFamily: 'metropolis',
                                        fontSize: 7,
                                        fontWeight: FontWeight.bold),
                                  )),
                            ),
                          ),
                        )
                      ])
                    ],
                  )),
              SizedBox(height: 20),
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
          currentIndex: _currentindex,
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
          onTap: (index) {
            setState(() {
              _currentindex = index;
            });
          },
        ));
  }
}
