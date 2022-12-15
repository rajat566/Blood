// ignore_for_file: deprecated_member_use

import 'package:blood/project/login1.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'center_widget/center_widget.dart';
import 'center_widget/components/login_content.dart';

class SignupScreenn extends StatefulWidget {
  const SignupScreenn({Key? key}) : super(key: key);

  @override
  State<SignupScreenn> createState() => _SignupScreennState();
}

class _SignupScreennState extends State<SignupScreenn> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            top: -160,
            left: -30,
            child: topWidget(screenSize.width),
          ),
          Positioned(
            bottom: -180,
            left: -40,
            child: bottomWidget(screenSize.width),
          ),
          CenterWidget(size: screenSize),
          SingleChildScrollView(child: const Lofin())
        ],
      ),
    );
  }

  Widget topWidget(double screenWidth) {
    return Transform.rotate(
      angle: -35 * math.pi / 180,
      child: Container(
        width: 1.2 * screenWidth,
        height: 1.2 * screenWidth,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(150),
          gradient: const LinearGradient(
            begin: Alignment(-0.2, -0.8),
            end: Alignment.bottomCenter,
            colors: [
              Color(0x007CBFCF),
              Color(0xB316BFC4),
            ],
          ),
        ),
      ),
    );
  }

  Widget bottomWidget(double screenWidth) {
    return Container(
      width: 1.5 * screenWidth,
      height: 1.5 * screenWidth,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
          begin: Alignment(0.6, -1.1),
          end: Alignment(0.7, 0.8),
          colors: [
            Color(0xDB4BE8CC),
            Color(0x005CDBCF),
          ],
        ),
      ),
    );
  }
}

class Lofin extends StatelessWidget {
  const Lofin({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    String? email;
    String? password;

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 150, top: 80),
          child: Container(
              margin: const EdgeInsets.only(
                top: 40,
              ),
              child: Column(
                children: [
                  const Text(
                    "Create",
                    style: const TextStyle(
                        fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  const Text(
                    "Account",
                    style: const TextStyle(
                        fontSize: 30, fontWeight: FontWeight.bold),
                  )
                ],
              )),
        ),
        const SizedBox(
          height: 60,
        ),
        Form(
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter email';
                      }
                      return null;
                    },
                    onSaved: (val) {
                      email = val;
                    },
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(18),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        filled: true,
                        hintStyle: TextStyle(color: Colors.grey[800]),
                        hintText: "Enter Email",
                        fillColor: Colors.white),
                  ),
                  // TextFormField(
                  //   validator: (value) {
                  //     if (value!.isEmpty) {
                  //       return 'Please enter email';
                  //     }
                  //     return null;
                  //   },
                  //   onSaved: (val) {
                  //     email = val;
                  //   },
                  //   // controller: MobileNoController,
                  //   decoration: const InputDecoration(
                  //       // focusedBorder: const OutlineInputBorder(
                  //       //   borderSide:
                  //       //     const BorderSide(color: Colors.white)),
                  //       hintText: "Email",
                  //       border: InputBorder.none),
                  // ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter password';
                      }
                      return null;
                    },
                    onSaved: (val) {
                      email = val;
                    },
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(18),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        filled: true,
                        hintStyle: TextStyle(color: Colors.grey[800]),
                        hintText: "Password",
                        fillColor: Colors.white),
                  ),

                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter  username';
                      }
                      return null;
                    },
                    onSaved: (val) {
                      email = val;
                    },
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(18),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        filled: true,
                        hintStyle: TextStyle(color: Colors.grey[800]),
                        hintText: " Username",
                        fillColor: Colors.white),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      print("Login");
                      if (_formKey.currentState!.validate()) {
                        _formKey.currentState!.save();
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          vertical: 7, horizontal: 24),
                      shape: const StadiumBorder(),

                      //  primary: kSecondaryColor,
                      elevation: 8,
                      shadowColor: Colors.black87,
                    ),
                    child: Text(
                      "Sign Up",
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text("Forget password?"),
                  const SizedBox(
                    height: 60,
                  ),
                  // Padding(
                  //   padding: const EdgeInsets.only(left: 50),
                  //   child: Row(
                  //     children: [
                  //       Text("Already have an account?"),
                  //       FlatButton(
                  //           onPressed: () {
                  //             // Navigator.push(
                  //             //     context,
                  //             //     MaterialPageRoute(
                  //             //         builder: (context) => LoginScreenn()));
                  //           },
                  //           child: Padding(
                  //             padding: const EdgeInsets.only(right: 45),
                  //             child: Text(
                  //               "Login",
                  //               style: TextStyle(color: Colors.blue),
                  //             ),
                  //           ))
                  //     ],
                  //   ),
                  // ),
                ],
              ),
            ))
      ],
    );
  }
}
