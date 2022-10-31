import 'package:flutter/material.dart';
import 'package:restaurant_seat_booking/constants/constants.dart';

class Seat extends StatefulWidget {
  Seat({Key? key}) : super(key: key);

  @override
  State<Seat> createState() => _SeatState();
}

class _SeatState extends State<Seat> {
  bool flag = true;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => setState(() {
        flag = !flag;
        Constants.Counter++;
      }),
      child: Container(
          width: 10,
          height: 50,
          decoration: BoxDecoration(
            color:flag? Colors.white:Colors.yellow,
            borderRadius: BorderRadius.circular(3),
            boxShadow: [
              BoxShadow(
                color: Colors.black54,
                offset: Offset(4, 4),
                blurRadius: 10,
                spreadRadius: 1,
              ),
            ],
          ),)
    );
  }
}
