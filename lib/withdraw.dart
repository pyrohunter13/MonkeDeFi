import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class withdraw extends StatelessWidget {
  const withdraw({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        decoration: BoxDecoration(
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
           Container(
              margin: const EdgeInsets.fromLTRB(50, 100, 50, 150),
              padding: const EdgeInsets.all(25),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white)
              ),

              child: Column(
                children: [
                  Text("Withdraw", style: TextStyle(color: Colors.white, fontSize: 40),),

                  SizedBox(height: 20,),
                  
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      children: [
                        Text('Enter Amount to Withdraw', 
                        textAlign: TextAlign.left, 
                        style: TextStyle(
                        color: Colors.white),),
                      ],
                    ),
                  ),

                  SizedBox(height: 10,),
                    

                  TextField(
                    decoration: new InputDecoration(labelText: "Amount", fillColor: Colors.white, filled: true),
                    keyboardType: TextInputType.number,
                    inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.digitsOnly
                    ], // Only numbers can be entered
                  ),

                  SizedBox(height: 50,),

                  Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      children: [
                        Text('Address', 
                        textAlign: TextAlign.left, 
                        style: TextStyle(
                        color: Colors.white),),
                      ],
                    ),
                  ),

                  SizedBox(height: 10,),


                  TextField(
                  decoration: new InputDecoration(labelText: "Amount", fillColor: Colors.white, filled: true),
                  keyboardType: TextInputType.number,
                  inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.digitsOnly
                  ], // Only numbers can be entered
                  ),
                ],
              ),
            ),


           Align(
              alignment: Alignment.bottomCenter,
              child: RaisedButton(
                onPressed: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => const genre()),
                  // );
                },
                shape: StadiumBorder(),
                color: Colors.white,
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 50),
                  decoration: ShapeDecoration(
                    shape: StadiumBorder(),
                  ),
                  child: Text(
                    "Confirm",
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Open Sans'),
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