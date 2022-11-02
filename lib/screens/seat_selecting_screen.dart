// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

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
  List foods;
  String hotelimage;

  @override
  State<SeatSelectingScreen> createState() => _SeatSelectingScreenState();
}

class _SeatSelectingScreenState extends State<SeatSelectingScreen> {
  PageController _pgController = PageController();
refresh(){
  setState(() {

  });
}
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          widget.hotelName.toUpperCase(),
          style: const TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey[200],
      ),
      body: Stack(
        children: [
          PageView(
            controller: _pgController,
            children: [
              //first page, Hotel details page
              Column(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            Hero(
                              tag: widget.hotelName,
                              child: Image.asset(
                                widget.hotelimage,
                                width: size.width,
                                fit: BoxFit.cover,
                              ),
                            ),
                            //rating star
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
                        //hotel description
                      ],
                    ),
                  ),
                  Container(
                    height: 40,
                    child: Center(
                      child: Text(
                        'Swipe Left to seat book',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: 'AmiriQuran',
                            fontSize: 15),
                      ),
                    ),
                  )
                ],
              ),
              //second page, Seat selecting page
              Container(
                color: Colors.grey[200],
                height: size.height,
                width: double.infinity,
                child: Stack(
                  children: [
                    Positioned(
                      top: size.height * .015,
                      left: size.width * .09,
                      child: TableAndFourSeats(tableNumber: '101',reset: refresh),
                    ),
                    Positioned(
                      top: size.height * .015,
                      right: size.width * .08,
                      child: TableAndFourSeats(tableNumber: '102',reset: refresh),
                    ),
                    Positioned(
                      bottom: size.height * .35,
                      right: size.width * .3,
                      child: TableAndSixSeats(tableNumber: '103',reset: refresh),
                    ),
                    Positioned(
                      bottom: size.height * .08,
                      left: size.width * .09,
                      child: TableAndFourSeats(tableNumber: '104',reset: refresh),
                    ),
                    Positioned(
                      bottom: size.height * .08,
                      right: size.width * .08,
                      child: TableAndFourSeats(tableNumber: '105',reset: refresh),
                    ),
                    Positioned(
                      bottom: size.height * .03,
                      right: size.width * .05,
                      child: Container(
                        alignment: Alignment.bottomRight,
                        decoration:
                            BoxDecoration(shape: BoxShape.circle, boxShadow: [
                          BoxShadow(
                            color: Colors.black54,
                            offset: Offset(4, 4),
                            blurRadius: 8,
                            spreadRadius: 1,
                          ),
                        ]),
                        child: CircleAvatar(
                          backgroundColor:Constants.seatCounter > 0? Colors.yellow[400]:Colors.white,
                          child: IconButton(
                            icon:
                                Icon(Icons.navigate_next, color: Colors.black),
                            onPressed: () {
                              final snakebar = SnackBar(
                                  duration: Duration(milliseconds: 1000),
                                  content: Text('Please select seats'));
                              (Constants.seatCounter > 0)
                                  ? Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            FoodSelectingScreen(
                                                foods: widget.foods),
                                      ),
                                    )
                                  : ScaffoldMessenger.of(context)
                                      .showSnackBar(snakebar);
                            },
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          Container(
            alignment: Alignment(0, 0.9),
            child: SmoothPageIndicator(
              effect: SlideEffect(
                activeDotColor: Colors.yellow[600]!,
                dotWidth: 12,
                dotHeight: 12,
              ),
              controller: _pgController,
              count: 2,
            ),
          ),
        ],
      ),
    );
  }
}
