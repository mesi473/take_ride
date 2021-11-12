import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ride_test/home_screen.dart';

class FeresMileScreen extends StatefulWidget {
  FeresMileScreen({Key? key}) : super(key: key);

  @override
  _FeresMileScreenState createState() => _FeresMileScreenState();
}

class _FeresMileScreenState extends State<FeresMileScreen> {
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
        title: Text('FERES MILES'),
      ),
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.all(0),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: 140,
                child: Card(
                  color: Colors.white,
                  elevation: 10,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text('Balance'),
                            SizedBox(width: 120),
                            Text('Pending miles'),
                            Text(''),
                          ],
                        ),
                        Divider(),
                        Row(
                          children: [
                            Text(
                              '0',
                              style: TextStyle(),
                            ),
                            SizedBox(width: 120),
                            Column(
                              children: [
                                Text(
                                  '50',
                                  style: TextStyle(),
                                ),
                                Container(
                                  height: 40,
                                  width: 130,
                                  child: Expanded(
                                    child: Text(
                                      '(to active your miles takes 3 trips)',
                                      style: TextStyle(color: Colors.redAccent),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.6,
                  child: ListView(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 40),
                        child: Row(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.35,
                              height: 200,
                              child: Card(
                                color: Colors.white,
                                elevation: 10,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image(
                                      image: AssetImage(
                                        'assets/images/ride.png',
                                      ),
                                      width: 80,
                                      height: 80,
                                    ),
                                    Text('convert tp'),
                                    Text(
                                      'mobile card',
                                      style: TextStyle(),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(width: 30),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.35,
                              height: 200,
                              child: Card(
                                color: Colors.white,
                                elevation: 10,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image(
                                      image: AssetImage(
                                          'assets/images/ethiopia.png'),
                                      width: 80,
                                      height: 80,
                                    ),
                                    Text('convert tp'),
                                    Text(
                                      'mobile card',
                                      style: TextStyle(),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 40),
                        child: Row(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.35,
                              height: 200,
                              child: Card(
                                color: Colors.white,
                                elevation: 10,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image(
                                      image: AssetImage(
                                        'assets/images/ride.png',
                                      ),
                                      width: 80,
                                      height: 80,
                                    ),
                                    Text('convert tp'),
                                    Text(
                                      'mobile card',
                                      style: TextStyle(),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(width: 30),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.35,
                              height: 200,
                              child: Card(
                                color: Colors.white,
                                elevation: 10,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image(
                                      image: AssetImage(
                                          'assets/images/ethiopia.png'),
                                      width: 80,
                                      height: 80,
                                    ),
                                    Text('convert tp'),
                                    Text(
                                      'mobile card',
                                      style: TextStyle(),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 40),
                        child: Row(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.35,
                              height: 200,
                              child: Card(
                                color: Colors.white,
                                elevation: 10,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image(
                                      image: AssetImage(
                                        'assets/images/ride.png',
                                      ),
                                      width: 80,
                                      height: 80,
                                    ),
                                    Text('convert tp'),
                                    Text(
                                      'mobile card',
                                      style: TextStyle(),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(width: 30),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.35,
                              height: 200,
                              child: Card(
                                color: Colors.white,
                                elevation: 10,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image(
                                      image: AssetImage(
                                          'assets/images/ethiopia.png'),
                                      width: 80,
                                      height: 80,
                                    ),
                                    Text('convert tp'),
                                    Text(
                                      'mobile card',
                                      style: TextStyle(),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
