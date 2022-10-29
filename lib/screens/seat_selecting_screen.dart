import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:restaurant_seat_booking/reusable_widgets/reusable%20backbutton.dart';
import 'package:restaurant_seat_booking/reusable_widgets/table_and_four_seats.dart';
import 'package:restaurant_seat_booking/reusable_widgets/table_and_six_seats.dart';

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
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(backgroundColor: Colors.grey[100],
      appBar: AppBar(
        leading: ReusableBackButton(),
        elevation: 0,
        title: Text(
          widget.hotelName.toUpperCase(),
          style: const TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      body: SizedBox(width: double.infinity,height: double.infinity,
        child: ListView(
          children: [
            Container(
              height: size.height * .6,
              width: size.width,
              // color: Colors.blue,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: size.height * .4,
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
                ],
              ),
            ),
            Container(
              height: size.height*.6,
              width: double.infinity,
              child: Stack(
                children: [
                  Positioned(
                    top: size.height * .01,
                    left: 1,
                    child: TableAndFourSeats(),
                  ),
                  Positioned(
                    bottom: size.height * .01,
                    child: TableAndFourSeats(),
                  ),
                  // Positioned(
                  //   bottom: size.height * .159,
                  //   left: 1,
                  //   child: TableAndFourSeats(),
                  // ),
                  Positioned(
                    top: size.height * .06,
                    left: size.width * .5,
                    child: Transform.rotate(
                        angle: pi / 2, child: TableAndSixSeats()),
                  ),
                  Positioned(
                    top: size.height * .3,
                    left: size.width * .55,
                    child: Transform.rotate(
                      angle: pi / 2,
                      child: TableAndSixSeats(),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
