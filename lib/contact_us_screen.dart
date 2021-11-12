import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ride_test/home_screen.dart';

class ContactUsScreen extends StatefulWidget {
  ContactUsScreen({Key? key}) : super(key: key);

  @override
  _ContactUsScreenState createState() => _ContactUsScreenState();
}

class _ContactUsScreenState extends State<ContactUsScreen> {
  String dropdownValue = 'Driver Atitude';
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
          title: Text('CONTACT US'),
        ),
        body: Container(
          child: Column(
            children: [
              Center(
                child: Column(
                  children: [
                    Icon(
                      Icons.contact_support,
                      size: 100,
                      color: Colors.green[400],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text('Thank you for choosing feres'),
                    SizedBox(
                      height: 30,
                    ),
                    DropdownButton<String>(
                      value: dropdownValue,
                      icon: const Icon(Icons.arrow_downward),
                      iconSize: 24,
                      elevation: 16,
                      style: const TextStyle(color: Colors.deepPurple),
                      underline: Container(
                        height: 2,
                        color: Colors.deepPurpleAccent,
                      ),
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownValue = newValue!;
                        });
                      },
                      items: <String>[
                        'Driver Atitude',
                        'Item Lost',
                        'Feres app',
                        'Complaint',
                        'Thank you',
                        'Advice',
                        'Other'
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.5,
                child: TextField(
                  keyboardType: TextInputType.multiline,
                  maxLines: null,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      labelText: 'Comments',
                      hintText: 'your feedback helps us to serve you better'),
                ),
              )
            ],
          ),
        ));
  }
}
