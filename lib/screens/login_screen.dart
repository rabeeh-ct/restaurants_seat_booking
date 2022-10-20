import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:restaurant_seat_booking/reusable_widgets/usable_textfield.dart';
import 'package:restaurant_seat_booking/reusable_widgets/usable_textfield2.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.yellow[100],
      body: Stack(
        children: [
          Positioned(
            child: Container(
              height: size.height,
              width: size.height,
              decoration: BoxDecoration(
                  color: Colors.blue,
              ),
            ),
          ),
          Positioned(
            child: Container(
              height: size.width*4,
              width: size.width*4,
              decoration: BoxDecoration(
                  color: Colors.yellow[100],
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(500))
              ),
            ),
          ),
          Positioned(
            child: Container(
              height: size.width*.8,
              width: size.width*.8,
              decoration: BoxDecoration(
                color: Colors.red[400],
                borderRadius: BorderRadius.only(bottomRight: Radius.circular(500))
              ),
            ),
          ),

          Column(
            children: [
              Expanded(
                flex: 3,
                child: Column(
                  children: [
                    Expanded(
                      flex: 5,child: Lottie.network(
                          'https://assets9.lottiefiles.com/packages/lf20_ovwsvehd.json'),
                    ),
                    Expanded(flex: 1,child: Text('Welcome Back'))
                  ],
                ),
              ),
              Expanded(
                flex: 4,
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      color: Colors.green[100],
                      child: Column(
                        children: [
                          UsableTextField2(
                              icons: Icons.person,
                              hintText: 'Username',
                              isObsecure: false),
                          UsableTextField2(
                              icons: Icons.lock,
                              hintText: 'Password',
                              isObsecure: true),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
