import 'package:flutter/material.dart';

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Home Page...'),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.home),
              onPressed: () {
                Navigator.pushNamed(context, 'home');
              })
        ],
      ),
      body: Container(
        width: 500,
        height: 500,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,         
          children: <Widget>[
            Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSAWnZAOvvrm2WIQRYC8R4t3mXhPX22YcEItw&usqp=CAU'),
                          )),
            ),
            
            Container(
              child: RaisedButton(
                  elevation: 30,
                  color: Colors.blueAccent,
                  child: Text('Registration'),
                  onPressed: () {
                    Navigator.pushNamed(context, 'reg');
                  }),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: RaisedButton(
                  elevation: 30,
                  color: Colors.blueAccent,
                  child: Text('Login'),
                  onPressed: () {
                    Navigator.pushNamed(context, 'login');
                  }),
            )
          ],
        ),
      ),
    );
  }
}