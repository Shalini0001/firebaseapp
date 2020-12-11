import 'package:firebaselinuxapp/mysplash1.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
void main(){
  runApp(new MaterialApp(
    home: new MySplash(),
  ));
}


class MySplash extends StatefulWidget {
  @override
  _MySplashState createState() => new _MySplashState();
}

class _MySplashState extends State<MySplash> {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
      seconds: 10,
      navigateAfterSeconds: new AfterSplash(),
      title: new Text('Welcome to Firestore',
      style: new TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 25.0
      ),),
      image: new Image.network('https://www.zerone-consulting.com/wp-content/uploads/2017/10/Cloud-Firestore-1.png'),
      backgroundColor: Colors.lightBlue,
      styleTextUnderTheLoader: new TextStyle(),
      photoSize: 100.0,
      onClick: ()=>print("Flutter Egypt"),
      loaderColor: Colors.red
    );
  }
}

class AfterSplash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MySplash1();
  }
}