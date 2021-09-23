import 'package:flightestimate/screens/homescreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Helvetica'),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple.shade400,
          elevation: 0,
          leading: IconButton(
            icon: Icon(CupertinoIcons.arrow_left_circle_fill),
            onPressed: () {},
          ),

        ),
        body: HomeScreen(),
      ),
    );
  }
}
