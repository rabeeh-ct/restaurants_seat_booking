import 'package:flutter/material.dart';
import 'package:restaurant_seat_booking/constants/constants.dart';
import 'package:restaurant_seat_booking/models/hotel_model.dart';
import 'package:searchfield/searchfield.dart';

class MainHomePage extends StatefulWidget {
  const MainHomePage({Key? key}) : super(key: key);

  @override
  State<MainHomePage> createState() => _MainHomePageState();
}

class _MainHomePageState extends State<MainHomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: size.width,
            height: size.height * .15,
            decoration: BoxDecoration(
              color: Colors.grey[300],
            ),
            child: Column(
              children: [
                Expanded(
                  child: Container(),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 8.0, right: 8, bottom: 2),
                  child: Container(
                    child: SearchField<HotelModel>(
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
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: size.height * .02),
              Center(
                child: Text('Top Picks',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
              ),
              Card(
                color: Colors.blue,
                child: Stack(
                  children: [
                    Container(
                      height: size.width*.5,
                      width: size.width*.5,
                      child: Image.network('https://scontent.fcok10-1.fna.fbcdn.net/v/t39.30808-6/250970106_639415157439911_1812823761543078750_n.jpg?stp=dst-jpg_s960x960&_nc_cat=105&ccb=1-7&_nc_sid=e3f864&_nc_ohc=Nd3fK9qPnj0AX8ol9eU&_nc_ht=scontent.fcok10-1.fna&oh=00_AT-dfN8xenX2zwSML-UdnHyPVq3Hpasllkebm7e8cB5RCQ&oe=6355230C'),
                    ),
                  ],
                ),
              )
            ],
          ))
        ],
      ),
    );
  }
}
