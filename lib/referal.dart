import 'package:flutter/material.dart';

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
      appBar: AppBar(title: Center(child: Text('Referral'))),
      body: Container(
          child: Column(
        children: [
          Icon(Icons.messenger_sharp),
          Container(
            width: MediaQuery.of(context).size.width * 0.5,
            child: TextField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  labelText: 'refral number',
                  hintText: '1234'),
            ),
          ),
          Text(
            'you can add referral code provided by your friend here to get free credits. If you do not have one or don\'t have one or dont want to insert then just click on skip button below.',
            
          
          ),
          Stack(
            children: [
              Positioned(child: 
              Row(children: [
                Container(
                  child: Card(
                    color: Colors.green[400],
                    child: InkWell(
                      onTap: (){},
                      child:Text(
                        'Skip'
                      )
                    )
                  )
                ),
                Container(
                  child: Card(
                    color: Colors.green[400],
                    child: InkWell(
                      onTap: (){},
                      child:Text(
                        'Submit'
                      )
                    )
                  )
                )
              ],)
              )
            ],
          )
        ],
      )),
    );
  
  }
}
