// ignore_for_file: prefer__ructors, prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gupshup_corner/Screens/Events/events.dart';
import 'package:gupshup_corner/Screens/SignIn/sign_in.dart';
import 'ChatBox/chatbox.dart';
import 'Home/home.dart';
import 'Location/locator.dart';
import 'Me/profile.dart';

class BottomBar extends StatefulWidget {
  BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;
  late String _title;
  @override
  // ignore: must_call_super
  initState() {
    _title = 'Home';
  }

  static final List<Widget> _widgetOptions = <Widget>[
    Home(),
    ChatBox(),
    Events(),
    Locator(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        centerTitle: true,
        title: Text(
          _title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              showConfirmLogout();
            },
            icon: Icon(
              Icons.logout,
              color: Colors.black,
            ),
          ),
        ],
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.green,
                // Colors.red,
                Colors.lightBlue,
              ],
            ),
          ),
        ),
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'ChatBox',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Event',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on_outlined),
            label: 'Locator',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Me',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        unselectedIconTheme: IconThemeData(size: 28),
        unselectedItemColor: Colors.black,
        unselectedFontSize: 16,
        selectedFontSize: 18,
        selectedIconTheme: IconThemeData(size: 30, color: Colors.blue),
        onTap: _onItemTapped,
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      switch (index) {
        case 0:
          {
            _title = 'Home';
          }
          break;
        case 1:
          {
            _title = 'ChatBox';
          }
          break;
        case 2:
          {
            _title = 'Events';
          }
          break;
        case 3:
          {
            _title = 'Locator';
          }
          break;
        case 4:
          {
            _title = 'My Profile';
          }
          break;
      }
    });
  }

  showConfirmLogout() {
    showCupertinoModalPopup(
      context: context,
      builder: (context) => CupertinoActionSheet(
        message: Text("Would you like to sign out?"),
        actions: [
          CupertinoActionSheetAction(
            onPressed: () {
              Get.to(Sign_In());
            },
            child: Text(
              "Sign Out",
              style: TextStyle(color: Colors.red),
            ),
          )
        ],
        cancelButton: CupertinoActionSheetAction(
          child: Text("Cancel"),
          onPressed: () {
            FirebaseAuth.instance.signOut();
            // Navigator.of(context).pop();
          },
        ),
      ),
    );
  }
}
