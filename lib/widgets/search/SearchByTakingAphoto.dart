import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/widgets/search/Searching.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchByTakingAphoto extends StatefulWidget {
  const SearchByTakingAphoto({Key? key}) : super(key: key);

  @override
  State<SearchByTakingAphoto> createState() => SearchByTakingAphotoState();
}

class SearchByTakingAphotoState extends State<SearchByTakingAphoto> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFFFFFFFF),
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          leading: Icon(
            Icons.arrow_back_ios_new_sharp,
            color: Colors.black,
          ),
          title: Text('Visual Search',
              style: TextStyle(
                  color: Color(0XFF222222),
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'metropolis')),
          backgroundColor: Colors.transparent,
        ),
        body: Container(
            constraints: BoxConstraints.expand(),
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/Dress.png"),
                  fit: BoxFit.cover),
            )),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                icon: Container(
                    height: 45,
                    width: 28,
                    child: Center(
                        child: SvgPicture.asset(
                      'assets/icons/lit.svg',
                    ))),
                label: ''),
            BottomNavigationBarItem(
              icon: Container(
                  height: 52,
                  width: 52,
                  child: Center(
                      child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Searching()),
                            );
                          },
                          child: SvgPicture.asset(
                            'assets/icons/Big.svg',
                          )))),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Container(
                  height: 45,
                  width: 28,
                  child: Center(
                      child: SvgPicture.asset(
                    'assets/icons/2Vector.svg',
                  ))),
              label: '',
            )
          ],
        ));

    ;
  }
}
