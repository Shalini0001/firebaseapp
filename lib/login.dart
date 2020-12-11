import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class MyLogin extends StatefulWidget {
  @override
  _MyLoginState createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  var auth = FirebaseAuth.instance;
  var email;
  var pass;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: Text('Login Here'),
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
                      hintText: 'mail id',
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
                color: Colors.amberAccent,
                borderRadius: BorderRadius.circular(20),
                elevation: 40,
                child: MaterialButton(
                    child: Text('Submit'),
                    onPressed: () async {
                      try {
                        var usersignin = auth.signInWithEmailAndPassword(
                            email: email, password: pass);
                        if (usersignin != null) {
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