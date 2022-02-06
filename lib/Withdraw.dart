// ignore: file_names
// ignore_for_file: prefer_const_constructors_in_immutables, file_names, duplicate_ignore, unnecessary_new, duplicate_import, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/material.dart';


class Withdraw extends StatefulWidget {
  const Withdraw({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _WithdrawState();
  }
}



class _WithdrawState extends State<Withdraw> {
  TextEditingController inputAddress = TextEditingController();
  TextEditingController inputAmount = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text("Withdraw"),
          backgroundColor: Colors.red,
        ),
        
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Enter Amount to Withdraw",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              Container(
                width: 350,
                child:
                  TextFormField(
                    controller: inputAmount ,
                    decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(),
                    ),
                    hintText: 'Amount'
                  ),
                ),
              ),
              Text('Address',
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              // ignore: prefer_const_constructors
              Container(
                width: 350,
                child:
                  TextFormField(
                    controller: inputAddress ,
                    decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(),
                    ),
                    hintText: 'Address'
                  ),
                ),
              ),
              
              Padding(padding: EdgeInsets.only(top: 60.0)),
              MaterialButton(
                shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0)),
                minWidth: 200,
                height : 50,
                color: Colors.red,
                onPressed: (){},
                child: const Text('Confirm',
                  style: TextStyle(
                      fontSize: 24, 
                      color: Colors.black,
                  ),),
                ),

                // ignore: prefer_const_constructors
                Padding(padding: EdgeInsets.only(top: 80.0)),
            ],
          ),
        ),
      ),
      theme: new ThemeData(scaffoldBackgroundColor: Colors.grey[700]),
    );
  }
}