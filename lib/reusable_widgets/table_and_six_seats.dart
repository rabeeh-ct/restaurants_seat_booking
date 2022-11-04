import 'dart:math';

import 'package:flutter/material.dart';
import 'package:restaurant_seat_booking/reusable_widgets/seat.dart';

class TableAndSixSeats extends StatelessWidget {
  String tableNumber;

   TableAndSixSeats({Key? key,required this.tableNumber,required this.reset}) : super(key: key);
  Function? reset;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Transform.rotate(
            angle: pi * .5,
            child: Seat(reset: reset,),
          ),
          Row(
            children: [
              Column(children: [
                Seat(reset: reset,),
                SizedBox(
                  height: size.height/50.1818181,
                ),
                Seat(reset: reset,),
              ]),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: size.width/35.7024793),
                child: Container(
                  child: Center(child: Text(tableNumber)),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black38,
                        offset: Offset(4, 4),
                        blurRadius: 5,
                        spreadRadius: 1,
                      ),
                      // BoxShadow(
                      //   color: Colors.white,
                      //   offset: Offset(-4, -4),
                      //   blurRadius: 10,
                      //   spreadRadius: 1,
                      // ),
                    ],
                  ),
                  width: size.width/3.92727273,
                  height: size.height/6.69090908,
                ),
              ),
              Column(children: [
                Seat(reset: reset,),
                SizedBox(
                  height: 16,
                ),
                Seat(reset: reset,),
              ]),
            ],
          ),
          Transform.rotate(
            angle: pi * .5,
            child: Seat(reset: reset,),
          ),
        ],
      ),
    );
  }
}
