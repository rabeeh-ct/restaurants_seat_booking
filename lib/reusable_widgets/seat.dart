import 'package:flutter/material.dart';
import 'package:restaurant_seat_booking/constants/constants.dart';

class Seat extends StatefulWidget {
  Seat({Key? key,required this.reset }) : super(key: key);
Function? reset;
  @override
  State<Seat> createState() => _SeatState();
}

class _SeatState extends State<Seat> {
  bool _isSeatSelect = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => setState(() {
        _isSeatSelect = !_isSeatSelect;
        _isSeatSelect==true?Constants.seatCounter++:Constants.seatCounter--;
widget.reset!();
        print(Constants.seatCounter);
      }),
      child: Container(
          width: 10,
          height: 50,
          decoration: BoxDecoration(
            color:_isSeatSelect? Colors.yellow:Colors.white,
            borderRadius: BorderRadius.circular(3),
            boxShadow: const[
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
