import 'dart:ui';
import 'package:blood/Screen/login_screen.dart';
import 'package:blood/ibtc/drawer.dart';
import 'package:blood/my_flutter_app_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:url_launcher/url_launcher.dart';

class Prof extends StatefulWidget {
  const Prof({Key? key}) : super(key: key);

  @override
  State<Prof> createState() => _ProfState();
}

class _ProfState extends State<Prof> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      backgroundColor: Colors.deepPurpleAccent,
      appBar: AppBar(
        leading: Icon(
          MyFlutterApp.directions_run,
          color: Colors.black,
        ),
        centerTitle: true,
        title: Text(
          "iBTC",
          style: TextStyle(
              color: Color.fromARGB(255, 45, 12, 102),
              fontFamily: 'Ubuntu',
              fontSize: 15,
              fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              MyFlutterApp.commenting_o,
              color: Color.fromARGB(255, 45, 12, 102),
              size: 30,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
              child: Stack(
            children: [
              Container(
                color: Color.fromARGB(255, 45, 12, 102),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.only(bottomLeft: Radius.circular(80))),
                child: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Center(
                      child: Text("Welcome Rajat",
                          style: TextStyle(
                              color: Color.fromARGB(255, 51, 9, 128),
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              fontFamily: 'Ubuntu'))),
                ),
              )
            ],
          )),
          Container(
            height: 520,
            child: Stack(
              children: [
                Container(
                  color: Colors.white,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 45, 12, 102),
                      borderRadius:
                          BorderRadius.only(topRight: Radius.circular(80))),
                ),
                SizedBox(
                  height: 60,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Card(
                                  shape: BeveledRectangleBorder(
                                      borderRadius: BorderRadius.circular(7)),
                                  child: Container(
                                    height: 210,
                                    width: 315,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Padding(
                                                padding:
                                                    const EdgeInsets.all(20.0),
                                                child: Text(
                                                  "Rajat",
                                                  style: TextStyle(
                                                      color: Color.fromARGB(
                                                          255, 51, 9, 128),
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 22,
                                                      fontFamily: 'Ubuntu'),
                                                )),
                                            SizedBox(
                                              width: 140,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 15),
                                              child: Column(
                                                children: const [
                                                  Positioned(
                                                      // top: 10,
                                                      right: 5,
                                                      left: 10,
                                                      child: CircleAvatar(
                                                        radius: 30,
                                                        backgroundImage:
                                                            ExactAssetImage(
                                                                "images/dhoni.jpg"),
                                                      )),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            Row(
                                              children: const [
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                Icon(
                                                  MyFlutterApp.mail,
                                                  color: Color.fromARGB(
                                                      255, 45, 12, 102),
                                                  size: 20,
                                                ),
                                                SizedBox(
                                                  width: 20,
                                                ),
                                                Text("arajat958@gmail.com",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w200,
                                                        fontSize: 15,
                                                        fontFamily: 'Ubuntu')),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 20,
                                            ),
                                            Row(
                                              children: const [
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                Icon(
                                                  MyFlutterApp.phone_paused,
                                                  color: Color.fromARGB(
                                                      255, 45, 12, 102),
                                                  size: 20,
                                                ),
                                                SizedBox(
                                                  width: 20,
                                                ),
                                                Text("6260175117",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w200,
                                                        fontSize: 15,
                                                        fontFamily: 'Ubuntu')),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 20,
                                            ),
                                            Row(
                                              children: const [
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                Icon(
                                                  MyFlutterApp.language,
                                                  color: Color.fromARGB(
                                                      255, 45, 12, 102),
                                                  size: 20,
                                                ),
                                                SizedBox(
                                                  width: 20,
                                                ),
                                                Text("www.google.com",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w200,
                                                        fontSize: 15,
                                                        fontFamily: 'Ubuntu')),
                                              ],
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 25,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Card(
                                    shape: BeveledRectangleBorder(
                                        borderRadius: BorderRadius.circular(7)),
                                    child: Container(
                                      height: 210,
                                      width: 315,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(30)),
                                      child: Column(
                                        children: [
                                          Row(
                                            children: [
                                              Padding(
                                                  padding: const EdgeInsets.all(
                                                      20.0),
                                                  child: Text(
                                                    "Rajat",
                                                    style: TextStyle(
                                                        color: Color.fromARGB(
                                                            255, 51, 9, 128),
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 22,
                                                        fontFamily: 'Ubuntu'),
                                                  )),
                                              SizedBox(
                                                width: 140,
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 15),
                                                child: Column(
                                                  children: const [
                                                    Positioned(
                                                        // top: 10,
                                                        right: 5,
                                                        left: 10,
                                                        child: CircleAvatar(
                                                          radius: 30,
                                                          backgroundImage:
                                                              ExactAssetImage(
                                                                  "images/dhoni.jpg"),
                                                        )),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                          Column(
                                            children: [
                                              Row(
                                                children: const [
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  Icon(
                                                    MyFlutterApp.mail,
                                                    color: Color.fromARGB(
                                                        255, 45, 12, 102),
                                                    size: 20,
                                                  ),
                                                  SizedBox(
                                                    width: 20,
                                                  ),
                                                  Text("arajat958@gmail.com",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w200,
                                                          fontSize: 15,
                                                          fontFamily:
                                                              'Ubuntu')),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 20,
                                              ),
                                              Row(
                                                children: const [
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  Icon(
                                                    MyFlutterApp.phone_paused,
                                                    color: Color.fromARGB(
                                                        255, 45, 12, 102),
                                                    size: 20,
                                                  ),
                                                  SizedBox(
                                                    width: 20,
                                                  ),
                                                  Text("6260175117",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w200,
                                                          fontSize: 15,
                                                          fontFamily:
                                                              'Ubuntu')),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 20,
                                              ),
                                              Row(
                                                children: const [
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  Icon(
                                                    MyFlutterApp.language,
                                                    color: Color.fromARGB(
                                                        255, 45, 12, 102),
                                                    size: 20,
                                                  ),
                                                  SizedBox(
                                                    width: 20,
                                                  ),
                                                  Text("www.google.com",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w200,
                                                          fontSize: 15,
                                                          fontFamily:
                                                              'Ubuntu')),
                                                ],
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          height: 40,
                          width: 340,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8)),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Text(
                                  "No Upcomings Meetings",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 51, 9, 128),
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Ubuntu'),
                                ),
                              ),
                              SizedBox(width: 72),
                              MaterialButton(
                                  onPressed: () {
                                    // Navigator.push(context,
                                    // MaterialPageRoute(builder: (context) => Prof()));
                                  },
                                  child: Text(
                                    "View All",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 13,
                                      color: Color.fromARGB(255, 51, 9, 128),
                                    ),
                                  )),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 70,
                            width: 350,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15)),
                            child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    Icon(
                                      MyFlutterApp.filter_tilt_shift,
                                      color: Colors.grey,
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Column(
                                      children: const [
                                        Padding(
                                          padding: EdgeInsets.all(6.0),
                                          child: Text(
                                            "Talent's On BTC",
                                            style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 45, 12, 102),
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                                fontFamily: 'Ubuntu'),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(right: 50),
                                          child: Text("39 People",
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold,
                                                  fontFamily: 'Ubuntu',
                                                  color: Color.fromARGB(
                                                      255, 45, 12, 102))),
                                        )
                                      ],
                                    ),
                                  ],
                                )),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Container(
                                  height: 50,
                                  width: 120,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(8)),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(6.0),
                                        child: Icon(
                                          MyFlutterApp.calc,
                                          color: Colors.lightBlue,
                                          size: 20,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          children: const [
                                            Text(
                                              "Accounting",
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold,
                                                  fontFamily: 'Ubuntu',
                                                  color: Color.fromARGB(
                                                      255, 51, 9, 128)),
                                            ),
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(right: 30),
                                              child: Text(" People",
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w300,
                                                      fontFamily: 'Ubuntu',
                                                      color: Colors.blue)),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  height: 50,
                                  width: 110,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(8)),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: Icon(
                                          MyFlutterApp.database,
                                          color: Colors.lightBlue,
                                          size: 20,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(7.0),
                                        child: Column(
                                          children: const [
                                            Text(
                                              " Banking",
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold,
                                                  fontFamily: 'Ubuntu',
                                                  color: Color.fromARGB(
                                                      255, 51, 9, 128)),
                                            ),
                                            Text("9 People",
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    fontFamily: 'Ubuntu',
                                                    fontWeight: FontWeight.w300,
                                                    color: Colors.blue))
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  height: 50,
                                  width: 130,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(8)),
                                  child: Row(
                                    children: [
                                      const Padding(
                                        padding: EdgeInsets.all(4.0),
                                        child: Icon(
                                          MyFlutterApp.city,
                                          color: Colors.lightBlue,
                                          size: 20,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          children: const [
                                            Text(
                                              "Construction",
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold,
                                                  fontFamily: 'Ubuntu',
                                                  color: Color.fromARGB(
                                                      255, 51, 9, 128)),
                                            ),
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(right: 30),
                                              child: Text("4 People",
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w300,
                                                      fontFamily: 'Ubuntu',
                                                      color: Colors.blue)),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  height: 50,
                                  width: 100,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(8)),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: Icon(
                                          MyFlutterApp.accessible,
                                          color: Colors.lightBlue,
                                          size: 20,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          children: const [
                                            Text(
                                              "physics",
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold,
                                                  fontFamily: 'Ubuntu',
                                                  color: Color.fromARGB(
                                                      255, 51, 9, 128)),
                                            ),
                                            Text("7 People",
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w300,
                                                    fontFamily: 'Ubuntu',
                                                    color: Colors.blue))
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Container(
                                  height: 50,
                                  width: 160,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(8)),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: Icon(
                                          MyFlutterApp.fast_food,
                                          color: Colors.lightBlue,
                                          size: 20,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          children: const [
                                            Text(
                                              "Food & Beverages",
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold,
                                                  fontFamily: 'Ubuntu',
                                                  color: Color.fromARGB(
                                                      255, 51, 9, 128)),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                right: 60,
                                              ),
                                              child: Text("5 People",
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w300,
                                                      fontFamily: 'Ubuntu',
                                                      color: Colors.blue)),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  height: 50,
                                  width: 110,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(8)),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: Icon(
                                          MyFlutterApp.filter_tilt_shift,
                                          color: Colors.lightBlue,
                                          size: 20,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          children: const [
                                            Text(
                                              "Furniture",
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold,
                                                  fontFamily: 'Ubuntu',
                                                  color: Color.fromARGB(
                                                      255, 51, 9, 128)),
                                            ),
                                            Text("2 People",
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w300,
                                                    fontFamily: 'Ubuntu',
                                                    color: Colors.blue))
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  height: 50,
                                  width: 190,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(8)),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: Icon(
                                          MyFlutterApp.local_hotel,
                                          color: Colors.lightBlue,
                                          size: 20,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          children: const [
                                            Text(
                                              "Government Relations",
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold,
                                                  fontFamily: 'Ubuntu',
                                                  color: Color.fromARGB(
                                                      255, 51, 9, 128)),
                                            ),
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(right: 90),
                                              child: Text("4 People",
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w300,
                                                      fontFamily: 'Ubuntu',
                                                      color: Colors.blue)),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  height: 50,
                                  width: 100,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(8)),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: Icon(
                                          MyFlutterApp.directions_run,
                                          color: Colors.lightBlue,
                                          size: 20,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          children: const [
                                            Text(
                                              "Sports",
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold,
                                                  fontFamily: 'Ubuntu',
                                                  color: Color.fromARGB(
                                                      255, 51, 9, 128)),
                                            ),
                                            Text("3 People",
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w300,
                                                    fontFamily: 'Ubuntu',
                                                    color: Colors.blue))
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Container(
                                  height: 50,
                                  width: 120,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(8)),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: Icon(
                                          MyFlutterApp.city,
                                          color: Colors.lightBlue,
                                          size: 20,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          children: const [
                                            Text(
                                              "IT Services",
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold,
                                                  fontFamily: 'Ubuntu',
                                                  color: Color.fromARGB(
                                                      255, 51, 9, 128)),
                                            ),
                                            Text("1 People",
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w300,
                                                    fontFamily: 'Ubuntu',
                                                    color: Colors.blue))
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  height: 50,
                                  width: 100,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(8)),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: Icon(
                                          MyFlutterApp.facebook_square,
                                          color: Colors.lightBlue,
                                          size: 20,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          children: const [
                                            Text(
                                              "Social",
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold,
                                                  fontFamily: 'Ubuntu',
                                                  color: Color.fromARGB(
                                                      255, 51, 9, 128)),
                                            ),
                                            Text("6 People",
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w300,
                                                    fontFamily: 'Ubuntu',
                                                    color: Color.fromARGB(
                                                        255, 89, 173, 243)))
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  height: 50,
                                  width: 100,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(8)),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: Icon(
                                          MyFlutterApp.supervisor_account,
                                          color: Colors.lightBlue,
                                          size: 20,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          children: const [
                                            Text(
                                              "Biology",
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold,
                                                  fontFamily: 'Ubuntu',
                                                  color: Color.fromARGB(
                                                      255, 51, 9, 128)),
                                            ),
                                            Text("2 People",
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w300,
                                                    fontFamily: 'Ubuntu',
                                                    color: Colors.blue))
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  height: 50,
                                  width: 100,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(8)),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: Icon(
                                          MyFlutterApp.more_vert,
                                          color: Colors.lightBlue,
                                          size: 20,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          children: const [
                                            Text(
                                              "Utilities",
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold,
                                                  fontFamily: 'Ubuntu',
                                                  color: Color.fromARGB(
                                                      255, 51, 9, 128)),
                                            ),
                                            Text(" 1 People",
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w300,
                                                    fontFamily: 'Ubuntu',
                                                    color: Colors.blue))
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // floatingActionButton: FloatingActionButton(
      //   backgroundColor: Color.fromARGB(255, 45, 12, 102),
      //   hoverElevation: 1.5,
      //   shape: StadiumBorder(side: BorderSide(color: Colors.white, width: 3)),
      //   onPressed: () {
      //     _onButtonPressed();
      //   },
      //   child: Icon(Icons.add),
      // ),
      // bottomNavigationBar: BottomAppBar(
      //   clipBehavior: Clip.none,
      //   color: Colors.deepPurpleAccent,
      //   shape: const CircularNotchedRectangle(),
      //   notchMargin: 7,
      //   child: SizedBox(
      //     height: 55,
      //     child: Row(
      //       mainAxisSize: MainAxisSize.max,
      //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //       children: <Widget>[
      //         Material(
      //           color: Colors.deepPurpleAccent,
      //           child: Center(
      //             child: InkWell(
      //               focusColor: Colors.transparent,
      //               hoverColor: Colors.transparent,
      //               highlightColor: Colors.transparent,
      //               onTap: () {
      //                 setState(() {
      //                   //   currentTab = 0;
      //                 });
      //               },
      //               child: Column(
      //                 mainAxisAlignment: MainAxisAlignment.center,
      //                 children: [
      //                   Icon(MyFlutterApp.home),
      //                   Text(
      //                     "Home",
      //                     style: TextStyle(color: Colors.white),
      //                   )
      //                   //const Padding(padding: EdgeInsets.all(10))
      //                 ],
      //               ),
      //             ),
      //           ),
      //         ),
      //         Material(
      //           color: Colors.deepPurpleAccent,
      //           child: Center(
      //             child: InkWell(
      //               focusColor: Colors.transparent,
      //               hoverColor: Colors.transparent,
      //               highlightColor: Colors.transparent,
      //               onTap: () {
      //                 setState(() {
      //                   //   currentTab = 1;
      //                 });
      //               },
      //               child: Column(
      //                 mainAxisAlignment: MainAxisAlignment.center,
      //                 children: [
      //                   Icon(MyFlutterApp.people_outline),
      //                   Text("Connect"),
      //                   //const Padding(padding: EdgeInsets.only(left: 10))
      //                 ],
      //               ),
      //             ),
      //           ),
      //         ),
      //         SizedBox(), //to make space for the floating button
      //         Material(
      //           color: Colors.deepPurpleAccent,
      //           child: Center(
      //             child: InkWell(
      //                 focusColor: Colors.transparent,
      //                 hoverColor: Colors.transparent,
      //                 highlightColor: Colors.transparent,
      //                 onTap: () {
      //                   setState(() {
      //                     //  currentTab = 2;
      //                   });
      //                 },
      //                 child: Column(
      //                   mainAxisAlignment: MainAxisAlignment.center,
      //                   children: [
      //                     Icon(Icons.ac_unit),
      //                     Text("Network"),
      //                     //const Padding(padding: EdgeInsets.only(right: 10))
      //                   ],
      //                 )),
      //           ),
      //         ),
      //         Material(
      //           color: Colors.deepPurpleAccent,
      //           child: Center(
      //             child: InkWell(
      //               focusColor: Colors.transparent,
      //               hoverColor: Colors.transparent,
      //               highlightColor: Colors.transparent,
      //               onTap: () {
      //                 setState(() {
      //                   Navigator.push(
      //                       context,
      //                       MaterialPageRoute(
      //                           builder: (context) => LoginScreen()));
      //                   // currentTab = 3;
      //                 });
      //               },
      //               child: Column(
      //                 mainAxisAlignment: MainAxisAlignment.center,
      //                 children: [
      //                   Icon(MyFlutterApp.person),
      //                   Text("profile")
      //                   //const Padding(padding: EdgeInsets.only(left: 10))
      //                 ],
      //               ),
      //             ),
      //           ),
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
    );
  }

  void _onButtonPressed() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            color: Color.fromARGB(255, 45, 12, 102),
            child: Container(
              // color: Color(0xFF737373),
              height: 230,

              child: _buildBottomNavigationMenu(),
              decoration: BoxDecoration(
                  color: Theme.of(context).canvasColor,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
            ),
          );
        });
  }

  Column _buildBottomNavigationMenu() {
    return Column(children: <Widget>[
      ListTile(
        leading: Icon(Icons.format_align_justify),
        iconColor: Color.fromARGB(255, 51, 9, 128),
        title: InkWell(
          child: Text(
            'order Tap & Share Card',
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                fontFamily: 'Ubuntu',
                color: Color.fromARGB(255, 51, 9, 128)),
          ),
        ),
        onTap: () => print("hello"),
      ),
      ListTile(
        leading: Icon(Icons.account_box_sharp),
        iconColor: Color.fromARGB(255, 51, 9, 128),
        title: Text(
          'Share Your Contact',
          style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              fontFamily: 'Ubuntu',
              color: Color.fromARGB(255, 51, 9, 128)),
        ),
        onTap: () => _selectItem('cooling'),
      ),
      ListTile(
        leading: Icon(
          Icons.format_align_justify_sharp,
        ),
        iconColor: Color.fromARGB(255, 51, 9, 128),
        title: Text(
          'Share your Digital Card',
          style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              fontFamily: 'Ubuntu',
              color: Color.fromARGB(255, 51, 9, 128)),
        ),
        onTap: () => _selectItem('cooling'),
      ),
      ListTile(
        leading: Icon(Icons.account_circle_rounded),
        iconColor: Color.fromARGB(255, 51, 9, 128),
        title: Text(
          'Share your Social Media Profile',
          style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              fontFamily: 'Ubuntu',
              color: Color.fromARGB(255, 51, 9, 128)),
        ),
        onTap: () => _selectItem('cooling'),
      ),
    ]);
  }

  void _selectItem(String name) {
    Navigator.pop(context);
    setState(() {
      //    _selectedItem = name;
    });
  }

  Future openBrowserURL({
    required String url,
    bool inApp = true,
  }) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: inApp,
        forceWebView: inApp,
        enableJavaScript: true,
      );
    }
  }
}
