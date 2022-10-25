import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UsableButton extends StatelessWidget {
   UsableButton({Key? key,required Size this.size,required String this.buttonText}) : super(key: key);
  Size size;
  String buttonText;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width * .75,
      height: size.height * .07,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.blueGrey.shade900,
            Colors.indigo.shade600
          ],
        ),
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.black54,
            offset: Offset(4, 4),
            blurRadius: 10,
            spreadRadius: 1,
          ),
        ],
      ),
      child: Center(
        child: Text(
          buttonText,
          style: GoogleFonts.exo2(
              color: Colors.white70,
              fontWeight: FontWeight.bold,
              fontSize: 25),
        ),
      ),
    );
  }
}
