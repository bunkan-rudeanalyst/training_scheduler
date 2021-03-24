import 'package:flutter/material.dart';

//pages
import '../pages/activity_page.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            title: Text("home"),
          ),
          body: ActivityPage()),
    );
  }
}
