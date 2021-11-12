import 'dart:async';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:ride_test/Ferse_miles_screen.dart';
import 'package:ride_test/Referral_screen.dart';
import 'package:ride_test/contact_us_screen.dart';
import 'package:ride_test/ebirr_screen.dart';
import 'package:ride_test/history_screen.dart';
import 'package:ride_test/pre_order_screen.dart';
import 'package:ride_test/referal.dart';
// import 'package:ride_test/drawer.dart';
// import 'package:ride_test/map_screen.dart';
// import 'package:ride_test/translation/translate.dart';


class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  String _chosenValue = 'English';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: Drawer(
      child: ListView(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.2,
                width: MediaQuery.of(context).size.width,
            color:Colors.green[400],
            child: Padding(
              padding: const EdgeInsets.only(top:40),
              child: Center(
                
                child: Column(
                  children: [
                    CircleAvatar(
                      child: Image(image: AssetImage('assets/images/ethiopia.png')),
                    ),
                    Text(
                      'Meseret Kifle'
                    )
                  ],
                ),
              ),
            )
          ),
          Divider(
            indent: 15,
            endIndent: 15,
          ),
          Padding(
              padding: EdgeInsets.only(
                top: 10,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      
                    },
                    child: ListTile(
                      onTap: (){
                        Get.to(EBirrScreen());
                      },
                      leading: Icon(
                        FontAwesomeIcons.dollarSign,
                        color: Colors.green[400],
                      ),
                      title: Text(
                        "Ebir",
                        // Translation.of(context).trans('home'),
                        style: TextStyle(
                          color: Colors.green[400],
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(PreOrderScreen());
                    },
                    child: ListTile(
                      leading: Icon(
                        FontAwesomeIcons.doorClosed,
                        color: Colors.green[400],
                      ),
                      title: Text(
                        'Pre-orders',
                        // Translation.of(context).trans('income'),
                        style: TextStyle(
                          color: Colors.green[400],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(HistoryScreen());
                    },
                    child: ListTile(
                      leading: Icon(
                        Icons.history,
                        color: Colors.green[400],
                      ),
                      title: Text(
                        'History',
                        // Translation.of(context).trans('expense'),
                        style: TextStyle(
                          color: Colors.green[400],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  
                  SizedBox(
                    height: 5,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(ReferralScreen());
                    },
                    child: ListTile(
                      leading: Icon(
                        FontAwesomeIcons.link,
                        color: Colors.green[400],
                      ),
                      title: Text(
                        'Referral',
                        // Translation.of(context).trans('stock'),
                        style: TextStyle(
                          color: Colors.green[400],
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(FeresMileScreen());
                    },
                    child: ListTile(
                      leading: Icon(
                        FontAwesomeIcons.moneyBill,
                        color: Colors.green[400],
                      ),
                      title: Text(
                        'Feres Miles',
                        // Translation.of(context).trans('stock'),
                        style: TextStyle(
                          color: Colors.green[400],
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(ContactUsScreen());
                    },
                    child: ListTile(
                      leading: Icon(
                        Icons.contact_support,
                        color: Colors.green[400],
                      ),
                      title: Text(
                        'Contact Us',
                        // Translation.of(context).trans('stock'),
                        style: TextStyle(
                          color: Colors.green[400],
                        ),
                      ),
                    ),
                  ),
                  
                  
                ],
              )),
        
        ],
      ),
    ),
  
      body: Container(
        color: Colors.white,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
            children: [
              
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.5,
                child: Stack(
                  children: [
                    MapSample(),
                    // MapScreen(),
                    Positioned(
                      left: 5,
                      top: 35,
                      child: IconButton(
                        icon: Icon(
                          Icons.account_circle_rounded,
                          color: Colors.green[400],
                          size: 50,
                        ),
                        onPressed: () => _scaffoldKey.currentState!.openDrawer()
                      ),
                    ),
                    Positioned(
                      right: 5,
                      top: 100,
                      child: IconButton(
                        icon: Icon(
                          Icons.phone,
                          color: Colors.green[400],
                        ),
                        onPressed: () => _scaffoldKey.currentState!.openDrawer()
                      ),
                    ),
                    Positioned(
                      right:5,
                      top:35,
                        child: Container(
                      margin: EdgeInsets.only(top: 5),
                      width: 100,
                      height: 30,
                      decoration: BoxDecoration(
                          color: Colors.green[400],
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(50),
                              bottomLeft: Radius.circular(50))),
                      child: Center(
                        child: Text('+5 Bonus',
                            style: TextStyle(color: Colors.white)),
                      ),
                    ))
                  ],
                ),
              ),
              Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.45,
                  child: Column(
                    children: [
                      SizedBox(height:10),
                      Container(
                        width:MediaQuery.of(context).size.width,
                        height: 100,
                        color: Colors.grey[200],
                        child: Row(
                          children:[
                            Icon(Icons.directions_boat,color:Colors.green[400]),
                            SizedBox(width: 20,),
                            Text(
                              'Where to?',
                              style: TextStyle(
                                color: Colors.green[400],
                                fontWeight: FontWeight.bold,
                                fontSize: 30
                              ),
                            )
                          ]
                        ),
                      ),
                      SizedBox(height:10),
                      Container(
                        margin:EdgeInsets.only(left:10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(Icons.room),
                            SizedBox(width: 10,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'A2',
                                  style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25                              ),
                                ),
                                Text(
                                  'Addis Ababa',
                                  style: TextStyle(
                                  color: Colors.black45,
                                  fontSize: 20
                                ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(height:10),
                      Container(
                        margin:EdgeInsets.only(left:10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(Icons.room),
                            SizedBox(width: 10,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'A2',
                                  style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25                              ),
                                ),
                                Text(
                                  'Addis Ababa',
                                  style: TextStyle(
                                  color: Colors.black45,
                                  fontSize: 20
                                ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(height:10),
                      Container(
                        margin:EdgeInsets.only(left:10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(Icons.room),
                            SizedBox(width: 10,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'A2',
                                  style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25                              ),
                                ),
                                Text(
                                  'Addis Ababa',
                                  style: TextStyle(
                                  color: Colors.black45,
                                  fontSize: 20
                                ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ))
            ],
          ),
        ),
      ),
      
      
    );
  }
}

class MapSample extends StatefulWidget {
  @override
  State<MapSample> createState() => MapSampleState();
}

class MapSampleState extends State<MapSample> {
  Completer<GoogleMapController> _controller = Completer();

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  static final CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(37.43296265331129, -122.08832357078792),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: GoogleMap(
        mapType: MapType.hybrid,
        initialCameraPosition: _kGooglePlex,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
      ),
    );
  }

  Future<void> _goToTheLake() async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
  }
}
