// ignore_for_file: prefer_const_constructors, duplicate_ignore, prefer_const_literals_to_create_immutables, file_names

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool editable = false;

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
                border: Border.all(color: Colors.white)
              ),

              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      children: [
                        Text('Profile Page', 
                        textAlign: TextAlign.left, 
                        style: TextStyle(
                        color: Colors.white),),
                      ],
                    ),
                  ),

                  Align(
                  alignment: Alignment.centerLeft,
                    child: Column(
                      children: [
                          TextButton(style: TextButton.styleFrom(
                            backgroundColor: Colors.green, 
                            primary: Colors.black), 
                            onPressed: () {
                              setState(() {
                                editable = !editable;
                              });
                            }, 
                            child: Text('edit')),
                      ],
                    ),
                  ),




                  Divider(
                    thickness: 3,
                    color: Colors.white
                  ),

                  SizedBox(height: 10,),

                  Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      children: [
                        Text('Verification', 
                        textAlign: TextAlign.left, 
                        style: TextStyle(
                        color: Colors.white),),
                      ],
                    ),
                  ),
                    
                  SizedBox(height: 10,),

                  TextFormField(
                    enabled: false,
                    decoration: InputDecoration(labelText: "", fillColor: Colors.black, filled: true),
                    initialValue: 'Verified',
                    style: TextStyle(color:Colors.white),
                    keyboardType: TextInputType.number,
                    inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.digitsOnly
                    ], // Only numbers can be entered
                  ),

                  Divider(
                    thickness: 3,
                    color: Colors.white
                  ),

                  SizedBox(height: 10,),

                  Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      children: [
                        Text('Name', 
                            textAlign: TextAlign.left, 
                            style: TextStyle(
                            color: Colors.white),),
                      ],
                    ),
                  ),
                    
                  SizedBox(height: 10,),

                  TextFormField(
                    enabled: editable,
                    decoration: InputDecoration(labelText: "e.g. Zuqini Macaroni", fillColor: Colors.black, filled: true),
                    initialValue: "Kevin Iskandar", 
                    style: TextStyle(color:Colors.white),
                    keyboardType: TextInputType.name,
                  ),
                  

                  Divider(
                    thickness: 3,
                    color: Colors.white
                  ),

                  SizedBox(height: 10,),

                  Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      children: [
                        Text("Username", 
                        textAlign: TextAlign.left, 
                        style: TextStyle(
                        color: Colors.white),),
                      ],
                    ),
                  ),
                    
                  SizedBox(height: 10,),

                  TextFormField(
                    enabled: false,
                    decoration: InputDecoration(labelText: "", fillColor: Colors.black, filled: true),
                    initialValue: "Kvniskndr128",
                    style: TextStyle(color:Colors.white),
                    keyboardType: TextInputType.text,
                  ),

                  Divider(
                    thickness: 3,
                    color: Colors.white
                  ),

                  SizedBox(height: 10,),

                  Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      children: [
                        Text('Email', 
                        textAlign: TextAlign.left, 
                        style: TextStyle(
                        color: Colors.white),),
                      ],
                    ),
                  ),
                    
                  SizedBox(height: 10,),

                  TextFormField(
                    enabled: editable,
                    decoration: InputDecoration(labelText: "e.g. example@mail.com", fillColor: Colors.black, filled: true),
                    initialValue: "Keviniskandar@gmail.com",
                    style: TextStyle(color:Colors.white),
                    keyboardType: TextInputType.emailAddress,
                  ),

                  Divider(
                    thickness: 3,
                    color: Colors.white
                  ),

                  SizedBox(height: 10,),

                  Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      children: [
                        Text('Mobile Number', 
                        textAlign: TextAlign.left, 
                        style: TextStyle(
                        color: Colors.white),),
                      ],
                    ),
                  ),
                    
                  SizedBox(height: 10,),

                  TextFormField(
                    enabled: editable,
                    decoration: InputDecoration(labelText: "e.g. 0821354786", fillColor: Colors.black, filled: true),
                    initialValue: "0812888888",
                    style: TextStyle(color:Colors.white),
                    keyboardType: TextInputType.number,
                    inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.digitsOnly
                    ], // Only numbers can be entered
                  ),

                  Divider(
                    thickness: 3,
                    color: Colors.white
                  ),

                  SizedBox(height: 10,),

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

                  TextFormField(
                    enabled: false,
                    decoration: InputDecoration(labelText: "", fillColor: Colors.black, filled: true),
                    initialValue: "JL. Pulau Masa Depan No. 17",
                    style: TextStyle(color:Colors.white),
                    keyboardType: TextInputType.streetAddress,
                  ),

                  Divider(
                    thickness: 3,
                    color: Colors.white
                  ),

                  SizedBox(height: 10,),

                  Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      children: [
                        Text('Emergency Contact', 
                        textAlign: TextAlign.left, 
                        style: TextStyle(
                        color: Colors.white),),
                      ],
                    ),
                  ),
                    
                  SizedBox(height: 10,),

                  TextFormField(
                    enabled: false,
                    decoration: InputDecoration(labelText: "", fillColor: Colors.black, filled: true),
                    initialValue: "Tes123",
                    style: TextStyle(color:Colors.white),
                    keyboardType: TextInputType.number,
                  ),

                  Divider(
                    thickness: 3,
                    color: Colors.white
                  ),
                ],
              ),
            ),
        ],
        ),
      ),
    );
  }
}