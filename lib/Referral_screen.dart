import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ride_test/home_screen.dart';

class ReferralScreen extends StatefulWidget {
  ReferralScreen({Key? key}) : super(key: key);

  @override
  _ReferralScreenState createState() => _ReferralScreenState();
}

class _ReferralScreenState extends State<ReferralScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[400],
        leading: IconButton(
          onPressed: () {
            Get.to(HomeScreen());
          },
          icon: IconButton(
              onPressed: () {
                Get.to(HomeScreen());
              },
              icon: Icon(
                Icons.arrow_back,
              )),
        ),
        title: Text('REFERRAL'),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.all(0),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.8,
              height: 80,
              child: Card(
                color: Colors.white,
                elevation: 6,
                child: Center(
                  child: Column(
                    children: [
                      Text('Referral code'),
                      Divider(),
                      Text(
                        '917897592',
                        style: TextStyle(),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 100,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.8,
              height: 200,
              child: Image(image: AssetImage('assets/images/ride.png')),
            ),
            SizedBox(
              height: 10,
            ),
            Card(
              color: Colors.white,
              elevation: 6,
              
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
              
                children: [
                  SizedBox(width: 100,),
                  Center(
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Text('Bonus to Friend'),
                            Divider(),
                            Text(
                              'ETB0',
                              style: TextStyle(),
                            ),
                          ],
                        ),
                        SizedBox(width: 30,),
                        Column(
                          children: [
                            Text('Bonus to You'),
                            Divider(),
                            Text(
                              'ETB50',
                              style: TextStyle(),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 40,),
            Container(
              width: MediaQuery.of(context).size.width*0.9,
              height: 50,
              child: Card(
                color:Colors.green[400],
                child: InkWell(
                  onTap: (){
                    
                  },
                  child: Center(
                    child:Text(
                      'SHARE REFERRAL CODE',
                      style: TextStyle(
                        color:Colors.white,
                      )
                    )
                  )
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
