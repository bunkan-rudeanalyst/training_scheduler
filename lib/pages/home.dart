import 'package:flutter/material.dart';

//tabs
import '../tabs/plan.dart';

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
          bottom: TabBar(
            tabs: [
              Tab(
                text: "PLAN",
                icon: Icon(Icons.calendar_today),
              ),
              Tab(
                text: "PROGRESS",
                icon: Icon(Icons.assistant_photo),
              ),
              Tab(
                text: "SETTINGS",
                icon: Icon(Icons.settings),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            // Text("plan"),
            Plan(),
            Text("analytics"),
            Text("settings"),
          ],
        ),
      ),
    );
  }
}
