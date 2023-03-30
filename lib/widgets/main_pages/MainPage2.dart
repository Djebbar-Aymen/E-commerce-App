import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainPage2 extends StatefulWidget {
  const MainPage2({Key? key}) : super(key: key);

  @override
  State<MainPage2> createState() => _MainPage2State();
}

class _MainPage2State extends State<MainPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF9F9F9),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Stack(
            children: [
              SizedBox(
                height: 220,
                width: double.infinity,
                child: FittedBox(
                    fit: BoxFit.cover,
                    child: Image.asset('assets/images/mainGirl.png')),
              ),
              Positioned(
                  bottom: 8,
                  left: 12,
                  child: Text(
                    'Street Clothes',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontFamily: 'metropolis',
                        fontWeight: FontWeight.bold),
                  ))
            ],
          ),
          SizedBox(
            height: 29,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 10,
              ),
              Text(
                'Sale',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 34,
                  fontFamily: 'metropolis',
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                width: 232,
              ),
              Text('View All')
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 10,
              ),
              Text(
                'Super summer sale',
                style: TextStyle(color: Colors.grey, fontSize: 11),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: 900,
            height: 280,
            child: ListView(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              children: [
                SizedBox(
                  width: 3,
                ),
                Stack(children: [
                  Container(
                    height: 216,
                    width: 170,
                    child: Image.asset('assets/images/Dresss.png'),
                  ),
                  Positioned(
                    left: 10,
                    top: 35,
                    child: SizedBox(
                      height: 20,
                      width: 50,
                      child: ClipRRect(
                        // borderRadius: BorderRadius.circular(12.0),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25.0)),
                                primary: Color(0XFFDB3022)),
                            onPressed: () {},
                            child: Text(
                              '-20%',
                              style: TextStyle(
                                  fontFamily: 'metropolis',
                                  fontSize: 7,
                                  fontWeight: FontWeight.bold),
                            )),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 60,
                    left: 10,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset('assets/icons/Star.svg'),
                        SizedBox(
                          width: 3,
                        ),
                        SvgPicture.asset('assets/icons/Star.svg'),
                        SizedBox(
                          width: 3,
                        ),
                        SvgPicture.asset('assets/icons/Star.svg'),
                        SizedBox(
                          width: 3,
                        ),
                        SvgPicture.asset('assets/icons/Star.svg'),
                        SizedBox(
                          width: 3,
                        ),
                        SvgPicture.asset('assets/icons/Star.svg'),
                        SizedBox(
                          width: 3,
                        ),
                        Text(
                          '(10)',
                          style: TextStyle(color: Colors.grey, fontSize: 10),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                      bottom: 40,
                      left: 10,
                      child: Text(
                        'Evening Dress',
                        style: TextStyle(
                            fontFamily: 'metropolis',
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      )),
                  Positioned(
                    bottom: 20,
                    left: 10,
                    child: Row(
                      children: [
                        Text(
                          '38\$',
                          style:
                              TextStyle(decoration: TextDecoration.lineThrough),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          '20\$',
                          style: TextStyle(color: Color(0XFFDB3022)),
                        )
                      ],
                    ),
                  )
                ]),
                Stack(children: [
                  Container(
                    height: 216,
                    width: 170,
                    child: Image.asset('assets/images/Dresss.png'),
                  ),
                  Positioned(
                    left: 10,
                    top: 35,
                    child: SizedBox(
                      height: 20,
                      width: 50,
                      child: ClipRRect(
                        // borderRadius: BorderRadius.circular(12.0),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25.0)),
                                primary: Color(0XFFDB3022)),
                            onPressed: () {},
                            child: Text(
                              '-15%',
                              style: TextStyle(
                                  fontFamily: 'metropolis',
                                  fontSize: 7,
                                  fontWeight: FontWeight.bold),
                            )),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 60,
                    left: 10,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset('assets/icons/Star.svg'),
                        SizedBox(
                          width: 3,
                        ),
                        SvgPicture.asset('assets/icons/Star.svg'),
                        SizedBox(
                          width: 3,
                        ),
                        SvgPicture.asset('assets/icons/Star.svg'),
                        SizedBox(
                          width: 3,
                        ),
                        SvgPicture.asset('assets/icons/Star.svg'),
                        SizedBox(
                          width: 3,
                        ),
                        SvgPicture.asset('assets/icons/Star.svg'),
                        SizedBox(
                          width: 3,
                        ),
                        Text(
                          '(10)',
                          style: TextStyle(color: Colors.grey, fontSize: 10),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                      bottom: 40,
                      left: 10,
                      child: Text(
                        'Evening Dress',
                        style: TextStyle(
                            fontFamily: 'metropolis',
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      )),
                  Positioned(
                    bottom: 20,
                    left: 10,
                    child: Row(
                      children: [
                        Text(
                          '599\$',
                          style:
                              TextStyle(decoration: TextDecoration.lineThrough),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          '420\$',
                          style: TextStyle(color: Color(0XFFDB3022)),
                        )
                      ],
                    ),
                  )
                ]),
                Stack(children: [
                  Container(
                    height: 216,
                    width: 170,
                    child: Image.asset('assets/images/Dresss.png'),
                  ),
                  Positioned(
                    left: 10,
                    top: 35,
                    child: SizedBox(
                      height: 20,
                      width: 50,
                      child: ClipRRect(
                        // borderRadius: BorderRadius.circular(12.0),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25.0)),
                                primary: Color(0XFFDB3022)),
                            onPressed: () {},
                            child: Text(
                              '-30%',
                              style: TextStyle(
                                  fontFamily: 'metropolis',
                                  fontSize: 7,
                                  fontWeight: FontWeight.bold),
                            )),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 60,
                    left: 10,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset('assets/icons/Star.svg'),
                        SizedBox(
                          width: 3,
                        ),
                        SvgPicture.asset('assets/icons/Star.svg'),
                        SizedBox(
                          width: 3,
                        ),
                        SvgPicture.asset('assets/icons/Star.svg'),
                        SizedBox(
                          width: 3,
                        ),
                        SvgPicture.asset('assets/icons/Star.svg'),
                        SizedBox(
                          width: 3,
                        ),
                        SvgPicture.asset('assets/icons/Star.svg'),
                        SizedBox(
                          width: 3,
                        ),
                        Text(
                          '(10)',
                          style: TextStyle(color: Colors.grey, fontSize: 10),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                      bottom: 40,
                      left: 10,
                      child: Text(
                        'Evening Dress',
                        style: TextStyle(
                            fontFamily: 'metropolis',
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      )),
                  Positioned(
                    bottom: 20,
                    left: 10,
                    child: Row(
                      children: [
                        Text(
                          '35\$',
                          style:
                              TextStyle(decoration: TextDecoration.lineThrough),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          '18\$',
                          style: TextStyle(color: Color(0XFFDB3022)),
                        )
                      ],
                    ),
                  )
                ])
              ],
            ),
          ),
          SizedBox(
            height: 10,
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
          Positioned(
            bottom: -900,
            child: Container(
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
          ),
        ],
      )),
    );
  }
}
