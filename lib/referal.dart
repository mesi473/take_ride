import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ride_test/home_screen.dart';

class Referal extends StatefulWidget {
  Referal({Key? key}) : super(key: key);

  @override
  _ReferalState createState() => _ReferalState();
}

class _ReferalState extends State<Referal> {
  @override
  Widget build(BuildContext context) {
    return 
    
    Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[400],
        automaticallyImplyLeading: false,
        title: Center(child: Text('Referral'))),
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
          SizedBox(height: 50,),
          Padding(
            padding: const EdgeInsets.all(40),
            child: Text(
              'you can add referral code provided by your friend here to get free credits. If you do not have one or don\'t have one or dont want to insert then just click on skip button below.',
              style: TextStyle(
                fontSize: 15,
                
              ),
            
            ),
          ),
          SizedBox(height:100),
          Stack(
            children: [
              Row(children: [
                SizedBox(width: MediaQuery.of(context).size.width*0.05),
                Container(
                  width: MediaQuery.of(context).size.width * 0.4,
                   height: 40,
                  child: Card(
                    elevation: 4,
                    color: Colors.green[400],
                    child: InkWell(
                      onTap: (){
                        Get.to(HomeScreen());
                      },
                      child:Center(
                        child: Text(
                          'Skip',

                        ),
                      )
                    )
                  )
                ),
                SizedBox(width: MediaQuery.of(context).size.width*0.1),
                Container(
                  width: MediaQuery.of(context).size.width * 0.4,
                   height: 40,
                  child: Card(
                    elevation: 4,
                    color: Colors.green[400],
                    child: InkWell(
                      onTap: (){
                        Get.to(HomeScreen());
                      },
                      child:Center(
                        child: Text(
                          'submit'
                        ),
                      )
                    )
                  )
                ),
                SizedBox(width: MediaQuery.of(context).size.width*0.05),
              ],)

            ],
          )
        ],
      )),
    );
  
  }
}
