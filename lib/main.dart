// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, annotate_overrides, prefer_const_literals_to_create_immutables, camel_case_types, prefer_const_constructors_in_immutables

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wykmonke/Deposit.dart';
import 'package:wykmonke/Withdraw.dart';
import 'package:wykmonke/firstPage.dart';

Future main() async {
  await dotenv.load(fileName: ".env");
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => splashScreen(),
        '/first': (context) => FirstPage(),
        '/withdraw': (context) => Withdraw(),
        '/deposit': (context) => Deposit(),
      },
    );
  }
}

class splashScreen extends StatefulWidget {
  splashScreen({Key? key}) : super(key: key);
  @override
  _splashScreenState createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.pop(context);
      Navigator.pushNamed(context, '/first');
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(11, 12, 54, 1),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 50,
              ),
              Padding(padding: EdgeInsets.only(top: 40.0)),
              CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
              )
            ],
          ),
        ),
      ),
    );
  }
}

