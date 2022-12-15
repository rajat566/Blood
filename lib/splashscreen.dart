import 'dart:async';

import 'package:blood/onboardingScreens/page1.dart';
import 'package:blood/onboardingscreen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 4), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => OnboardingScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 248, 99, 114),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Text(
                "",
                style: TextStyle(
                    fontSize: 35, color: Color.fromARGB(255, 234, 236, 235)),
              ),
            ),
            Center(
              child: CircleAvatar(
                backgroundImage: ExactAssetImage("images/o.jpg"),
                radius: 30,
              ),
              // child: Image(
              //   height: 100,
              //   fit: BoxFit.fill,
              //   image: AssetImage("images/o.jpg"),
              // ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Blood Donation",
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(
                    255,
                    240,
                    244,
                    247,
                  )),
            )
          ],
        ));
  }
}
