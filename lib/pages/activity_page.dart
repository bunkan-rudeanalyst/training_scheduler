import 'package:flutter/material.dart';

class ActivityPage extends StatefulWidget {
  @override
  _ActivityPageState createState() => _ActivityPageState();
}

class _ActivityPageState extends State<ActivityPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            padding: EdgeInsets.all(10),
            height: 50,
            child: Row(
              children: [Text("January"), Icon(Icons.keyboard_arrow_down)],
            )),
        Container(
            height: 50,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  margin: EdgeInsets.all(5),
                  decoration: BoxDecoration(color: Colors.blue),
                  width: 50,
                  child: Text("hello"),
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  decoration: BoxDecoration(color: Colors.blue),
                  width: 50,
                  child: Text("hello"),
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  decoration: BoxDecoration(color: Colors.blue),
                  width: 50,
                  child: Text("hello"),
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  decoration: BoxDecoration(color: Colors.blue),
                  width: 50,
                  child: Text("hello"),
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  decoration: BoxDecoration(color: Colors.blue),
                  width: 50,
                  child: Text("hello"),
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  decoration: BoxDecoration(color: Colors.blue),
                  width: 50,
                  child: Text("hello"),
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  decoration: BoxDecoration(color: Colors.blue),
                  width: 50,
                  child: Text("hello"),
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  decoration: BoxDecoration(color: Colors.blue),
                  width: 50,
                  child: Text("hello"),
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  decoration: BoxDecoration(color: Colors.blue),
                  width: 50,
                  child: Text("hello"),
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  decoration: BoxDecoration(color: Colors.blue),
                  width: 50,
                  child: Text("hello"),
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  decoration: BoxDecoration(color: Colors.blue),
                  width: 50,
                  child: Text("hello"),
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  decoration: BoxDecoration(color: Colors.blue),
                  width: 50,
                  child: Text("hello"),
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  decoration: BoxDecoration(color: Colors.blue),
                  width: 50,
                  child: Text("hello"),
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  decoration: BoxDecoration(color: Colors.blue),
                  width: 50,
                  child: Text("hello"),
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  decoration: BoxDecoration(color: Colors.blue),
                  width: 50,
                  child: Text("hello"),
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  decoration: BoxDecoration(color: Colors.blue),
                  width: 50,
                  child: Text("hello"),
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  decoration: BoxDecoration(color: Colors.blue),
                  width: 50,
                  child: Text("hello"),
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  decoration: BoxDecoration(color: Colors.blue),
                  width: 50,
                  child: Text("hello"),
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  decoration: BoxDecoration(color: Colors.blue),
                  width: 50,
                  child: Text("hello"),
                ),
              ],
            )),
        Container(
          margin: EdgeInsets.all(10),
          child: Column(
            children: [
              Center(
                child: Text("select date"),
              ),
              SizedBox(
                height: 500,
                // shrinkWrap: true,
                child: ListView(
                  children: [
                    Container(
                      margin: EdgeInsets.all(5),
                      height: 100,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    Container(
                      margin: EdgeInsets.all(5),
                      height: 100,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    Container(
                      margin: EdgeInsets.all(5),
                      height: 100,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    Container(
                      margin: EdgeInsets.all(5),
                      height: 100,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    Container(
                      margin: EdgeInsets.all(5),
                      height: 100,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    Container(
                      margin: EdgeInsets.all(5),
                      height: 100,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
