import 'package:flutter/material.dart';

class NewBirthdayScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text("New Birthday"),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: "Name",
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(child: TextField()),
                SizedBox(width: 4),
                Expanded(child: TextField()),
                SizedBox(width: 4),
                Expanded(child: TextField()),
              ],
            ),
            // CalendarDatePicker(
            //   initialDate: DateTime.now(),
            //   firstDate: DateTime.parse("2020-01-01"),
            //   lastDate: DateTime.parse("2020-12-31"),
            //   onDateChanged: (newDate) => print(newDate),
            //   initialCalendarMode: DatePickerMode.day,
            // ),
          ],
        ),
      ),
    );
  }
}
