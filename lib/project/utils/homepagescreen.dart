import 'package:blood/ibtc/drawer.dart';
import 'package:blood/project/utils/constants.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../ibtc/drawer1.dart';

class HomepageScreeen extends StatefulWidget {
  // const UserForm({Key key}) : super(key: key);

  @override
  State<HomepageScreeen> createState() => _HomepageScreeenState();
}

class _HomepageScreeenState extends State<HomepageScreeen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Text(
              "welcome",
              style: TextStyle(
                  color: Colors.blueAccent,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
          ),
          CarouselSlider(
            items: images
                .map((e) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(25),
                          child: Image.network(e, fit: BoxFit.fill)),
                    ))
                .toList(),
            options: CarouselOptions(
                height: 240,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 1)),
          ),
        ],
      ),
      //  drawer: MyDrawerr(),
      // body: SingleChildScrollView(
      //   child: Expanded(
      //       child: Column(
      //     children: [
      // Padding(
      //   padding: const EdgeInsets.all(20.0),
      //   child: Center(
      //     child: Text("WELCOME",
      //         style: TextStyle(
      //             fontWeight: FontWeight.bold,
      //             fontSize: 25,
      //             color: Colors.redAccent.withOpacity(0.8))),
      //   ),
      // ),
      //   CarouselSlider(
      //   items: images
      //       .map((e) => Padding(
      //             padding: const EdgeInsets.all(8.0),
      //             child: ClipRRect(
      //                 borderRadius: BorderRadius.circular(25),
      //                 child: Image.network(e, fit: BoxFit.fill)),
      //           ))
      //       .toList(),
      //   options: CarouselOptions(
      //       height: 240,
      //       autoPlay: true,
      //       autoPlayInterval: Duration(seconds: 1)),
      // ),
      // Container(
      //   decoration: BoxDecoration(
      //       borderRadius: BorderRadius.circular(25),
      //       gradient: LinearGradient(colors: [
      //         Colors.blueAccent.withOpacity(0.8),
      //         Colors.redAccent.withOpacity(0.8)
      //       ])),
      //   child: Padding(
      //     padding: EdgeInsets.all(18),
      //     child: Text(
      //       "GROSERY",
      //       style: TextStyle(color: Colors.white),
      //     ),
      //   ),
      // ),
      // SizedBox(
      //   height: 10,
      // ),
      // Padding(
      //   padding: const EdgeInsets.all(14.0),
      //   child: Container(
      //     width: double.infinity,
      //     decoration: BoxDecoration(
      //         borderRadius: BorderRadius.circular(25),
      //         gradient: LinearGradient(colors: [
      //           Colors.blueAccent.withOpacity(0.8),
      //           Colors.redAccent.withOpacity(0.8)
      //         ])),
      //     child: Padding(
      //       padding: EdgeInsets.all(24),
      //       child: Text(
      //         "ELECTRONICS",
      //         style: TextStyle(color: Colors.white),
      //       ),
      //     ),
      //   ),
      // ),
      //       Padding(
      //         padding: const EdgeInsets.all(12.0),
      //         child: Container(
      //           width: double.infinity,
      //           decoration: BoxDecoration(
      //               borderRadius: BorderRadius.circular(25),
      //               gradient: LinearGradient(colors: [
      //                 Colors.blueAccent.withOpacity(0.8),
      //                 Colors.redAccent.withOpacity(0.8)
      //               ])),
      //           child: Padding(
      //             padding: EdgeInsets.all(24),
      //             child: Text(
      //               "COSMETICS",
      //               style: TextStyle(color: Colors.white),
      //             ),
      //           ),
      //         ),
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.all(12.0),
      //         child: Container(
      //           width: double.infinity,
      //           decoration: BoxDecoration(
      //               borderRadius: BorderRadius.circular(25),
      //               gradient: LinearGradient(colors: [
      //                 Colors.blueAccent.withOpacity(0.8),
      //                 Colors.redAccent.withOpacity(0.8)
      //               ])),
      //           child: Padding(
      //             padding: EdgeInsets.all(22),
      //             child: Text(
      //               "GARMENTS",
      //               style: TextStyle(color: Colors.white),
      //             ),
      //           ),
      //         ),
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.all(12.0),
      //         child: Container(
      //           width: double.infinity,
      //           decoration: BoxDecoration(
      //               borderRadius: BorderRadius.circular(25),
      //               gradient: LinearGradient(colors: [
      //                 Colors.blueAccent.withOpacity(0.8),
      //                 Colors.redAccent.withOpacity(0.8)
      //               ])),
      //           child: Padding(
      //             padding: EdgeInsets.all(12),
      //             child: Text(
      //               "Engineering",
      //               style: TextStyle(color: Colors.white),
      //             ),
      //           ),
      //         ),
      //       ),
      //     ],
      //   )),
      // ),
    );
  }
}
