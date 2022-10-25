import 'package:flutter/material.dart';

class UsableTextField2 extends StatelessWidget {
  UsableTextField2(
      {Key? key,
      required IconData this.icons,
      required String this.hintText,
      required bool this.isObsecure,
      required Size this.size})
      : super(key: key);
  IconData icons;
  String hintText;
  bool isObsecure;
  Color secondColor = Colors.indigo;
  Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Container(height: size.height*.077,
        child: Center(
          child: TextField(
            obscureText: isObsecure,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: hintText,
              hintStyle: TextStyle(color: secondColor),
              prefixIcon: Icon(icons, color: secondColor),
            ),
          ),
        ),
        decoration: BoxDecoration(

          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(colors: [Colors.white70,Colors.white12])
          // boxShadow: [
          //   BoxShadow(
          //     color: Colors.black54,
          //     offset: Offset(4, 4),
          //     blurRadius: 10,
          //     spreadRadius: 1,
          //   ),
          // ],
        ),
      ),
    );
  }
}
