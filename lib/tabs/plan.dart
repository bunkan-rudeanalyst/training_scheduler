// import 'dart:html';

import 'package:flutter/material.dart';
import '../font/font.dart';

class Plan extends StatefulWidget {
  @override
  _PlanState createState() => _PlanState();
}

class _PlanState extends State<Plan> {
  var planType = "get more weight";
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: [
            Card(
              child: Container(
                child: Text("PLAN TYPE : $planType"),
                padding: EdgeInsets.all(10),
              ),
            ),
            Card(
              child: Container(
                child: Column(
                  children: [
                    Container(
                      child: Text(
                        "TODAY",
                        style: subTitle,
                      ),
                      margin: EdgeInsets.only(bottom: 10),
                    )
                  ],
                ),
                padding: EdgeInsets.all(10),
              ),
            ),
            Card(
              child: Container(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Container(
                        child: Text(
                          "WEEK",
                          style: subTitle,
                        ),
                        margin: EdgeInsets.only(bottom: 10),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CircleButton(
                            title: Text("mon"),
                          ),
                          CircleButton(
                            title: Text("tue"),
                          ),
                          CircleButton(
                            title: Text("wed"),
                          ),
                          CircleButton(
                            title: Text("thu"),
                          ),
                          CircleButton(
                            title: Text("fri"),
                          ),
                          CircleButton(
                            title: Text("sat"),
                          ),
                          CircleButton(
                            title: Text("sun"),
                          ),
                        ],
                      ),
                    ],
                  )),
            ),
          ],
        ));
  }
}

class CircleButton extends StatelessWidget {
  final Text title;

  CircleButton({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: title,
      onTap: () {
        print(title);
      },
    );
  }
}
