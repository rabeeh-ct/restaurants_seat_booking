import 'package:flutter/cupertino.dart';
import 'package:restaurant_seat_booking/models/food_model.dart';

import '../models/hotel_model.dart';

class Constants {
  static List<HotelModel> res = [
    HotelModel(
        hotelid: 101,
        hotelName: 'Sagar',
        hotelRating: 3.5,
        location: 'Kozhikode ',
        hotelImage: 'assets/images/hotel_logos_1.png',
        foodList: [
          FoodModel(
              price: 130,
              description: 'afdtgsf',
              foodid: 1234,
              foodName: 'Biriyani1',
              rating: 9.3),
          FoodModel(
              price: 150,
              description: 'fxgds',
              foodid: 1211,
              foodName: 'mandhi1',
              rating: 8),
          FoodModel(
              price: 60,
              description: 'asasa',
              foodid: 2121,
              foodName: 'meals1',
              rating: 7.8)
        ]),
    HotelModel(
        hotelName: 'mandi hut',
        hotelRating: 4.5,
        location: 'Kozhikod2 ',
        hotelid: 102,
        hotelImage: 'assets/images/hotel_logos_2.png',
        foodList: [
          FoodModel(
              price: 110,
              description: 'asdtgsf',
              foodid: 1111,
              foodName: 'Biriyani2',
              rating: 8.8),
          FoodModel(
              rating: 5.7,
              price: 160,
              description: 'fxcds',
              foodid: 2211,
              foodName: 'mandhi2'),
          FoodModel(
              rating: 3,
              price: 50,
              description: 'asasa',
              foodid: 2323,
              foodName: 'meals2')
        ]),
    HotelModel(
        hotelid: 103,
        hotelName: 'hotel malabar',
        hotelRating: 3,
        location: 'Civil1 ',
        hotelImage: 'assets/images/hotel_logos_3.png',
        foodList: [
          FoodModel(
              rating: 9.3,
              price: 120,
              description: 'dddtgsf',
              foodid: 2222,
              foodName: 'Biriyani3'),
          FoodModel(
              rating: 9.4,
              price: 140,
              description: 'foos',
              foodid: 1122,
              foodName: 'mandhi3'),
          FoodModel(
              rating: 7.8,
              price: 70,
              description: 'asasa',
              foodid: 2244,
              foodName: 'meals3'),
        ]),
    HotelModel(
        hotelid: 104,
        hotelName: 'hotel tanima',
        hotelRating: 3.75,
        location: 'Civil ',
        hotelImage: 'assets/images/hotel_logos_4.png',
        foodList: [
          FoodModel(
              rating: 7.8,
              price: 100,
              description: 'ffdtgsf',
              foodid: 2134,
              foodName: 'Biriyani4'),
          FoodModel(
              rating: 7.3,
              price: 120,
              description: 'fqqds',
              foodid: 2323,
              foodName: 'mandhi4'),
          FoodModel(
              rating: 6.7,
              price: 30,
              description: 'asasa',
              foodid: 4141,
              foodName: 'meals4')
        ]),
  ];
}
