import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ride_test/home_screen.dart';

class EBirrScreen extends StatefulWidget {
  EBirrScreen({Key? key}) : super(key: key);

  @override
  _EBirrScreenState createState() => _EBirrScreenState();
}

class _EBirrScreenState extends State<EBirrScreen> {
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
        title: Text('EBIRR'),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.all(0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 20,),
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color:Colors.green[400],
              ),
              child:Center(
                child: Column(
                  
                  children:[
                    SizedBox(height: 10,),
                    Icon(Icons.money),
                    Text('Ebirr')
                  ]
                ),
              )
            ),
            SizedBox(height: 20,),
            Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 100,
                  child: Image(image: AssetImage('assets/images/wave.png')),

                ),
                Positioned(
                  left: 40,
                  top: 50,
                  child: Text(
                    
                    'Please enter your PIN/Passsword',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    )
                  ),
                )
              ],
            ),
            SizedBox(height: 20,),
            Container(
            width: MediaQuery.of(context).size.width * 0.5,
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      
                      borderRadius: BorderRadius.circular(0.5)),
                  labelText: 'Enter PIN/Password',
                  
                  ),
            ),
          ),
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
                      child: Text(
                        'Login',
                        style: TextStyle(color: Colors.white),
                      ),
                    )),
              ),
            ),
            Center(
              child: Text(
                'Don\'t have an account yet ?'
              ),
            ),
            Center(
              child: GestureDetector(
                onTap: (){

                },
                child: Text(
                  'Register',
                  style: TextStyle(
                    color: Colors.green[400]
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}