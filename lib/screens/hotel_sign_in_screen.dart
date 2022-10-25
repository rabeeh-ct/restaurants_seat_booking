// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:restaurant_seat_booking/reusable_widgets/usable_textfield.dart';
import 'package:restaurant_seat_booking/screens/hotel_sign_up_screen.dart';
import '../reusable_widgets/usable_textfield2.dart';
import 'components/background.dart';

class HotelSignInScreen extends StatelessWidget {
  const HotelSignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(backgroundColor: Colors.orange.shade100,
      resizeToAvoidBottomInset: false,
      body: Background(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: size.height * .3,
            ),
            Text(
              'SIGN IN',
              style: TextStyle(
                letterSpacing: 5,
                color: Colors.grey.shade700,
                fontSize: size.width * .100,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: size.height * .04,
            ),
            UsableTextField(
                icons: Icons.person, hintText: 'Username', isObsecure: false),
            SizedBox(
              height: size.height * .03,
            ),
            UsableTextField(
                icons: Icons.lock, hintText: 'Password', isObsecure: true),
            SizedBox(
              height: size.height * .03,
            ),
            ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                  MaterialStatePropertyAll(Colors.orange.shade200),
                ),
                onPressed: () {},
                child: Text(
                  'SIGN IN',
                  style: TextStyle(color: Colors.black),
                )),
            SizedBox(height: size.height * .02,),
            Container(
                width: size.width-10,
                child: Column(mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Already a Member...!', textAlign: TextAlign.start,style: TextStyle(fontSize: 20)),
                    Padding(
                      padding: const EdgeInsets.only(left: 100),
                      child: GestureDetector(onTap: () {
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                          return HotelSignUpScreen();
                        },));
                      },child: Text('Sign Up', textAlign: TextAlign.start,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.red))),
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
