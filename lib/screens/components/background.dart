import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;

  const Background({
    Key? key,
    required this.child,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: [
          AnimatedPositioned(
            duration: Duration(milliseconds: 500),

            top: size.width * .1,
            left: 0,
            child: Image.asset('assets/images/food_top.png'),
            width: size.width * 0.6,
          ),
          Positioned(
            right: 0,
            bottom: 0,
            child: Image.asset('assets/images/food_bottom.png'),
            width: size.width * .7,
          ),
          Positioned(
              top: size.width*.4,
              right: -size.width*.2,
              child: Image.asset(
                'assets/images/food_center.png',
                height: size.height * .2,
              )),
          child,
        ],
      ),
    );
  }
}
