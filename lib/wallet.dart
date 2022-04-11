import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class wallet extends StatelessWidget {
  const wallet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
         children: [
           Container(
              margin: const EdgeInsets.fromLTRB(50, 100, 50, 150),
              padding: const EdgeInsets.all(25),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [0.1, 0.5],
                  colors: [
                    // Colors are easy thanks to Flutter's Colors class.
                    Colors.black,
                    Color.fromRGBO(0, 29, 104, 0.8),
                  ],
                ),
              ),

              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      children: [
                        Text('Balance', 
                        textAlign: TextAlign.center, 
                        style: TextStyle(
                        color: Colors.white),),
                      ],
                    ),
                  ),

                  Divider(
                    thickness: 3,
                    color: Colors.white
                  ),

                  Row(
                    children: [
                      TextButton(style: TextButton.styleFrom(
                        backgroundColor: Colors.green, 
                        primary: Colors.black), 
                        onPressed: () {

                         }, 
                        child: Text('Refresh')),
                        TextButton(style: TextButton.styleFrom(
                        backgroundColor: Colors.blue, 
                        primary: Colors.black), 
                        onPressed: () {
                          
                         }, 
                        child: Text('Deposit')),
                        TextButton(style: TextButton.styleFrom(
                        backgroundColor: Colors.red, 
                        primary: Colors.black), 
                        onPressed: () {
                          
                         }, 
                        child: Text('Withdraw')),
                    ],
                  ),

                  SizedBox(height: 40,),

                  Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('BNB', style: TextStyle(fontSize: 20, color: Colors.white),),
                            Text('0.0000', style: TextStyle(fontSize: 20, color: Colors.white),),
                          ],
                        )
                      ],
                    ),
                  ),
                    
                  SizedBox(height: 10,),

                  Divider(
                    thickness: 3,
                    color: Colors.white
                  ),

                  SizedBox(height: 25,),

                  Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Bitcoin', style: TextStyle(fontSize: 20, color: Colors.white),),
                            Text('0.0000', style: TextStyle(fontSize: 20, color: Colors.white),),
                          ],
                        )
                      ],
                    ),
                  ),
                    
                  SizedBox(height: 10,),

                  Divider(
                    thickness: 3,
                    color: Colors.white
                  ),

                  SizedBox(height: 25,),

                  Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('DogeCoin', style: TextStyle(fontSize: 20, color: Colors.white),),
                            Text('0.0000', style: TextStyle(fontSize: 20, color: Colors.white),),
                          ],
                        )
                      ],
                    ),
                  ),
                    
                  SizedBox(height: 10,),

                  Divider(
                    thickness: 3,
                    color: Colors.white
                  ),

                  SizedBox(height: 25,),

                  Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Ethereum', style: TextStyle(fontSize: 20, color: Colors.white),),
                            Text('0.0000', style: TextStyle(fontSize: 20, color: Colors.white),),
                          ],
                        )
                      ],
                    ),
                  ),
                    
                  SizedBox(height: 10,),

                  Divider(
                    thickness: 3,
                    color: Colors.white
                  ),

                  SizedBox(height: 25,),
                ],
              ),
            ),
         ],
        ),
      ),
    );
  }
}