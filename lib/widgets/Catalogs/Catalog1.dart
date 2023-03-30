import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/widgets/Categories/Categories.dart';
import 'package:flutter_ecommerce/widgets/Filters&Brands/Filter.dart';
import 'package:flutter_ecommerce/widgets/main_pages/mainpage.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class Catalog1 extends StatefulWidget {
  const Catalog1({Key? key}) : super(key: key);

  @override
  State<Catalog1> createState() => _Catalog1State();
}

class _Catalog1State extends State<Catalog1> {
  int selectedindex = 0;
  @override
  void onItemTapped(int index) {
    setState(() {
      selectedindex = index;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Icon(Icons.arrow_back_ios_new_sharp, color: Colors.black),
        actions: <Widget>[
          new IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.black,
              )),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Women\'s tops ',
                  style: TextStyle(
                      color: Color(0xFF222222),
                      fontFamily: 'metropolis',
                      fontWeight: FontWeight.bold,
                      fontSize: 32),
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 30,
                    width: 120,
                    child: ClipRRect(
                      // borderRadius: BorderRadius.circular(12.0),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25.0)),
                              primary: Colors.black),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Catalog1()));
                          },
                          child: Text(
                            'T-Shirts',
                            style: TextStyle(
                                fontFamily: 'metropolis',
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          )),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    height: 30,
                    width: 120,
                    child: ClipRRect(
                      // borderRadius: BorderRadius.circular(12.0),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25.0)),
                              primary: Colors.black),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Catalog1()));
                          },
                          child: Text(
                            'Crop Tops',
                            style: TextStyle(
                                fontFamily: 'metropolis',
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          )),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    height: 30,
                    width: 120,
                    child: ClipRRect(
                      // borderRadius: BorderRadius.circular(12.0),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25.0)),
                              primary: Colors.black),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Catalog1()));
                          },
                          child: Text(
                            'Sleeves',
                            style: TextStyle(
                                fontFamily: 'metropolis',
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          )),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    height: 30,
                    width: 120,
                    child: ClipRRect(
                      // borderRadius: BorderRadius.circular(12.0),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25.0)),
                              primary: Colors.black),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Catalog1()));
                          },
                          child: Text(
                            'T-Shirt',
                            style: TextStyle(
                                fontFamily: 'metropolis',
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          )),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: 7,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Filter()),
                    );
                  },
                  child: Container(
                    height: 12,
                    width: 18,
                    child: SvgPicture.asset('assets/icons/Filter.svg'),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'Filters',
                  style: TextStyle(
                    fontSize: 11,
                    fontFamily: 'metropolis',
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                GestureDetector(
                    onTap: () {
                      showModalBottomSheet(
                        isScrollControlled: true,
                        context: context,
                        builder: (context) {
                          return Wrap(
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Center(
                                  child: Text(
                                'Sort By',
                                style: TextStyle(
                                    color: Color(0XFF222222),
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              )),
                              ListTile(
                                title: Text(
                                  'Popular',
                                  style: TextStyle(color: Color(0XFF222222)),
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  'Newest',
                                  style: TextStyle(color: Color(0XFF222222)),
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  'Customer Review',
                                  style: TextStyle(color: Color(0XFF222222)),
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  'Highest To lowest',
                                  style: TextStyle(color: Color(0XFF222222)),
                                ),
                              ),
                            ],
                          );
                        },
                      );
                    },
                    child: Text(
                      'Sort By',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                          fontFamily: 'metropolis'),
                    )),
                SizedBox(
                  width: 15,
                ),
                Container(
                  height: 12,
                  width: 18,
                  child: SvgPicture.asset('assets/icons/Price.svg'),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'Price: Lowest to Highest',
                  style: TextStyle(
                    fontSize: 11,
                    fontFamily: 'metropolis',
                  ),
                ),
                SizedBox(
                  width: 70,
                ),
                Container(
                  height: 12,
                  width: 18,
                  child: SvgPicture.asset('assets/icons/Shape.svg'),
                )
              ],
            ),
            SizedBox(
              height: 35,
            ),
            Container(
              width: double.infinity,
              height: 545,
              child: SingleChildScrollView(
                child: Column(children: [
                  SizedBox(
                    height: 100,
                    width: double.infinity,
                    child: ClipRRect(
                      // borderRadius: BorderRadius.circular(12.0),
                      child: Stack(children: [
                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/Pullover.png'),
                                      fit: BoxFit.fill)),
                              height: double.infinity,
                              width: 100,
                            ),
                            Container(
                              width: 275,
                              height: double.infinity,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10.0),
                                    child: Text(
                                      'Pullover',
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          fontFamily: 'metropolis',
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 2,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Text(
                                      'Mango',
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 6,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8),
                                    child: Row(
                                      children: [
                                        SvgPicture.asset(
                                            'assets/icons/Star.svg'),
                                        SizedBox(
                                          width: 3,
                                        ),
                                        SvgPicture.asset(
                                            'assets/icons/Star.svg'),
                                        SizedBox(
                                          width: 3,
                                        ),
                                        SvgPicture.asset(
                                            'assets/icons/Star.svg'),
                                        SizedBox(
                                          width: 3,
                                        ),
                                        SvgPicture.asset(
                                            'assets/icons/Star.svg'),
                                        SizedBox(
                                          width: 3,
                                        ),
                                        SvgPicture.asset(
                                            'assets/icons/Star.svg'),
                                        SizedBox(
                                          width: 3,
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Text('50\$'),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ]),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 100,
                    width: double.infinity,
                    child: ClipRRect(
                      // borderRadius: BorderRadius.circular(12.0),
                      child: Stack(children: [
                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image:
                                          AssetImage('assets/images/Cat00.png'),
                                      fit: BoxFit.fill)),
                              height: double.infinity,
                              width: 100,
                            ),
                            Container(
                              width: 275,
                              height: double.infinity,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10.0),
                                    child: Text(
                                      'blouse',
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          fontFamily: 'metropolis',
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 2,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Text(
                                      'Mango',
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 6,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8),
                                    child: Row(
                                      children: [
                                        SvgPicture.asset(
                                            'assets/icons/Star.svg'),
                                        SizedBox(
                                          width: 3,
                                        ),
                                        SvgPicture.asset(
                                            'assets/icons/Star.svg'),
                                        SizedBox(
                                          width: 3,
                                        ),
                                        SvgPicture.asset(
                                            'assets/icons/Star.svg'),
                                        SizedBox(
                                          width: 3,
                                        ),
                                        SvgPicture.asset(
                                            'assets/icons/Star.svg'),
                                        SizedBox(
                                          width: 3,
                                        ),
                                        SvgPicture.asset(
                                            'assets/icons/Star.svg'),
                                        SizedBox(
                                          width: 3,
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Text('35\$'),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ]),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 100,
                    width: double.infinity,
                    child: ClipRRect(
                      // borderRadius: BorderRadius.circular(12.0),
                      child: Stack(children: [
                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image:
                                          AssetImage('assets/images/Cat11.png'),
                                      fit: BoxFit.fill)),
                              height: double.infinity,
                              width: 100,
                            ),
                            Container(
                              width: 275,
                              height: double.infinity,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10.0),
                                    child: Text(
                                      'T-Shirt',
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          fontFamily: 'metropolis',
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 2,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Text(
                                      'Mango',
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 6,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8),
                                    child: Row(
                                      children: [
                                        SvgPicture.asset(
                                            'assets/icons/Star.svg'),
                                        SizedBox(
                                          width: 3,
                                        ),
                                        SvgPicture.asset(
                                            'assets/icons/Star.svg'),
                                        SizedBox(
                                          width: 3,
                                        ),
                                        SvgPicture.asset(
                                            'assets/icons/Star.svg'),
                                        SizedBox(
                                          width: 3,
                                        ),
                                        SvgPicture.asset(
                                            'assets/icons/Star.svg'),
                                        SizedBox(
                                          width: 3,
                                        ),
                                        SvgPicture.asset(
                                            'assets/icons/Star.svg'),
                                        SizedBox(
                                          width: 3,
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Text('35\$'),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ]),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 100,
                    width: double.infinity,
                    child: ClipRRect(
                      // borderRadius: BorderRadius.circular(12.0),
                      child: Stack(children: [
                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image:
                                          AssetImage('assets/images/Cat22.png'),
                                      fit: BoxFit.fill)),
                              height: double.infinity,
                              width: 100,
                            ),
                            Container(
                              width: 275,
                              height: double.infinity,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10.0),
                                    child: Text(
                                      'Shirt',
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          fontFamily: 'metropolis',
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 2,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Text(
                                      'Mango',
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 6,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8),
                                    child: Row(
                                      children: [
                                        SvgPicture.asset(
                                            'assets/icons/Star.svg'),
                                        SizedBox(
                                          width: 3,
                                        ),
                                        SvgPicture.asset(
                                            'assets/icons/Star.svg'),
                                        SizedBox(
                                          width: 3,
                                        ),
                                        SvgPicture.asset(
                                            'assets/icons/Star.svg'),
                                        SizedBox(
                                          width: 3,
                                        ),
                                        SvgPicture.asset(
                                            'assets/icons/Star.svg'),
                                        SizedBox(
                                          width: 3,
                                        ),
                                        SvgPicture.asset(
                                            'assets/icons/Star.svg'),
                                        SizedBox(
                                          width: 3,
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Text('20\$'),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ]),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 100,
                    width: double.infinity,
                    child: ClipRRect(
                      // borderRadius: BorderRadius.circular(12.0),
                      child: Stack(children: [
                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/Pullover.png'),
                                      fit: BoxFit.fill)),
                              height: double.infinity,
                              width: 100,
                            ),
                            Container(
                              width: 275,
                              height: double.infinity,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10.0),
                                    child: Text(
                                      'Pullover',
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          fontFamily: 'metropolis',
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 2,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Text(
                                      'Mango',
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 6,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8),
                                    child: Row(
                                      children: [
                                        SvgPicture.asset(
                                            'assets/icons/Star.svg'),
                                        SizedBox(
                                          width: 3,
                                        ),
                                        SvgPicture.asset(
                                            'assets/icons/Star.svg'),
                                        SizedBox(
                                          width: 3,
                                        ),
                                        SvgPicture.asset(
                                            'assets/icons/Star.svg'),
                                        SizedBox(
                                          width: 3,
                                        ),
                                        SvgPicture.asset(
                                            'assets/icons/Star.svg'),
                                        SizedBox(
                                          width: 3,
                                        ),
                                        SvgPicture.asset(
                                            'assets/icons/Star.svg'),
                                        SizedBox(
                                          width: 3,
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Text('50\$'),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ]),
                    ),
                  ),
                ]),
              ),
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
      ),
    );
  }
}
