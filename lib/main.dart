import 'package:flutter/material.dart';
import 'package:restaurant_seat_booking/screens/home_page.dart';
import 'package:restaurant_seat_booking/screens/login_screen.dart';
import 'package:restaurant_seat_booking/screens/main_home_page.dart';
import 'package:restaurant_seat_booking/screens/signUpScreen.dart';
import 'package:restaurant_seat_booking/screens/sign_in_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoginScreen(),
    );
  }
}
