import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ride_test/home_screen.dart';

class PreOrderScreen extends StatefulWidget {
  PreOrderScreen({Key? key}) : super(key: key);

  @override
  _PreOrderScreenState createState() => _PreOrderScreenState();
}

class _PreOrderScreenState extends State<PreOrderScreen> {
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
        title: Text('PRE-ORDERS'),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.all(0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
          SizedBox(height: 20,),
          Container(
              width: MediaQuery.of(context).size.width * 0.5,
              height: 40,
              
              child: Card(
                color: Colors.green[400],
                elevation: 4,
                child: InkWell(
                    onTap: () {
                    },
                    child: Center(
                      child: Row(
                        children: [
                          Icon(Icons.room,color: Colors.white,),
                          Text(
                            'Upcomming Trips',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    )),
              ),
            ),
            SizedBox(height: 100,),
            Center(
              child: Text(
                'No Item to be displayed'
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}