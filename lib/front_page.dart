import 'dart:async';
import 'package:get/get.dart';

import 'package:flutter/material.dart';
import 'package:ride_test/login_screen.dart';

class FrontPage extends StatefulWidget {
  FrontPage({Key? key}) : super(key: key);

  @override
  _FrontPageState createState() => _FrontPageState();
}

class _FrontPageState extends State<FrontPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[400],
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/horse2.png',
                width: MediaQuery.of(context).size.width * 0.6,
              ),
              Text("horse ride best choice",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontFamily: 'DancingFont')),
              GestureDetector(
                onTap: () {
                  Get.to(LoginScreen());
                },
                child: CircularProgressIndicator(
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
