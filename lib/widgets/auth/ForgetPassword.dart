import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  State<ForgetPassword> createState() => ForgetPasswordState();
}

class ForgetPasswordState extends State<ForgetPassword> {
  TextEditingController EmailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(''),
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back_ios_new_sharp,
              color: Colors.black,
            )),
      ),
      body: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 34,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 14),
            child: Text('Forget Password',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Color(0XFF222222),
                    fontSize: 34,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'metropolis')),
          ),
          SizedBox(
            height: 87,
          ),
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Text(
                'Please, enter your email address. You will receive a link to create a new password via email.',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Color(0XFF222222),
                    fontSize: 14,
                    fontFamily: 'metropolis')),
          ),
          SizedBox(
            height: 16,
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
          SizedBox(
            height: 70,
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
                      'SEND',
                      style: TextStyle(
                          fontFamily: 'metropolis',
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    )),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
