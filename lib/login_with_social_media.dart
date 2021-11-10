import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:ride_test/login_screen.dart';

class LoginWithSocial extends StatefulWidget {
  LoginWithSocial({Key? key}) : super(key: key);

  @override
  _LoginWithSocialState createState() => _LoginWithSocialState();
}

class _LoginWithSocialState extends State<LoginWithSocial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[400],
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(onPressed: (){
          Get.to(LoginScreen());
        },
         icon:Icon(Icons.arrow_back)
         ),
        backgroundColor: Colors.green[400],
        title: Text(
          'FERES',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        margin: EdgeInsets.only(left: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 10,),
            Row(
              children: [
                Text(
                  'Login With',
                  style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),
                ),
              ],
            ),
            SizedBox(height: 20,),
            GestureDetector(
              onTap: (){

              },
              child: Row(
                children: [
                  Icon(FontAwesomeIcons.facebook,color: Colors.white,),
                  SizedBox(width: 15,),
                  Text(
                    'Facebook',
                    style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),
            GestureDetector(
              onTap: (){
                
              },
              child: Row(children: [Icon(FontAwesomeIcons.google,color:Colors.redAccent), 
              SizedBox(width: 15,),
              Text('Google',
              style: TextStyle(
                color:Colors.white,
                fontWeight: FontWeight.bold
              ),
              )]),
            )
          ],
        ),
      ),
    );
  }
}
