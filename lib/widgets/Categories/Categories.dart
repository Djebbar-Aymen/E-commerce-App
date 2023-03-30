import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/widgets/Categories/Categories2.dart';
import 'package:flutter_ecommerce/widgets/main_pages/MainPage.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  State<Categories> createState() => CategoriesState();
}

class CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: DefaultTabController(
            length: 3,
            child: Scaffold(
              backgroundColor: Color(0xffF9F9F9),
              appBar: AppBar(
                backgroundColor: Colors.transparent,
                elevation: 0,
                leading:
                    Icon(Icons.arrow_back_ios_new_sharp, color: Colors.black),
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
                bottom: const TabBar(
                  tabs: [
                    Tab(
                        child: Text(
                      'Men',
                      style: TextStyle(color: Colors.black),
                    )),
                    Tab(
                        child: Text('Women',
                            style: TextStyle(color: Colors.black))),
                    Tab(
                        child: Text(
                      'Kids',
                      style: TextStyle(color: Colors.black),
                    )),
                  ],
                ),
              ),
              body: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 80,
                        width: double.infinity,
                        child: ClipRRect(
                          // borderRadius: BorderRadius.circular(12.0),
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(15.0)),
                                  primary: Color(0XFFDB3022)),
                              onPressed: () {},
                              child: Text(
                                'SUMMER SALES',
                                style: TextStyle(
                                    fontFamily: 'metropolis',
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold),
                              )),
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
                                  width: 163,
                                  height: double.infinity,
                                  child: Text(
                                    'Accessories',
                                    style: TextStyle(
                                        fontFamily: 'metropolis',
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/images/Cat1.png'),
                                          fit: BoxFit.fill)),
                                  height: double.infinity,
                                  width:
                                      MediaQuery.of(context).size.width * 0.5,
                                )
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
                                  width: 163,
                                  height: double.infinity,
                                  child: Text(
                                    'shoes',
                                    style: TextStyle(
                                        fontFamily: 'metropolis',
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/images/Cat2.png'),
                                          fit: BoxFit.fill)),
                                  height: double.infinity,
                                  width:
                                      MediaQuery.of(context).size.width * 0.5,
                                )
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
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const Categories2()),
                                    );
                                  },
                                  child: Container(
                                    width: 163,
                                    height: double.infinity,
                                    child: Text(
                                      'Clothes',
                                      style: TextStyle(
                                          fontFamily: 'metropolis',
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/images/Cat3.png'),
                                          fit: BoxFit.fill)),
                                  height: double.infinity,
                                  width:
                                      MediaQuery.of(context).size.width * 0.5,
                                )
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
                                  width: 163,
                                  height: double.infinity,
                                  child: Text(
                                    'New',
                                    style: TextStyle(
                                        fontFamily: 'metropolis',
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/images/Cat4.png'),
                                          fit: BoxFit.fill)),
                                  height: double.infinity,
                                  width:
                                      MediaQuery.of(context).size.width * 0.5,
                                )
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
                                  width: 163,
                                  height: double.infinity,
                                  child: Text(
                                    'Accessories',
                                    style: TextStyle(
                                        fontFamily: 'metropolis',
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/images/Cat00.png'),
                                          fit: BoxFit.fill)),
                                  height: double.infinity,
                                  width:
                                      MediaQuery.of(context).size.width * 0.5,
                                )
                              ],
                            ),
                          ]),
                        ),
                      ),
                    ],
                  ),
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
                          MaterialPageRoute(
                              builder: (context) => const Categories()),
                        );
                      },
                      child: Container(
                          height: 29,
                          width: 24,
                          child: Icon(Icons.shop_outlined)),
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
            )));
  }
}
