import 'package:blood/project/bottomnav.dart';
import 'package:blood/project/signup.dart';
import 'package:blood/project/utils/homepagescreen.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'center_widget/center_widget.dart';
import 'center_widget/components/login_content.dart';
import 'package:http/http.dart' as http;

class LoginScreenn extends StatefulWidget {
  const LoginScreenn({Key? key}) : super(key: key);

  @override
  State<LoginScreenn> createState() => _LoginScreennState();
}

class _LoginScreennState extends State<LoginScreenn> {
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

class Lofin extends StatefulWidget {
  const Lofin({
    Key? key,
  }) : super(key: key);

  @override
  State<Lofin> createState() => _LofinState();
}

class _LofinState extends State<Lofin> {
  @override
  Widget build(BuildContext context) {
    TextEditingController emailcontroller = TextEditingController();
    TextEditingController passwordcontroller = TextEditingController();

    void login(String email, password) async {
      try {
        http.Response response =
            await http.post(Uri.parse("https://reqres.in/api/register"), body: {
          'email': email,
          'password': password,
        });
        if (response.statusCode == 200) {
          print("Account created success");
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => HomePagebar()));
        } else {
          print("Failed");
        }
      } catch (e) {
        print(e.toString());
      }
    }

    final _formKey = GlobalKey<FormState>();
    String? email;
    String? password;
    bool hasMessage = false;

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
                    "Welcome",
                    style: const TextStyle(
                        fontSize: 30, fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(
                    height: 0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 60),
                    child: const Text(
                      "Back",
                      style: const TextStyle(
                          fontSize: 30, fontWeight: FontWeight.w400),
                    ),
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
              padding: const EdgeInsets.all(18.0),
              child: Column(
                children: [
                  TextFormField(
                    controller: emailcontroller,
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
                        hintText: "Email",
                        fillColor: Colors.white),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  TextFormField(
                    controller: passwordcontroller,
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
                        hintText: " Password",
                        fillColor: Colors.white),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        _formKey.currentState!.save();
                      }
                      login(emailcontroller.text, passwordcontroller.text);
                      //  Navigator.push(
                      //   context,
                      //  MaterialPageRoute(
                      //     builder: (context) => HomePagebar()));
                      print("Login");
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
                      "Log In",
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Forget password?",
                    style: TextStyle(color: Color.fromARGB(255, 34, 3, 94)),
                  ),
                  const SizedBox(
                    height: 170,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: Row(
                      children: [
                        const Text("Dont have an account ?"),
                        MaterialButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SignupScreenn()));
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(right: 30),
                              child: Text(
                                "Sign up",
                                style: TextStyle(color: Colors.blue),
                              ),
                            ))
                      ],
                    ),
                  ),
                ],
              ),
            ))
      ],
    );
  }
}
