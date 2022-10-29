import 'package:flutter/material.dart';

class Seat extends StatefulWidget {
   Seat({Key? key}) : super(key: key);

  @override
  State<Seat> createState() => _SeatState();
}

class _SeatState extends State<Seat> {
  bool flag=false;

  @override
  Widget build(BuildContext context) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 11.0),
        child: InkWell(onTap: () => setState(() {
          flag=!flag;
        }),
          child: Icon(
            Icons.chair,
            size: 30,
            color: flag==false?Colors.grey[700]:Colors.green.shade600,
          ),
        ),
      );
  }
}
