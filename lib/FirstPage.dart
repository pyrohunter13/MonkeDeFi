// ignore_for_file: unnecessary_new, prefer_const_constructors, duplicate_ignore, file_names, prefer_const_literals_to_create_immutables, unused_field, prefer_final_fields

import 'package:flutter/material.dart';
import 'package:wykmonke/MonkeWorldPage.dart';
import 'package:wykmonke/ProfilePage.dart';
import 'package:wykmonke/WalletPage.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPage();
}

class _FirstPage extends State<FirstPage> {
  int _selectedIndex = 0;
  List<Widget> _screenList = [
    WalletPage(),
    MonkeWorldPage(),
    ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screenList[_selectedIndex],
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: Text("WaYaK DeFi"),
        centerTitle: true,
        leading: GestureDetector(
            onTap: () { },
            child: Icon(
              Icons.menu,
            ),
        ),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {},
              child: Icon(
                  Icons.notifications_outlined
              ),
            )
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_wallet),
            label: 'Wallet',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance),
            label: 'Monke World',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box),
            label: 'Profile',

          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.white,
        backgroundColor: Colors.transparent,
        onTap: _onItemTapped,
      ),
    );
  }

  void _onItemTapped(int value) {
    setState(() {
      _selectedIndex = value;
    });
  }
}
