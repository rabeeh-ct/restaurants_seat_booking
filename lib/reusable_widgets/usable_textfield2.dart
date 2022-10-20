import 'package:flutter/material.dart';

class UsableTextField2 extends StatelessWidget {
  UsableTextField2(
      {Key? key,
      required IconData this.icons,
      required String this.hintText,
      required bool this.isObsecure})
      : super(key: key);
  IconData icons;
  String hintText;
  bool isObsecure;
  Color secondColor = Colors.black54;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15,right: 15,top: 15),
      child: Container(
        child: TextField(
          obscureText: isObsecure,
          decoration: InputDecoration(
            border: InputBorder.none,
            labelText: hintText,
            labelStyle: TextStyle(color: secondColor),
            prefixIcon: Icon(icons, color: secondColor),
          ),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.yellow[100],
          boxShadow: [
            BoxShadow(
              color: Colors.black54,
              offset: Offset(4, 4),
              blurRadius: 10,
              spreadRadius: 1,
            ),
          ],
        ),
      ),
    );
  }
}
