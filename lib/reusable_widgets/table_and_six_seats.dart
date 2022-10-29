import 'dart:math';

import 'package:flutter/material.dart';
import 'package:restaurant_seat_booking/reusable_widgets/seat.dart';

class TableAndSixSeats extends StatelessWidget {
  const TableAndSixSeats({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child:Transform.rotate(angle: pi/2,
        child: SizedBox(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [Seat(), Seat(),Seat()],
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.grey[700],
                ),
                width: size.width * .405,
                height: size.height * .07,
              ),
              Transform.rotate(
                angle: pi,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [Seat(), Seat(),Seat()],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
