import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Filter extends StatefulWidget {
  const Filter({Key? key}) : super(key: key);

  @override
  State<Filter> createState() => FilterState();
}

class FilterState extends State<Filter> {
  RangeValues currentRangeValues = const RangeValues(50, 150);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Filters',
          style: TextStyle(
              fontSize: 14, fontFamily: 'metropolis', color: Color(0XFF222222)),
        ),
        leading: Icon(Icons.arrow_back_ios_new_sharp, color: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(
            height: 10,
          ),
          Text(
            'Price Range',
            style: TextStyle(
                color: Color(0XFF222222),
                fontFamily: 'metropolis',
                fontSize: 16,
                fontWeight: FontWeight.bold),
          ),
          RangeSlider(
              activeColor: Color(0XFFDB3022),
              inactiveColor: Colors.grey,
              values: currentRangeValues,
              max: 250,
              divisions: 250,
              labels: RangeLabels(
                currentRangeValues.start.round().toString(),
                currentRangeValues.end.round().toString(),
              ),
              onChanged: (RangeValues values) {
                setState(() {
                  currentRangeValues = values;
                });
              })
        ]),
      ),
    );
  }
}
