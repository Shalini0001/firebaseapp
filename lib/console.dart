  
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

String output;
String input;

class _MyAppState extends State<MyApp> {
  exec() async {
    var url = "http://192.168.225.147/cgi-bin/web.py?x=$input";
    var response = await http.get(url);
    var r = response.body;

    setState(() {
      output = r;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Linux Command Terminal"),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.history),
              onPressed: () {
                Navigator.pushNamed(context, 'home');
              })
        ],
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(10),
          width: double.infinity,
          height: double.infinity,
          color: Colors.white,
          child: Column(
            children: <Widget>[
              Text(
                "Welcome To Terminal",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              Card(
                child: TextField(
                  onChanged: (value) {
                    input = value;
                  },
                  style: TextStyle(
                    fontSize: 20,
                  ),
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    hintText: 'Command',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    contentPadding: EdgeInsets.all(10),
                    prefixIcon: Icon(Icons.arrow_forward),
                  ),
                ),
              ),
              Material(
                borderRadius: BorderRadius.circular(50),
                child: MaterialButton(
                  elevation: 80,
                  color: Colors.green,
                  onPressed: exec,
                  child: Text("Run"),
                ),
              ),
              Text('\n'),
              Text(output ?? "Output"),
            ],
          ),
        ),
      ),
    );
  }
}
