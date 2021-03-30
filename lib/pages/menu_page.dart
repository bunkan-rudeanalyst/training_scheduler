import 'package:flutter/material.dart';

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
          children: [],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
      ),
    );
  }
}

class MenuItem {
  String _title;
  MenuItem({
    title: _title,
  });

  Widget build() {
    return Card(
      child: ListTile(
          title: Text("スクワット"),
          trailing: IconButton(icon: Icon(Icons.notes), onPressed: () {})),
    );
  }
}
