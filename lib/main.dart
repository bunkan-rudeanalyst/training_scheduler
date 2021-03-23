import 'package:flutter/material.dart';
import 'dart:async';

//pages
import 'pages/home.dart';
import 'pages/create_plan.dart';

//font
import 'font/font.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.black,
      ),
      routes: {
        "/": (context) => TopPage(),
        "/home": (context) => Home(),
        "/create_plan": (context) => CreateWeekPlan()
      },
      initialRoute: "/",
    );
  }
}

class TopPage extends StatefulWidget {
  @override
  _TopPageState createState() => _TopPageState();
}

class _TopPageState extends State<TopPage> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacementNamed("/home");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Training Scheduler",
          textAlign: TextAlign.center,
          style: titleFont,
        ),
      ),
    );
  }
}
