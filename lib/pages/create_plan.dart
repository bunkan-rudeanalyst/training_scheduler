import 'package:flutter/material.dart';

class CreateWeekPlan extends StatefulWidget {
  @override
  _CreateWeekPlanState createState() => _CreateWeekPlanState();
}

class _CreateWeekPlanState extends State<CreateWeekPlan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "CREATE NEW PLAN",
          style: TextStyle(fontWeight: FontWeight.w800),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: InkWell(
                onTap: () {},
                child: Container(
                  margin: EdgeInsets.all(5),
                  height: 50,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black26,
                            spreadRadius: 1.0,
                            blurRadius: 5.0,
                            offset: Offset(2, 2))
                      ],
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                      child: Text(
                    "ADD MENU",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w800,
                        color: Colors.white),
                  )),
                )),
          ),
        ],
      ),
    );
  }
}
