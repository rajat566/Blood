import 'package:blood/ibtc/drawer1.dart';
import 'package:blood/ibtc/prof.dart';
import 'package:blood/navbar/blog.dart';
import 'package:blood/navbar/home.dart';
import 'package:blood/navbar/homepage.dart';
import 'package:blood/navbar/profile.dart';
import 'package:blood/navbar/search.dart';
import 'package:blood/project/utils/homepagescreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePagebar extends StatefulWidget {
  const HomePagebar({Key? key}) : super(key: key);

  @override
  State<HomePagebar> createState() => _HomePagebarState();
}

class _HomePagebarState extends State<HomePagebar> {
  int index = 0;
  final pages = [HomepageScreeen(), Search(), Prof(), Home()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawerr(),
      body: pages[index],
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
            indicatorColor: Color.fromARGB(255, 248, 99, 114),
            labelTextStyle: MaterialStateProperty.all(TextStyle(
              fontSize: 11,
            ))),
        child: NavigationBar(
          backgroundColor: Color.fromARGB(179, 253, 250, 250),
          selectedIndex: index,
          onDestinationSelected: (index) => setState(() {
            this.index = index;
          }),
          destinations: const [
            NavigationDestination(icon: Icon(Icons.home_filled), label: "Home"),
            NavigationDestination(
                icon: Icon(Icons.done_all_outlined), label: "Donate"),
            NavigationDestination(
                icon: Icon(Icons.notification_important),
                label: "Notification"),
            NavigationDestination(
                icon: Icon(Icons.power_off_outlined), label: "Profile")
          ],
        ),
      ),
    );
  }
}
