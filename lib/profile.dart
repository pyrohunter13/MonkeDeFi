import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class profile extends StatefulWidget {
  const profile({Key? key}) : super(key: key);

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  bool editableName = false;
  bool editableEmail = false;
  bool editablePhone = false;

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
        child: SingleChildScrollView(
        child: Column(
         children: [
           Container(
              margin: const EdgeInsets.fromLTRB(30, 100, 30, 100),
              padding: const EdgeInsets.all(25),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white)
              ),

              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage('assets/images/juki.jpg'),
                          radius: 30,
                        ),

                        SizedBox(width: 10,),

                        Text('Profile Page', 
                        textAlign: TextAlign.left, 
                        style: TextStyle(
                        color: Colors.white),),
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
                    decoration: new InputDecoration(labelText: "", filled: true),
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

                  Row(
                      children: <Widget>[
                          Container(
                            width: 230,
                            child: TextFormField(
                              enabled: editableName,
                              decoration: new InputDecoration(labelText: "e.g. Zuqini Macaroni", filled: true),
                              initialValue: "Kevin Iskandar", 
                              style: TextStyle(color:Colors.white),
                              keyboardType: TextInputType.name,
                            ),
                          ),
                          Container(
                            height: 25,
                            child: IconButton(
                              icon: editableName
                              ? Icon(Icons.edit_sharp)
                              : Icon(Icons.edit_outlined),
                              color: Colors.white,
                              onPressed: () {
                              setState(() {
                              editableName = !editableName;
                            });
                          },
                            ),
                          )
                      ]
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
                    decoration: new InputDecoration(labelText: "", filled: true),
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

                  Row(
                      children: <Widget>[
                          Container(
                            width: 230,
                            child: TextFormField(
                                enabled: editableEmail,
                                decoration: new InputDecoration(labelText: "e.g. example@mail.com",  filled: true),
                                initialValue: "Keviniskandar@gmail.com",
                                style: TextStyle(color:Colors.white),
                                keyboardType: TextInputType.emailAddress,
                            ),
                          ),
                          Container(
                            height: 25,
                            child: IconButton(
                              icon: editableEmail
                              ? Icon(Icons.edit_sharp)
                              : Icon(Icons.edit_outlined), 
                              color: Colors.white,
                              onPressed: () {
                                setState(() {
                                  editableEmail = !editableEmail;
                                });
                              },
                            ),
                          )
                      ]
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

                  Row(
                      children: <Widget>[
                          Container(
                            width: 230,
                            child: TextFormField(
                                enabled: editablePhone,
                                decoration: new InputDecoration(labelText: "e.g. 0821354786",  filled: true),
                                initialValue: "0812888888",
                                style: TextStyle(color:Colors.white),
                                keyboardType: TextInputType.number,
                                inputFormatters: <TextInputFormatter>[
                                    FilteringTextInputFormatter.digitsOnly
                                ], // Only numbers can be entered
                            ),
                          ),
                          Container(
                            height: 25,
                            child: IconButton(
                              icon: editablePhone
                              ? Icon(Icons.edit_sharp)
                              : Icon(Icons.edit_outlined),
                              color: Colors.white,
                              onPressed: () {
                                setState(() {
                                  editablePhone = !editablePhone;
                                });
                              },
                            ),
                          )
                      ]
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
                    decoration: new InputDecoration(labelText: "",  filled: true),
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
                    decoration: new InputDecoration(labelText: "",  filled: true),
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
      ),
      
    );
  }
}