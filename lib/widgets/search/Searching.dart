import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/widgets/main_pages/MainPage3.dart';
import 'package:flutter_ecommerce/widgets/main_pages/mainpage.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Searching extends StatefulWidget {
  const Searching({Key? key}) : super(key: key);

  @override
  State<Searching> createState() => SearchingState();
}

class SearchingState extends State<Searching> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF9F9F9),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(''),
      ),
      body: Center(
          child: Column(
        children: [
          SizedBox(
            height: 200,
          ),
          SvgPicture.asset('assets/icons/Search.svg'),
          SizedBox(
            height: 25,
          ),
          Text(
            'Finding similar results...',
            style: TextStyle(
                color: Color(0XFF222222),
                fontSize: 34,
                fontWeight: FontWeight.bold,
                fontFamily: 'metropolis'),
          ),
          SizedBox(height: 30),
          GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MainPage()),
                );
              },
              child: Text('lesss go to main')),
          SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MainPage3()),
              );
            },
            child: Text('Less gooo main 3'),
          )
        ],
      )),
    );
  }
}
