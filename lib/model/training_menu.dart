import 'package:flutter/material.dart';

// class TrainingMenuItem extends StatefulWidget {
//   // String title;
//   String trainingTitle;
//   double maximunWeight;
//   double targetWeight;
//   DateTime createdDate;

//   TrainingMenuItem({this.createdDate, this.targetWeight, this.trainingTitle});

//   // TrainingMenuItem({this.title});

//   @override
//   _TrainingMenuItemState createState() => _TrainingMenuItemState();
// }

// class _TrainingMenuItemState extends State<TrainingMenuItem> {
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//         child: ListTile(
//       title: Text(widget.trainingTitle),
//       trailing: Text("${widget.targetWeight.toString()} kg"),
//       subtitle: Text(widget.createdDate.toString()),
//       onTap: () {},
//     ));
//   }
// }

class TrainingMenu {
  String menuName;
  double maxWeight;
  DateTime createDate;
}
