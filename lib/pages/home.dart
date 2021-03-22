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
                text: "plan",
                icon: Icon(Icons.calendar_today),
              ),
              Tab(
                text: "analytics",
                icon: Icon(Icons.analytics_rounded),
              ),
              Tab(
                text: "settings",
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
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {},
        ),
      ),
    );
  }
}
