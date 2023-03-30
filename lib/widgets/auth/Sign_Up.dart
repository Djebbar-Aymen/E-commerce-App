import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/widgets/auth/Login.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Sign_Up extends StatefulWidget {
  const Sign_Up({Key? key}) : super(key: key);

  @override
  State<Sign_Up> createState() => _Sign_UpState();
}

class _Sign_UpState extends State<Sign_Up> {
  @override
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController EmailController = TextEditingController();
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffF9F9F9),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Text(''),
          leading: Icon(
            Icons.arrow_back_ios_new_sharp,
            color: Colors.black,
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 34,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 14),
                child: Text('Sign Up',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Color(0XFF222222),
                        fontSize: 34,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'metropolis')),
              ),
              SizedBox(
                height: 40,
                width: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: SizedBox(
                  height: 64,
                  child: TextField(
                      controller: nameController,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey)),
                          labelText: 'User Name',
                          labelStyle: TextStyle(color: Colors.grey))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: SizedBox(
                  height: 64,
                  child: TextField(
                      style: TextStyle(),
                      controller: EmailController,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Email',
                          labelStyle: TextStyle(color: Colors.grey))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 16, left: 16),
                child: SizedBox(
                  height: 64,
                  child: TextField(
                      controller: passwordController,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Password',
                          labelStyle: TextStyle(color: Colors.grey))),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Padding(
                  padding: const EdgeInsets.only(left: 176),
                  child: Row(
                    children: [
                      Text(
                        'Already have an account?',
                        style:
                            TextStyle(fontFamily: 'metropolis', fontSize: 14),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Login()),
                            );
                          },
                          child: SvgPicture.asset(
                            'assets/icons/Vector.svg',
                            color: Colors.red,
                          ))
                    ],
                  )),
              SizedBox(
                height: 28,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: SizedBox(
                  height: 48,
                  width: double.infinity,
                  child: ClipRRect(
                    // borderRadius: BorderRadius.circular(12.0),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25.0)),
                            primary: Color(0XFFDB3022)),
                        onPressed: () {},
                        child: Text(
                          'SIGN UP',
                          style: TextStyle(
                              fontFamily: 'metropolis',
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        )),
                  ),
                ),
              ),
              SizedBox(height: 150),
              Center(child: Text('or sign up with social account')),
              SizedBox(
                height: 21,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                      height: 75,
                      width: 55,
                      child: Center(
                          child: SvgPicture.asset(
                        'assets/icons/Google.svg',
                      ))),
                  Container(
                      height: 75,
                      width: 55,
                      child: Center(
                          child: SvgPicture.asset(
                        'assets/icons/Facebook.svg',
                      ))),
                ],
              ),
            ],
          ),
        ));
  }
}
