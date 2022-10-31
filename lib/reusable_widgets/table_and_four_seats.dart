import 'dart:math';

import 'package:flutter/material.dart';
import 'package:restaurant_seat_booking/reusable_widgets/seat.dart';

class TableAndFourSeats extends StatefulWidget {
  TableAndFourSeats({Key? key, required this.tableNumber}) : super(key: key);
  String tableNumber;

  @override
  State<TableAndFourSeats> createState() => _TableAndFourSeatsState();
}

class _TableAndFourSeatsState extends State<TableAndFourSeats> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                SizedBox(
                  height: 13,
                ),
                Seat(),
                SizedBox(
                  height: 16,
                ),
                Seat()
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 11.0, bottom: 10, left: 11, right: 11),
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
                width: 75,
                height: 120,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  height: 13,
                ),
                Seat(),
                SizedBox(
                  height: 16,
                ),
                Seat()
              ],
            ),
          ],
        ),
      ),
    );
  }
}
