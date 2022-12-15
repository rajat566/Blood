import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                margin: EdgeInsets.only(
                  top: 70,
                ),
                child: Column(
                  children: [
                    CircleAvatar(
                        backgroundImage: ExactAssetImage("images/o.jpg"),
                        radius: 30),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Blood Donation",
                      style:
                          TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    Text(
                      "We just need your register Email id",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
                    ),
                    Text("to set your password reset Instructions",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w300))
                  ],
                )),
            SizedBox(
              height: 40,
            ),
            Form(
                child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        labelText: "Email", hintText: "Email Id"),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      MaterialButton(
                        onPressed: () {
                          // Navigator.push(
                          //    context,
                          //   MaterialPageRoute(
                          //     builder: (context) => LoginScreen()));
                        },
                        child: Text(
                          "Login?",
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  MaterialButton(
                    minWidth: double.infinity,
                    color: Color.fromARGB(255, 248, 99, 114),
                    onPressed: () {
                      // Navigator.push(context,
                      //  MaterialPageRoute(builder: (context) => LoginScreen()));
                    },
                    child: Text(
                      "PASSWORD RESET",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  MaterialButton(
                    onPressed: () {
                      // Navigator.push(context,
                      //  MaterialPageRoute(builder: (context) => LoginScreen()));
                    },
                    child: Text("Need Help?",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w300)),
                  ),
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
