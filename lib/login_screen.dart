import 'package:flutter/material.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:ride_test/home_screen.dart';
import 'package:ride_test/login_with_social_media.dart';
import 'package:get/get.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String flag = "uk";
  List<Image> flages = [
    Image(
      image: AssetImage(
        'assets/images/uk.png',
      ),
      width: 20,
      height: 20,
    ),
    Image(
      image: AssetImage('assets/images/ethiopia.png'),
      width: 20,
      height: 20,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.6,
                color: Colors.green[400],
                child: Column(
                  children: [
                    Image(
                      image: AssetImage('assets/images/horse2.png'),
                      width: 100,
                      height: 160,
                    ),
                    Text('FERES',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 50)),
                    Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        SizedBox(
                          height: 120,
                        ),
                        flages[0],
                        Column(
                          children: [
                            Text(
                              'Language/ቋንቋ',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            Text(
                              'Continue with English',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                )),
            Container(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 5,top: 10),
                    width:MediaQuery.of(context).size.width,
                    height: 40,
                    child: Text('EARN FERES MILES ON EVERY TRIP',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                    ),
                  ),
                  Row(
                    children: [
                      CountryCodePicker(
                        onChanged: print,
                        // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
                        initialSelection: 'IT',
                        favorite: ['+39', 'FR'],
                        // optional. Shows only country name and flag
                        showCountryOnly: false,
                        // optional. Shows only country name and flag when popup is closed.
                        showOnlyCountryWhenClosed: false,
                        // optional. aligns the flag and the Text left
                        alignLeft: false,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width*0.5,
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              labelText: 'Phone Number',
                              hintText: '917897592'),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 40,),
                  GestureDetector(
                    onTap:(){
                      Get.to(LoginWithSocial());
                    },
                    child: Text(
                      'Connect with social',
                  
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                    color: Colors.green[400]
                      ),
                    ),
                  ),
                  SizedBox(height: 10,)
                ],
              ),
            ),
            FloatingActionButton(onPressed: (){
              Get.to(HomeScreen());
            },
            backgroundColor: Colors.green[400],
            child: Icon(Icons.arrow_forward_ios),
            )
          ],
        ),
      ),
    );
  }
}
