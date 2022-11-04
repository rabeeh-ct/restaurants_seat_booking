// ignore_for_file: prefer_const_constructors

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:restaurant_seat_booking/screens/hotel_sign_in_screen.dart';
import 'package:restaurant_seat_booking/screens/login_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final theimage=Image.asset('assets/images/food_main.jpg');
  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    precacheImage(theimage.image,context);
    super.didChangeDependencies();
  }
  List texts=['Hungry...','Hungry...'];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.orange.shade100,
      body: Container(
        width: size.width,
        height: size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fitHeight,
            image: theimage.image
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: size.height * .3,
            ),
            Padding(
              padding: EdgeInsets.only(left: size.width * .3),
              child: Text(
                'Are You',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
            SizedBox(width: double.infinity,
              height: size.height*.0675,
              child: Center(
                child: AnimatedTextKit(
                  animatedTexts: [
                    for (final txt in texts)
                      RotateAnimatedText(
                        txt,
                        textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: size.height*.06,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.start,
                      ),
                  ],
                  repeatForever: true,
                ),
              ),
            ),
            SizedBox(
              height: size.height * .083,
            ),
            Center(
              child: GestureDetector(
                onTap: () {
                  print('${size.width} width,${size.height} height');
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginScreen(),
                      ));
                },
                child: Container(
                  width: size.width * .75,
                  height: size.height * .07,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.green.shade800,
                        Colors.yellow,
                      ],
                    ),
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black54,
                        offset: Offset(4, 4),
                        blurRadius: 10,
                        spreadRadius: 1,
                      ),
                    ],
                  ),
                  child: Center(
                    child: Text(
                      'Food Booking',
                      style: GoogleFonts.exo2(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 25),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: size.height * .4,
            ),
            Center(
              child: GestureDetector(
                onTap: () {},
                child: GestureDetector(
                  child: Text(
                    'for Hotel Registration',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w500),
                  ),
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HotelSignInScreen(),
                      )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
