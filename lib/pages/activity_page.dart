import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

//components
import '../components/menus.dart';

//plugins
import 'package:table_calendar/table_calendar.dart';

class ActivityPage extends StatefulWidget {
  @override
  _ActivityPageState createState() => _ActivityPageState();
}

class _ActivityPageState extends State<ActivityPage> {
  DateTime _selectedDate;
  CalendarController _calendarController;
  @override
  void initState() {
    super.initState();
    _calendarController = CalendarController();
  }

  @override
  void dispose() {
    _calendarController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            child: TableCalendar(
          calendarController: _calendarController,
          initialCalendarFormat: CalendarFormat.week,
          availableCalendarFormats: const {CalendarFormat.week: 'Week'},
          onDaySelected: (selectedDate, listA, listB) {
            setState(() {
              _selectedDate = selectedDate;
              print(_selectedDate);
            });
          },
        )),
        RaisedButton(
          onPressed: () {
            ;
          },
          child: Text("change"),
        ),
        MenusList()
      ],
    );
  }
}
