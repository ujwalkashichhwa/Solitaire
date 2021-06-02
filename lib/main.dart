import 'package:flutter/material.dart';
import 'dart:async';
import './home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SolitaireRemake',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Homepage(),
    );
  }
}

class Homepage extends StatefulWidget {
  @override
  _Homepage createState() => _Homepage();
}

class _Homepage extends State<Homepage> {
  void completed() {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (context) => MyHomePage()),
    );
  }

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 4), completed);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.green[400],
        body: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.green[800].withOpacity(0.9),
          ),
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.only(top: 180, left: 20, right: 20),
          height: 200,
          child: Center(
            child: Text(
              "Welcome to Solitaire Remake",
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
          ),
        ));
  }
}
