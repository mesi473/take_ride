import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ride_test/login_screen.dart';
import 'package:ride_test/referal.dart';

class AuthCode extends StatefulWidget {
  AuthCode({Key? key}) : super(key: key);

  @override
  _AuthCodeState createState() => _AuthCodeState();
}

class _AuthCodeState extends State<AuthCode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.green[400],
          title: Center(child: Text('Code')),
          leading: IconButton(
              onPressed: () {
                Get.to(LoginScreen());
              },
              icon: Icon(
                Icons.arrow_back,
              ))),
      body: Container(
          child: Column(
        children: [
          Icon(Icons.messenger_sharp,size: 100,color: Colors.green[400]),
          Container(
            width: MediaQuery.of(context).size.width * 0.5,
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(0.5)),
                  labelText: 'refral number',
                  hintText: '1234'),
            ),
          ),
          SizedBox(height:20),
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.5,
              height: 40,
              
              child: Card(
                color: Colors.green[400],
                elevation: 4,
                child: InkWell(
                    onTap: () {
                      Get.to(Referal());
                    },
                    child: Center(
                      child: Text(
                        'processed',
                        style: TextStyle(color: Colors.white),
                      ),
                    )),
              ),
            ),
          )
        ],
      )),
    );
  }
}
