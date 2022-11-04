// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class FoodSelectingScreen extends StatefulWidget {
  FoodSelectingScreen({Key? key, required this.foods}) : super(key: key);
  List foods;

  @override
  State<FoodSelectingScreen> createState() => _FoodSelectingScreenState();
}

class _FoodSelectingScreenState extends State<FoodSelectingScreen> {
  TimeOfDay? time;
  DateTime? date;
  String txtTime = 'Time';
  String txtDate = 'Date';

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
          backgroundColor: Colors.grey[200], foregroundColor: Colors.black),
      body: Stack(
        children: [
          ListView.separated(
            itemCount: widget.foods.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(widget.foods[index].toString().toUpperCase()),
                trailing: SizedBox(width: 110,
                  child: Row(
                    children: [
                    ElevatedButton(
                            style: ButtonStyle(
                              elevation: MaterialStatePropertyAll(10),
                              padding: MaterialStatePropertyAll(EdgeInsets.zero),
                              backgroundColor: MaterialStatePropertyAll(
                                Colors.white,
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
                                Colors.white,
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
                ),
              );
            },
            separatorBuilder: (context, index) => Divider(thickness: 1),
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
          Positioned(
            bottom: 80,
            child: Row(
              children: [
                GestureDetector(
                  onTap: () => timeFn(context),
                  child: Container(
                    height: 40,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black54,
                          offset: Offset(4, 4),
                          blurRadius: 10,
                          spreadRadius: 1,
                        ),
                        BoxShadow(
                          color: Colors.white,
                          offset: Offset(-4, -4),
                          blurRadius: 10,
                          spreadRadius: 1,
                        ),
                      ],
                    ),
                    child: Center(child: Text(txtTime)),
                  ),
                ),
                SizedBox(width: 30),
                GestureDetector(
                  onTap: () => dateFn(context),
                  child: Container(
                    height: 40,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.white,
                          offset: Offset(-4, -4),
                          blurRadius: 10,
                          spreadRadius: 1,
                        ),
                        BoxShadow(
                          color: Colors.black54,
                          offset: Offset(4, 4),
                          blurRadius: 10,
                          spreadRadius: 1,
                        ),
                      ],
                    ),
                    child: Center(child: Text(txtDate)),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  timeFn(BuildContext ctx) async {
    time = await showTimePicker(context: ctx, initialTime: TimeOfDay.now());
    setState(() {
      if (time == null) {
        txtTime = 'Time';
      } else {
        txtTime = (time!.hour) <= 12
            ? '${time!.hour} :${time!.minute}'
            : '${time!.hour - 12} :${time!.minute}';
      }
    });
  }

  dateFn(BuildContext ctx) async {
    date = await showDatePicker(
        context: ctx,
        initialDate: DateTime.now(),
        firstDate: DateTime.now(),
        lastDate: DateTime(2024));
    setState(() {
      if (date == null) {
        txtDate = 'Date';
      } else {
        // txtDate='${date!.day}/${date!.month}/${date!.year}';
        txtDate = DateFormat('yMMMd', 'en_US').format(date!);
      }
    });
    print('$date');
  }
}
