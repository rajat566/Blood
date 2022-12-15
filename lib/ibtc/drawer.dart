//import 'dart:html';

import 'package:blood/my_flutter_app_icons.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 210,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("images/dhoni.jpg"), fit: BoxFit.cover),
      ),
      child: Drawer(
        child: Container(
          color: Color.fromARGB(255, 45, 12, 102),
          child: ListView(
            children: [
              InkWell(
                splashColor: Colors.blue,
                onTap: () {
                  //   Navigator.push(context,
                  //  MaterialPageRoute(builder: (context) => Profile()));
                },
                child: DrawerHeader(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: Divider.createBorderSide(context,
                          color: Color.fromARGB(255, 45, 12, 102), width: 0.0),
                    ),
                  ),
                  padding: EdgeInsets.zero,
                  child: UserAccountsDrawerHeader(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 45, 12, 102),
                    ),
                    margin: EdgeInsets.zero,
                    accountName: Text(
                      "Rajat",
                      style: TextStyle(fontSize: 25),
                    ),
                    accountEmail: Text("arajat958@gmail.com"),
                    currentAccountPicture: CircleAvatar(
                        backgroundImage: AssetImage("images/dhoni.jpg")
                        //    NetworkImage(
                        // "https: static.wikia.nocookie.net/youtube/images/8/83/Kim_Jong_un_icon.jpg/revision/latest/top-crop/width/360/height/360?cb=20201124202650"
                        //   "https://c.ndtvimg.com/2021-01/itvru3bo_kim-jong-un-letter-650_625x300_01_January_21.jpg"),
                        ),
                  ),
                ),
              ),
              ListTile(
                leading: Icon(
                  MyFlutterApp.home,
                  color: Colors.white,
                ),
                title: Text(
                  "Home",
                  textScaleFactor: 1.1,
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  // Navigator.push(context,
                  //   MaterialPageRoute(builder: (context) => HomePage()));
                },
              ),
              ListTile(
                leading: Icon(
                  MyFlutterApp.person,
                  color: Colors.white,
                ),
                title: Text(
                  "Profile",
                  textScaleFactor: 1.1,
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(
                  Icons.access_alarms_rounded,
                  color: Colors.white,
                ),
                title: Text(
                  "Lists",
                  textScaleFactor: 1.1,
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  // Navigator.pushNamed(context, MyRoutes.listsRoute);
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.accessible_rounded,
                  color: Colors.white,
                ),
                title: Text(
                  "Bookmarks",
                  textScaleFactor: 1.1,
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  //  Navigator.pushNamed(context, MyRoutes.uploadRoute);
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.access_alarms,
                  color: Colors.white,
                ),
                title: Text(
                  "Memories",
                  textScaleFactor: 1.1,
                  style: TextStyle(color: Colors.white),
                ),
              ),
              // ListTile(
              //   leading: Icon(
              //     Icons.access_time,
              //     color: Colors.white,
              //   ),
              //   title: Text(
              //     "Help Centre",
              //     textScaleFactor: 1.2,
              //     style: TextStyle(color: Colors.white),
              //   ),
              // ),
              ListTile(
                leading: Icon(
                  Icons.access_time,
                  color: Colors.white,
                ),
                title: Text(
                  "Logout",
                  textScaleFactor: 1.1,
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  // signout(context);
                  //    Navigator.pushNamed(context, MyRoutes.loginRoute);
                },
              ),
              SizedBox(
                height: 60,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "Follow Us",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 14,
                      fontFamily: "Ubuntu"),
                ),
              ),
              SizedBox(
                height: 1,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Material(
                      type: MaterialType.transparency,
                      child: Ink(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 2),
                            //  color: Colors.greenAccent,
                            borderRadius:
                                BorderRadius.circular(50.0)), //<-- SEE HERE
                        child: InkWell(
                          borderRadius: BorderRadius.circular(100.0),
                          onTap: () {},
                          child: Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Icon(MyFlutterApp.instagram,
                                size: 16.0, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Material(
                      type: MaterialType.transparency,
                      child: Ink(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 2),
                            // color: Colors.white,
                            borderRadius:
                                BorderRadius.circular(50.0)), //<-- SEE HERE
                        child: InkWell(
                          borderRadius: BorderRadius.circular(100.0),
                          onTap: () {},
                          child: Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Icon(
                              MyFlutterApp.facebook_square,
                              size: 14.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Material(
                      type: MaterialType.transparency,
                      child: Ink(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 2),
                            // color: Colors.white,
                            borderRadius:
                                BorderRadius.circular(50.0)), //<-- SEE HERE
                        child: InkWell(
                          borderRadius: BorderRadius.circular(100.0),
                          onTap: () {},
                          child: Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Icon(
                              MyFlutterApp.youtube,
                              size: 14.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Material(
                      type: MaterialType.transparency,
                      child: Ink(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 2),
                            // color: Colors.white,
                            borderRadius:
                                BorderRadius.circular(50.0)), //<-- SEE HERE
                        child: InkWell(
                          borderRadius: BorderRadius.circular(100.0),
                          onTap: () {},
                          child: Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Icon(
                              MyFlutterApp.twitter,
                              size: 14.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    )
                    // IconButton(
                    //   iconSize: 30,
                    //   icon: const Icon(
                    //     MyFlutterApp.youtube,
                    //     color: Colors.deepPurple,
                    //   ),
                    //   // the method which is called
                    //   // when button is pressed
                    //   onPressed: () {
                    //     setState(
                    //       () {},
                    //     );
                    //   },
                    // ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      "Terms & Condition",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontFamily: "Ubuntu"),
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Text("|",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.bold)),
                    SizedBox(
                      width: 8,
                    ),
                    Text("Privacy Policy",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontFamily: "Ubuntu"))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
