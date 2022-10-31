import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:restaurant_seat_booking/constants/constants.dart';
import 'package:restaurant_seat_booking/reusable_widgets/reusable%20backbutton.dart';
import 'package:restaurant_seat_booking/reusable_widgets/table_and_four_seats.dart';
import 'package:restaurant_seat_booking/reusable_widgets/table_and_six_seats.dart';
import 'package:restaurant_seat_booking/screens/food_selecting_screen.dart';
import 'package:restaurant_seat_booking/screens/home_page.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SeatSelectingScreen extends StatefulWidget {
  SeatSelectingScreen({
    Key? key,
    required String this.hotelName,
    required String this.location,
    required double this.rating,
    required this.foods,
    required String this.hotelimage,
  }) : super(key: key);
  String hotelName;
  double rating;
  String location;
  var foods;
  String hotelimage;

  @override
  State<SeatSelectingScreen> createState() => _SeatSelectingScreenState();
}

class _SeatSelectingScreenState extends State<SeatSelectingScreen> {
  PageController _pgController = PageController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
        title: Text(
          widget.hotelName.toUpperCase(),
          style: const TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      body: Stack(
        children: [
          PageView(
            controller: _pgController,
            children: [
              Column(
                children: [
                  Container(
                    height: size.height * .4,
                    width: size.width,
                    // color: Colors.blue,
                    child: Stack(
                      children: [
                        Hero(
                          tag: widget.hotelName,
                          child: Image.asset(
                            widget.hotelimage,
                            width: size.width,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: RatingBarIndicator(
                              rating: widget.rating,
                              itemBuilder: (context, index) => const Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              itemCount: 5,
                              itemSize: 15.0,
                              direction: Axis.horizontal,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: size.height * .43),
                  Container(
                    child: Text('Swipe Left',
                        style: TextStyle(fontWeight: FontWeight.w500)),
                  )
                ],
              ),
              Container(
                color: Colors.grey[200],
                height: size.height,
                width: double.infinity,
                child: Stack(
                  children: [
                    Positioned(
                      top: size.height * .015,
                      left: size.width * .09,
                      child: TableAndFourSeats(tableNumber: '101'),
                    ),
                    Positioned(
                      top: size.height * .015,
                      right: size.width * .08,
                      child: TableAndFourSeats(tableNumber: '102'),
                    ),
                    Positioned(
                      bottom: size.height * .35,
                      right: size.width * .3,
                      child: TableAndSixSeats(tableNumber: '103'),
                    ),
                    Positioned(
                      bottom: size.height * .08,
                      left: size.width * .09,
                      child: TableAndFourSeats(tableNumber: '104'),
                    ),
                    Positioned(
                      bottom: size.height * .08,
                      right: size.width * .08,
                      child: TableAndFourSeats(tableNumber: '105'),
                    ),
                  ],
                ),
              )
            ],
          ),
          Container(
            alignment: Alignment(0, 0.9),
            child: SmoothPageIndicator(
              controller: _pgController,
              count: 2,
            ),
          ),
          Container(
            alignment: Alignment(0.9, 0.94),
            child: Container(
              width: 50,
              height: 25,
              decoration: BoxDecoration(
                  color: Colors.blue[200],
                  borderRadius: BorderRadius.circular(4),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black54,
                      offset: Offset(4, 4),
                      blurRadius: 8,
                      spreadRadius: 1,
                    ),
                  ]),
              child: Center(
                child: GestureDetector(onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => FoodSelectingScreen(),)),
                  child: Text(
                    'NEXT',
                    style: TextStyle(fontWeight: FontWeight.w400),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
