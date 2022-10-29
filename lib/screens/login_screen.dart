import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:restaurant_seat_booking/reusable_widgets/usable_button.dart';
import 'package:restaurant_seat_booking/reusable_widgets/usable_textfield2.dart';
import 'package:restaurant_seat_booking/screens/main_home_page.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  bool login = true;

  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Container(
            height: size.height,
            width: size.height,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.blue.shade400, Colors.indigo.shade800],
              ),
            ),
          ),
          Align(
            alignment: AlignmentDirectional.topCenter,
            child: SizedBox(
              width: size.width * .6,
              height: size.height * .35,
              child: Lottie.network(
                  'https://assets7.lottiefiles.com/packages/lf20_vkqybeu5/data.json'),
            ),
          ),
          Align(
            alignment: Alignment(-1, -0.85),
            child: Container(
              width: size.width * .17,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  colors: [Colors.blueGrey.shade900, Colors.indigo.shade400],
                ),
              ),
              child: IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: Icon(Icons.arrow_back_ios_new,color: Colors.white,)),
            ),
          ),
          Column(
            children: [
              SizedBox(height: size.height * .3),
              Text(
                login == true ? 'Welcome Back' : 'Register',
                style: TextStyle(fontFamily: 'kalam',
                    color: Colors.white,
                    fontSize: 45,
                    fontWeight: FontWeight.w600),
              ),
              Text(
                login == true
                    ? 'Login to Your account '
                    : 'Create your account',
                style: TextStyle(
                    color: Colors.white70,
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                child: Column(
                  children: [
                    SizedBox(
                      height: size.height * .06,
                    ),
                    UsableTextField2(
                        icons: Icons.phone_android,
                        hintText: 'Phone',
                        isObsecure: false,
                        size: size),
                    SizedBox(
                      height: size.height * .02,
                    ),
                    UsableTextField2(
                        icons: Icons.lock,
                        hintText: 'Password',
                        isObsecure: true,
                        size: size),
                    login != true
                        ? SizedBox(
                            child: Column(
                            children: [
                              SizedBox(
                                height: size.height * .02,
                              ),
                              UsableTextField2(
                                  icons: Icons.person,
                                  hintText: 'UserName',
                                  isObsecure: false,
                                  size: size),
                            ],
                          ))
                        : SizedBox(),
                    SizedBox(
                      height: size.height * .02,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: size.width * .5),
                      child: Text(
                        login == true ? 'Forgot Password?' : '',
                        style: TextStyle(
                            color: Colors.white70,
                            fontSize: 14,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Align(
            alignment: AlignmentDirectional.bottomCenter,
            child: SizedBox(
              height: size.height * .18,
              width: size.width,
              child: Column(
                children: [
                  GestureDetector(
                    child: UsableButton(
                        size: size,
                        buttonText: login == true ? 'LOGIN' : 'REGISTER'),
                    onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MainHomePage(),)),
                  ),
                  SizedBox(
                    height: size.height * .035,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        login == true
                            ? 'Don\'t have an account?  '
                            : 'Already have an account?  ',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.white70,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 1),
                      ),
                      GestureDetector(
                        child: Text(
                          login == true ? 'Sign Up' : 'Login',
                          style: TextStyle(
                              fontSize: 17,
                              color: Colors.white70,
                              fontWeight: FontWeight.w800,
                              letterSpacing: 1,
                              decoration: TextDecoration.underline,
                              decorationStyle: TextDecorationStyle.double),
                        ),
                        onTap: () {
                          setState(() {
                            login = !login;
                          });
                          print(login);
                        },
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
