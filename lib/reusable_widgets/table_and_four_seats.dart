import 'dart:math';

import 'package:flutter/material.dart';
import 'package:restaurant_seat_booking/reusable_widgets/seat.dart';

class TableAndFourSeats extends StatefulWidget {
  TableAndFourSeats({Key? key, required this.tableNumber,required this.reset}) : super(key: key);
  String tableNumber;
Function? reset;
  @override
  State<TableAndFourSeats> createState() => _TableAndFourSeatsState();
}

class _TableAndFourSeatsState extends State<TableAndFourSeats> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding:  EdgeInsets.all(size.width/49.0909091),
      child: SizedBox(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                SizedBox(
                  height: size.height/61.7622378,
                ),
                Seat(reset: widget.reset,),
                SizedBox(
                  height: size.height/50.1818182,
                ),
                Seat(reset: widget.reset,)
              ],
            ),
            Padding(
              padding:  EdgeInsets.only(
                  top: size.height/72.9917355, bottom: size.height/80.2909091, left: size.width/35.7024793, right: size.width/35.7024793),
              child: Container(
                child: Center(child: Text(widget.tableNumber)),
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
                  ],
                ),
                width: size.width/5.23636364,
                height: size.height/6.69090909,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  height:size.height/61.7622378,
                ),
                Seat(reset: widget.reset,),
                SizedBox(
                  height: size.height/50.1818182,
                ),
                Seat(reset: widget.reset,)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
