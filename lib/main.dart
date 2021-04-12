import 'package:flutter/material.dart';
import 'package:ts/pages/menu_detail.dart';
import 'package:ts/pages/menu_page.dart';
import 'dart:async';

//pages
import 'pages/home.dart';
import 'pages/activity_add_page.dart';

//font
import 'font/font.dart';

//plugins
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart' as path;

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.blue[300],
      ),
      routes: {
        "/": (context) => TopPage(),
        "/home": (context) => Home(),
        "/activity_add": (context) => ActivityAddPage(),
        "/menu": (context) => MenuPage(),
        "/menu_detail": (context) => MenuDetail(),
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
