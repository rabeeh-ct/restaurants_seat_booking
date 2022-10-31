// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:restaurant_seat_booking/constants/constants.dart';
import 'package:restaurant_seat_booking/models/hotel_model.dart';
import 'package:restaurant_seat_booking/reusable_widgets/restaurent_list.dart';
import 'package:restaurant_seat_booking/reusable_widgets/reusable%20backbutton.dart';
import 'package:restaurant_seat_booking/reusable_widgets/search_field.dart';
import 'package:restaurant_seat_booking/screens/home_page.dart';
import 'package:restaurant_seat_booking/screens/seat_selecting_screen.dart';
import 'package:searchfield/searchfield.dart';

import '../temp_screen.dart';

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
      backgroundColor: Colors.grey[100],
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: ReusableBackButton()
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
          SizedBox(
            height: size.height * .015,
          ),
          Expanded(
            child: MediaQuery.removePadding(
              context: context,
              removeTop: true,
              child: ListView.builder(
                  itemBuilder: (context, index) {
                    fn();
                    return GestureDetector(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SeatSelectingScreen(
                              hotelName: hName[index][0],
                              rating: hName[index][1],
                              location: hName[index][2],
                              foods: hName[index][3],
                              hotelimage: hName[index][4],
                            ),
                          )),
                      child: RestaurentList(
                        size: size,
                        hotelName: hName[index][0],
                        rating: hName[index][1],
                        location: hName[index][2],
                        foods: hName[index][3],
                        hotelimage: hName[index][4],
                      ),
                    );
                  },
                  itemCount: Constants.res.length),
            ),
          ),
        ],
      ),
    );
  }

  var temp;
  var foodName;

  fn() {
    hName = Constants.res.map((e) {
      foodName = e.foodList.map((e) => e.foodName).toList();
      temp = [e.hotelName, e.hotelRating, e.location, foodName, e.hotelImage];
      return temp;
    }).toList();
  }
}
