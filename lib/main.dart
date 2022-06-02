// ignore_for_file: prefer_const_constructors

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gupshup_corner/splash.dart';
import 'Screens/bottom.dart';

// void main() => runApp(const MyApp());

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
        apiKey: "AIzaSyAeF_13DyS_FLvYrutIcgjmID6B-yZw2uQ",
        authDomain: "gupshup-corner-ea1b7.firebaseapp.com",
        projectId: "gupshup-corner-ea1b7",
        storageBucket: "gupshup-corner-ea1b7.appspot.com",
        messagingSenderId: "1067287329233",
        appId: "1:1067287329233:web:d012ac643dd4af8a14c8f0"),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash(),
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        backgroundColor: Colors.pink,
        buttonTheme: ButtonTheme.of(context).copyWith(
          buttonColor: Colors.pink,
          textTheme: ButtonTextTheme.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
    );
  }
}
