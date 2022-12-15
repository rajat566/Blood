import 'dart:ui';

import 'package:blood/Screen/login_screen.dart';
import 'package:blood/ibtc/drawer.dart';
import 'package:blood/ibtc/drawer1.dart';
import 'package:blood/ibtc/prof.dart';
import 'package:blood/navbar/blog.dart';
import 'package:blood/navbar/home.dart';
import 'package:blood/navbar/homepage.dart';
import 'package:blood/navbar/profile.dart';
import 'package:blood/navbar/search.dart';
import 'package:flutter/material.dart';

import '../my_flutter_app_icons.dart';

class Hompep extends StatefulWidget {
  const Hompep({Key? key}) : super(key: key);

  @override
  State<Hompep> createState() => _HompepState();
}

class _HompepState extends State<Hompep> {
  int currentTab = 0;
  final List<Widget> Screens = [Prof(), Profile(), Home(), Search()];
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = Prof();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 51, 9, 128),
      drawer: MyDrawerr(),

      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),

      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // floatingActionButton: FloatingActionButton(
      //   backgroundColor: Colors.deepPurple,
      //   onPressed: () {},
      //   child: Icon(Icons.add),
      // ),
      bottomNavigationBar: BottomAppBar(
        clipBehavior: Clip.none,
        color: Color.fromARGB(255, 28, 11, 57),
        shape: const CircularNotchedRectangle(),
        notchMargin: 5,
        child: SizedBox(
          height: 56,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Material(
                color: Color.fromARGB(255, 28, 11, 57),
                child: Center(
                  child: InkWell(
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () {
                      setState(() {
                        currentScreen = Prof();
                        currentTab = 0;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(MyFlutterApp.home,
                            color: currentTab == 0
                                ? Colors.white
                                : Colors.white60),

                        Text(
                          "Home",
                          style: TextStyle(
                              fontSize: 12,
                              color: currentTab == 0
                                  ? Colors.white
                                  : Colors.white60),
                          //  style: TextStyle(color: Colors.white),
                        )
                        //const Padding(padding: EdgeInsets.all(10))
                      ],
                    ),
                  ),
                ),
              ),
              Material(
                color: Color.fromARGB(255, 28, 11, 57),
                child: Center(
                  child: InkWell(
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () {
                      setState(() {
                        currentScreen = Profile();
                        currentTab = 1;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(MyFlutterApp.people_outline,
                            color: currentTab == 1
                                ? Colors.white
                                : Colors.white60),
                        Text(
                          "Connect",
                          style: TextStyle(
                              fontSize: 12,
                              color: currentTab == 1
                                  ? Colors.white
                                  : Colors.white60),
                        ),
                        //const Padding(padding: EdgeInsets.only(left: 10))
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 4,
              ), //to make space for the floating button
              Material(
                color: Color.fromARGB(255, 28, 11, 57),
                child: Center(
                  child: InkWell(
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () {
                        setState(() {
                          currentTab = 2;
                          currentScreen = Search();
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.ac_unit,
                              color: currentTab == 2
                                  ? Colors.white
                                  : Colors.white60),
                          Text(
                            "Network",
                            style: TextStyle(
                                fontSize: 12,
                                color: currentTab == 2
                                    ? Colors.white
                                    : Colors.white60),
                          ),
                          //const Padding(padding: EdgeInsets.only(right: 10))
                        ],
                      )),
                ),
              ),
              Material(
                color: Color.fromARGB(255, 28, 11, 57),
                child: Center(
                  child: InkWell(
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () {
                      setState(() {
                        // Navigator.push(
                        //    context,
                        //   MaterialPageRoute(
                        //     builder: (context) => LoginScreen()));
                        currentTab = 3;
                        currentScreen = Home();
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(MyFlutterApp.person,
                            color: currentTab == 3
                                ? Colors.white
                                : Colors.white60),
                        Text(
                          "profile",
                          style: TextStyle(
                              fontSize: 12,
                              color: currentTab == 3
                                  ? Colors.white
                                  : Colors.white60),
                        )
                        //const Padding(padding: EdgeInsets.only(left: 10))
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromARGB(255, 45, 12, 102),
        hoverElevation: 2,
        shape: StadiumBorder(side: BorderSide(color: Colors.white, width: 2)),
        onPressed: () {
          _onButtonPressed();
        },
        child: Icon(Icons.add),
      ),

      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {},
      //   child: Icon(Icons.add),
      // ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // bottomNavigationBar: BottomAppBar(
      //   shape: CircularNotchedRectangle(),
      //   notchMargin: 5,
      //   child: Row(
      //     //children inside bottom appbar
      //     mainAxisSize: MainAxisSize.max,
      //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //     children: <Widget>[
      //       IconButton(
      //         icon: Icon(
      //           Icons.home,
      //         ),
      //         onPressed: () {},
      //       ),
      //       IconButton(
      //         icon: Icon(
      //           Icons.group,
      //         ),
      //         onPressed: () {
      //           Navigator.push(context,
      //               MaterialPageRoute(builder: (context) => LoginScreen()));
      //         },
      //       ),
      //       IconButton(
      //         icon: Icon(Icons.add),
      //         onPressed: () {},
      //       ),
      //       IconButton(
      //         icon: Icon(
      //           Icons.person,
      //         ),
      //         onPressed: () {},
      //       ),
      //     ],
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
}
