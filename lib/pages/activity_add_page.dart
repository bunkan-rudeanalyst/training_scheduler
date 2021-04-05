import 'package:flutter/material.dart';

class ActivityAddPage extends StatefulWidget {
  @override
  _ActivityAddPageState createState() => _ActivityAddPageState();
}

class _ActivityAddPageState extends State<ActivityAddPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: EdgeInsets.all(80),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Text(
              "トレーニングメニューを追加する",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w800),
            ),
            margin: EdgeInsets.only(bottom: 20),
          ),
          TextField(
            decoration: InputDecoration(
                icon: Icon(Icons.calendar_today),
                labelText: "追加する日付",
                hintText: "メニューを追加する日付を選択"),
          ),
          TextField(
            decoration: InputDecoration(
                icon: Icon(Icons.book),
                labelText: "タイトル",
                hintText: "例: ベンチプレス"),
          ),
          TextField(
            decoration: InputDecoration(
                icon: Icon(Icons.fitness_center),
                labelText: "重量(kg)",
                hintText: "例: 115.5"),
          ),
          TextField(
            decoration: InputDecoration(
                icon: Icon(Icons.repeat), labelText: "回数", hintText: "例: 10"),
          ),
          Container(
              margin: EdgeInsets.only(top: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FlatButton(
                    color: Colors.grey[200],
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text("キャンセル"),
                  ),
                  FlatButton(
                    color: Colors.blue[300],
                    onPressed: () {},
                    child: Text("追加"),
                  )
                ],
              ))
        ],
      ),
    ));
  }
}
