import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/widgets/Catalogs/Catalog1.dart';

import '../main_pages/MainPage.dart';
import 'Categories.dart';

class Categories2 extends StatefulWidget {
  const Categories2({Key? key}) : super(key: key);

  @override
  State<Categories2> createState() => Categories2State();
}

class Categories2State extends State<Categories2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Icon(Icons.arrow_back_ios_new_sharp, color: Colors.black),
          centerTitle: true,
          title: Text(
            'Categories',
            style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontFamily: 'metropolis',
                fontWeight: FontWeight.bold),
          ),
          actions: <Widget>[
            new IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search,
                  color: Colors.black,
                )),
          ],
        ),
        body: Column(
          children: [
            SizedBox(
              height: 25,
            ),
            SizedBox(
              height: 48,
              width: 395,
              child: ClipRRect(
                // borderRadius: BorderRadius.circular(12.0),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25.0)),
                        primary: Color(0XFFDB3022)),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Catalog1()));
                    },
                    child: Text(
                      'VIEW ALL ITEMS',
                      style: TextStyle(
                          fontFamily: 'metropolis',
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    )),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: SizedBox(
                height: 445,
                child: ListView(children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Text(
                      'Choose categorie',
                      style: TextStyle(
                          color: Colors.grey,
                          fontFamily: 'metropolis',
                          fontSize: 20),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  ListTile(
                    title: Text(
                      'Top Sales',
                      style: TextStyle(
                          fontFamily: 'metropolis',
                          fontSize: 24,
                          color: Color(0XFF222222)),
                    ),
                  ),
                  ListTile(
                    title: Text(
                      'Shirts & Blouses',
                      style: TextStyle(
                          fontFamily: 'metropolis',
                          fontSize: 24,
                          color: Color(0XFF222222)),
                    ),
                  ),
                  ListTile(
                    title: Text(
                      'Jeans',
                      style: TextStyle(
                          fontFamily: 'metropolis',
                          fontSize: 24,
                          color: Color(0XFF222222)),
                    ),
                  ),
                  ListTile(
                    title: Text(
                      'Cargos',
                      style: TextStyle(
                          fontFamily: 'metropolis',
                          fontSize: 24,
                          color: Color(0XFF222222)),
                    ),
                  ),
                  ListTile(
                    title: Text(
                      'Blazers',
                      style: TextStyle(
                          fontFamily: 'metropolis',
                          fontSize: 24,
                          color: Color(0XFF222222)),
                    ),
                  ),
                  ListTile(
                    title: Text(
                      'Out Wears',
                      style: TextStyle(
                          fontFamily: 'metropolis',
                          fontSize: 24,
                          color: Color(0XFF222222)),
                    ),
                  ),
                  ListTile(
                    title: Text(
                      'Knit wears',
                      style: TextStyle(
                          fontFamily: 'metropolis',
                          fontSize: 24,
                          color: Color(0XFF222222)),
                    ),
                  ),
                  ListTile(
                    title: Text(
                      'Shorts',
                      style: TextStyle(
                          fontFamily: 'metropolis',
                          fontSize: 24,
                          color: Color(0XFF222222)),
                    ),
                  ),
                  ListTile(
                    title: Text(
                      'Skirts',
                      style: TextStyle(
                          fontFamily: 'metropolis',
                          fontSize: 24,
                          color: Color(0XFF222222)),
                    ),
                  )
                ]),
              ),
            ),
          ],
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
              icon: Container(
                  height: 24,
                  width: 24,
                  child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MainPage()));
                      },
                      child: Icon(Icons.home))),
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
        ));
  }
}
