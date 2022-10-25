import 'package:flutter/cupertino.dart';
import 'package:restaurant_seat_booking/models/food_model.dart';

class HotelModel {
  final String hotelName;
  final int hotelid;
  final String hotelImage;
  final double hotelRating;
  final List<FoodModel> foodList;
  final String location;

  HotelModel(
      {required this.hotelid,
      required this.hotelName,
      required this.hotelImage,
        required this.location,
      required this.hotelRating,
      required this.foodList});
}
