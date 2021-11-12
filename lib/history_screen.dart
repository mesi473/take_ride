import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ride_test/home_screen.dart';

class HistoryScreen extends StatefulWidget {
  HistoryScreen({Key? key}) : super(key: key);

  @override
  _HistoryScreenState createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[400],
        leading: IconButton(
          onPressed: (){
            Get.to(HomeScreen());
          },
          icon: IconButton(
            onPressed:(){
              Get.to(HomeScreen());
            },
            icon: Icon(Icons.arrow_back,
            
            )),
        ),
        title: Text('HISTORY'),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.all(0),
        child: Text('')
      ),
    );
  }
}