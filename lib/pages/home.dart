import 'package:flutter/material.dart';

//pages
import '../pages/activity_page.dart';
import 'package:provider/provider.dart';
import 'dart:async';
import 'package:path/path.dart' as path;
import 'package:sqflite/sqflite.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            Container(
              height: 100,
            ),
            // DrawerHeader(child: Text("")),
            ListTile(
              title: Text("ホーム"),
              onTap: () {
                Navigator.of(context).popUntil(ModalRoute.withName("/home"));
              },
            ),
            ListTile(
              title: Text("トレーニングメニュー 一覧"),
              onTap: () {
                Navigator.of(context).popAndPushNamed("/menu");
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text("home"),
      ),
      body: ActivityPage(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed("/activity_add");
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
