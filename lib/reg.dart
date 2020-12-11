import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class MyReg extends StatefulWidget {
  @override
  _MyRegState createState() => _MyRegState();
}

class _MyRegState extends State<MyReg> {
  var auth = FirebaseAuth.instance;
  String email;
  String pass;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purpleAccent,
        title: Text('Register Your Self'),
      ),
      body: Center(
        child: Container(
          width: 300,
          height: 300,
          //color: Colors.redAccent,
          //alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 300,
                child: TextField(
                  onChanged: (val) {
                    email = val;
                  },
                  decoration: InputDecoration(
                      hintText: 'email id',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 300,
                child: TextField(
                  onChanged: (val) {
                    pass = val;
                  },
                  decoration: InputDecoration(
                      hintText: 'password',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                  obscureText: true,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Material(
                color: Colors.purpleAccent,
                borderRadius: BorderRadius.circular(20),
                elevation: 40,
                child: MaterialButton(
                    child: Text('Submit'),
                    onPressed: () async {
                      try {
                        var user = await auth.createUserWithEmailAndPassword(
                            email: email, password: pass);
                        if (user.additionalUserInfo.isNewUser == true) {
                          Navigator.pushNamed(context, 'console');
                        }
                      } catch (e) {
                        print(e);
                      }
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}