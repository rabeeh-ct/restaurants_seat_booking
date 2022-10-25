import 'package:flutter/material.dart';
import 'package:searchfield/searchfield.dart';

import '../constants/constants.dart';
import '../models/hotel_model.dart';

class RestaurentSearchField extends StatelessWidget {
  const RestaurentSearchField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SearchField<HotelModel>(
      searchStyle: TextStyle(
        fontSize: 15,
      ),
      searchInputDecoration: InputDecoration(
        contentPadding: EdgeInsets.zero,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(
            color: Colors.black,
          ),
        ),
        prefixIcon: Icon(
          Icons.search,
          color: Colors.black,
        ),
        hintText: 'Search Hotel',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(
            color: Colors.black,
          ),
        ),
      ),
      suggestions: Constants.res
          .map(
            (e) => SearchFieldListItem(
            child: Padding(
              padding: EdgeInsets.only(left: 8),
              child: Text(e.hotelName),
            ),
            e.hotelName,
            item: e),
      )
          .toList(),
    );
  }
}
