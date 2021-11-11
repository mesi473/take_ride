import 'package:flutter/material.dart';

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
        title: Center(child: Text('Code')),
        leading:Icon(Icons.arrow_back)
        ),
      body: Container(
          child: Column(
        children: [
          Icon(Icons.messenger_sharp),
          Container(
            width: MediaQuery.of(context).size.width * 0.5,
            child: TextField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  labelText: 'refral number',
                  hintText: '1234'),
            ),
          ),
        ],
      )),
    );
  }
}
