import 'package:flutter/material.dart';

class UsableTextField extends StatelessWidget {

  UsableTextField({Key? key,required IconData this.icons,required String this.hintText,required bool this.isObsecure}) : super(key: key);
  IconData icons;
  String hintText;
  bool isObsecure;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: TextField(
        obscureText: isObsecure,
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(),
          labelText: hintText,
          fillColor: Colors.orange.shade200,
          filled: true,
          prefixIcon: Icon(icons),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
    );
  }
}
