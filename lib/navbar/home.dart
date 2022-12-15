import 'package:flutter/material.dart';
import 'package:group_button/group_button.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 241, 234, 234),
      appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 248, 99, 114),
          title: Text("Home")),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 60, left: 25),
            child: Column(children: [
              Text(
                "SELECT THE BLOOD YOU NEED",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ]),
          ),
          SizedBox(
            height: 40,
          ),
          Center(
            child: Column(
              children: [
                GroupButton(
                  selectedColor: Color.fromARGB(255, 248, 99, 114),
                  direction: Axis.horizontal,
                  buttonWidth: 120,
                  buttonHeight: 70,
                  borderRadius: BorderRadius.circular(10),

                  spacing: 30,
                  runSpacing: 15,
                  mainGroupAlignment: MainGroupAlignment.center,
                  crossGroupAlignment: CrossGroupAlignment.center,
                  groupRunAlignment: GroupRunAlignment.spaceEvenly,

                  buttons: ["A+", "A-", "B+", "B-", "AB+", "AB-", "O+", "O-"],
                  isRadio: true,
                  onSelected: (index, isSelected) => print(
                      "$index button is ${isSelected ? 'selected,' : 'un selected'}"),
                  //  onSelected: (index, isSelected) => print("$index button is ${isselected ? 'selected': 'un selected'}"),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: MaterialButton(
                    minWidth: double.infinity,
                    color: Color.fromARGB(255, 248, 99, 114),
                    onPressed: () {
                      // Navigator.push(context,
                      //  MaterialPageRoute(builder: (context) => LoginScreen()));
                    },
                    child: Text(
                      "Request Blood",
                      style: TextStyle(color: Colors.white, fontSize: 22),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
