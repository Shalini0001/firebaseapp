import 'package:firebaselinuxapp/console.dart';
import 'package:firebaselinuxapp/home.dart';
import 'package:firebaselinuxapp/login.dart';
import 'package:firebaselinuxapp/mysplash1.dart';
import 'package:firebaselinuxapp/reg.dart';
import 'package:firebaselinuxapp/splash.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  runApp(MaterialApp(
    initialRoute: "mysplash",
    routes: {
      'home': (context) => MyHome(),
      'reg': (context) => MyReg(),
      'login': (context) => MyLogin(),
      'console': (context) => MyApp(),
      'mysplash': (context) => MySplash(),
      'mysplash1': (context) => MySplash1(),
    },
    debugShowCheckedModeBanner: false,
  ));
}
