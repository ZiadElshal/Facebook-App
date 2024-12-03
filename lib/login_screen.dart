import 'package:assignment2_part1/home_screen.dart';
import 'package:assignment2_part1/text_field.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  static const String routeName = "login";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.purple.shade50,
              Colors.blue.shade50,
            ],
          ),
        ),
        child: Column(
            children: [

          SizedBox(height: 160,),

          Image.asset("assets/images/facebook-logo.png",
            width: 100,
            height: 100,
          ),

          SizedBox(height: 40,),

          TextFieldWidget(text: "Mobile Number or Email",),
          TextFieldWidget(text: "Password"),

          SizedBox(height: 30,),

          ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
                textStyle: TextStyle(fontSize: 18),
                padding: EdgeInsets.symmetric(horizontal: 150, vertical: 15),
              ),
              onPressed: () {
                Navigator.of(context).pushNamed(HomeScreen.routeName);
              },
              child: Text("Log in")),


          TextButton(
            style: TextButton.styleFrom(
              foregroundColor: Colors.black,
              textStyle: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500
              )
            ),
              onPressed: () {},
              child: Text("Forgot password?")),

          SizedBox(height: 120,),

          OutlinedButton(
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.blue.shade600,
                side: BorderSide(
                    color: Colors.blue.shade600,
                    width: 1.2), // Set border color and width
                textStyle: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500
                ),
                padding: EdgeInsets.symmetric(horizontal: 95, vertical: 15),
              ),
              onPressed: () {},
              child: Text("Create new account"))
        ]
        ),
      ),
    );
  }
}
