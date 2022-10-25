// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:restaurant_seat_booking/constants/constants.dart';
import 'package:restaurant_seat_booking/models/hotel_model.dart';
import 'package:restaurant_seat_booking/reusable_widgets/restaurent_list.dart';
import 'package:restaurant_seat_booking/reusable_widgets/search_field.dart';
import 'package:restaurant_seat_booking/screens/home_page.dart';
import 'package:searchfield/searchfield.dart';

class MainHomePage extends StatefulWidget {
  const MainHomePage({Key? key}) : super(key: key);

  @override
  State<MainHomePage> createState() => _MainHomePageState();
}

class _MainHomePageState extends State<MainHomePage> {
  @override
  var hName;

  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Container(
            width: size.width,
            height: size.height,
            decoration: BoxDecoration(),
          ),
          Align(
            alignment: Alignment(-0.96, -0.9),
            child: Container(
              width: size.width * .1,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  colors: [Colors.blueGrey.shade900, Colors.indigo.shade400],
                ),
              ),
              child: IconButton(
                onPressed: () => Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomePage(),
                    )),
                icon: Icon(
                  Icons.arrow_back_ios_new,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: size.height * .1,
              ),
              Container(
                height: size.height * .08,
                width: size.width,
                color: Colors.indigo,
              ),
              Padding(
                padding: EdgeInsets.only(left: size.width * .06),
                child: Text(
                  'Find the best Restaurent in \nyour city',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                ),
              ),
              Container(
                child: Padding(
                  padding: EdgeInsets.only(
                      left: size.width * .06,
                      right: size.width * .06,
                      top: size.width * .04,
                      bottom: size.width * .04),
                  child: RestaurentSearchField(),
                ),
              ),
              Center(
                child: Text(
                  'TOP PICKS',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(height: size.height*.01,),
              Expanded(
                child: MediaQuery.removePadding(
                  context: context,
                  removeTop: true,
                  child: ListView.separated(
                      itemBuilder: (context, index) {
                        fn();
                        return RestaurentList(
                          size: size,
                          hotelName: hName[index][0],
                          rating: hName[index][1],
                          location: hName[index][2],
                          foods: hName[index][3],
                          hotelimage: hName[index][4],
                        );
                      },
                      separatorBuilder: (context, index) {
                        return Divider();
                      },
                      itemCount: Constants.res.length),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  var temp;
  var foodName;

  fn() {
    hName = Constants.res.map((e) {
      print('-------');
      foodName=e.foodList.map((e) => e.foodName);
      temp = [e.hotelName, e.hotelRating, e.location, foodName,e.hotelImage];
      print(foodName);
      return temp;
    }).toList();
  }
}
