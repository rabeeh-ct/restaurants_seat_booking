import 'package:restaurant_seat_booking/models/food_model.dart';

import '../models/hotel_model.dart';

class Constants {
  static List<HotelModel> res = [
    HotelModel(
        hotelid: 101,
        hotelName: 'Sagar',
        hotelRating: 9.5,
        location: 'Kozhikode ',
        foodList: [
          FoodModel(
              price: 130,
              description: 'afdtgsf',
              foodid: 1234,
              foodName: 'Biriyani',
              rating: 9.3),
          FoodModel(
              price: 150,
              description: 'fxgds',
              foodid: 1211,
              foodName: 'mandhi',
              rating: 8),
          FoodModel(
              price: 60,
              description: 'asasa',
              foodid: 2121,
              foodName: 'meals',
              rating: 7.8)
        ]),
    HotelModel(
        hotelName: 'mandi hut',
        hotelRating: 8.5,
        location: 'Kozhikode ',
        hotelid: 102,
        foodList: [
          FoodModel(
              price: 110,
              description: 'asdtgsf',
              foodid: 1111,
              foodName: 'Biriyani',
              rating: 8.8),
          FoodModel(
              rating: 5.7,
              price: 160,
              description: 'fxcds',
              foodid: 2211,
              foodName: 'mandhi'),
          FoodModel(
              rating: 8.5,
              price: 50,
              description: 'asasa',
              foodid: 2323,
              foodName: 'meals')
        ]),
    HotelModel(
        hotelid: 103,
        hotelName: 'hotel malabar',
        hotelRating: 7.5,
        location: 'Civil ',
        foodList: [
          FoodModel(
              rating: 9.3,
              price: 120,
              description: 'dddtgsf',
              foodid: 2222,
              foodName: 'Biriyani'),
          FoodModel(
              rating: 9.4,
              price: 140,
              description: 'foos',
              foodid: 1122,
              foodName: 'mandhi'),
          FoodModel(
              rating: 7.8,
              price: 70,
              description: 'asasa',
              foodid: 2244,
              foodName: 'meals')
        ]),
    HotelModel(
        hotelid: 104,
        hotelName: 'hotel tanima',
        hotelRating: 9.0,
        location: 'Civil ',
        foodList: [
          FoodModel(
              rating: 7.8,
              price: 100,
              description: 'ffdtgsf',
              foodid: 2134,
              foodName: 'Biriyani'),
          FoodModel(
              rating: 7.3,
              price: 120,
              description: 'fqqds',
              foodid: 2323,
              foodName: 'mandhi'),
          FoodModel(
              rating: 6.7,
              price: 30,
              description: 'asasa',
              foodid: 4141,
              foodName: 'meals')
        ]),
  ];
}
