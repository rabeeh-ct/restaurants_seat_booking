// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class FoodSelectingScreen extends StatelessWidget {
  FoodSelectingScreen({Key? key, required this.foods}) : super(key: key);
  List foods;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
          backgroundColor: Colors.grey[200], foregroundColor: Colors.black),
      body: Stack(
        children: [
          ListView.builder(
            itemCount: foods.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.only(left: size.width * .2,top: size.height*.03),
                child: Row(
                  children: [
                    Container(
                      width: size.width * .3,
                      child: Text(
                        foods[index],
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    ElevatedButton(
                      style: ButtonStyle(
                        elevation: MaterialStatePropertyAll(10),
                        padding: MaterialStatePropertyAll(EdgeInsets.zero),
                        backgroundColor: MaterialStatePropertyAll(
                          Colors.yellow[300],
                        ),
                        minimumSize: MaterialStatePropertyAll(Size(30, 30)),
                        maximumSize: MaterialStatePropertyAll(Size(30, 30)),
                        fixedSize: MaterialStatePropertyAll(Size(30, 30)),
                      ),
                      onPressed: () {},
                      child: Padding(
                        padding: const EdgeInsets.only(),
                        child: Icon(Icons.remove, color: Colors.black),
                      ),
                    ),
                    Text('0'),
                    ElevatedButton(
                      style: ButtonStyle(
                        elevation: MaterialStatePropertyAll(10),
                        padding: MaterialStatePropertyAll(EdgeInsets.zero),
                        backgroundColor: MaterialStatePropertyAll(
                          Colors.yellow[300],
                        ),
                        minimumSize: MaterialStatePropertyAll(Size(30, 30)),
                        maximumSize: MaterialStatePropertyAll(Size(30, 30)),
                        fixedSize: MaterialStatePropertyAll(Size(30, 30)),
                      ),
                      onPressed: () {},
                      child: Padding(
                        padding: const EdgeInsets.only(),
                        child: Icon(Icons.add, color: Colors.black),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
          //bottom arrow button
          Positioned(
            bottom: size.height * .03,
            right: size.width * .05,
            child: Container(
              alignment: Alignment.bottomRight,
              decoration: BoxDecoration(shape: BoxShape.circle, boxShadow: [
                BoxShadow(
                  color: Colors.black54,
                  offset: Offset(4, 4),
                  blurRadius: 8,
                  spreadRadius: 1,
                ),
              ]),
              child: CircleAvatar(
                backgroundColor: Colors.yellow[400],
                child: IconButton(
                  icon: Icon(Icons.navigate_next, color: Colors.black),
                  onPressed: () {},
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
