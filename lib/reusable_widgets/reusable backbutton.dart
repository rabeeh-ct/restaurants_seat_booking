import 'package:flutter/material.dart';

import '../screens/home_page.dart';

class ReusableBackButton extends StatelessWidget {
  const ReusableBackButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.grey[300],
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              spreadRadius: 1,
              blurRadius: 10.0,
              offset: Offset(4, 4),
            ),
            BoxShadow(
              color: Colors.white,
              spreadRadius: 1,
              blurRadius: 15.0,
              offset: Offset(-4, -4),
            ),
          ],
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.grey[700] as Color,
                Colors.grey[600] as Color,
                Colors.grey[500] as Color,
                Colors.grey[200] as Color,
              ],
              stops: const[
                0,
                0.1,
                0.3,
                1
              ]),
        ),
        child: Center(
          child: IconButton(
            onPressed: () => Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => HomePage(),
                )),
            icon: const Icon(
              Icons.arrow_back_ios_new,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
