import 'package:flutter/material.dart';

import '../model/training_menu.dart';

class MenuPage extends StatefulWidget {
  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("メニュー"),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: [
            // TrainingMenuItem(title: "スクワット"),
            // TrainingMenuItem(title: "スクワット"),
            // TrainingMenuItem(title: "スクワット"),
            // TrainingMenuItem(title: "スクワット"),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
      ),
    );
  }
}
