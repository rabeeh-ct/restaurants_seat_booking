import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RestaurentList extends StatelessWidget {
  RestaurentList({
    Key? key,
    required Size this.size,
    required String this.hotelName,
    required String this.location,
    required double this.rating,
    required this.foods,
    required String this.hotelimage,
  }) : super(key: key);
  Size size;
  String hotelName;
  double rating;
  String location;
  var foods;
  String hotelimage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: size.width * .03, right: size.width * .03),
      child: Container(
        width: size.width * .8,
        height: size.height * .2,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.blueGrey.shade900, Colors.indigo.shade400]),
            borderRadius: BorderRadius.circular(10)),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(hotelimage,fit: BoxFit.fill,)),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Padding(
                      padding: EdgeInsets.only(top: size.height * .015),
                      child: Text(
                        hotelName,
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: size.height * .02, left: size.height * .01),
                    child: Row(
                      children: [
                        RatingBarIndicator(
                          rating: rating,
                          itemBuilder: (context, index) => Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          itemCount: 5,
                          itemSize: 15.0,
                          direction: Axis.horizontal,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: size.height * .01),
                          child: Text(
                            rating.toString(),
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: size.height * .012, left: size.height * .005),
                    child: Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: Colors.white,
                          size: 20,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: size.height * .01),
                          child: Text(
                            '$location, Kerala',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: size.height * .012, left: size.height * .005),
                    child: Text('$foods',
                        style: TextStyle(fontSize: 15, color: Colors.white)),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
