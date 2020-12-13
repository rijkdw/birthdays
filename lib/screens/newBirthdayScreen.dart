import 'package:birthdays/utils/dateTime.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:intl/intl.dart';

class NewBirthdayScreen extends StatefulWidget {

  String appBarTitle;

  NewBirthdayScreen({String appBarTitle}) {
    this.appBarTitle = appBarTitle;
  }

  @override
  _NewBirthdayScreenState createState() => _NewBirthdayScreenState();
}

class _NewBirthdayScreenState extends State<NewBirthdayScreen> {
  int _selectedMonth;
  int _selectedDay;

  @override
  void initState() {
    super.initState();
    this._selectedDay = DateTime.now().day;
    this._selectedMonth = DateTime.now().month;
  }

  DateTime getBirthDate() {
    return DateTime.parse("2020-${this._selectedMonth}-${this._selectedDay}");
  }

  @override
  Widget build(BuildContext context) {
    Widget dayDropDown = DropdownButton<String>(
      value: "${this._selectedDay}",
      items: List.generate(daysInMonth(this._selectedMonth), (i) => i + 1)
          .map<DropdownMenuItem<String>>(
            (int value) => DropdownMenuItem<String>(
              value: "$value",
              child: Text("$value"),
            ),
          )
          .toList(),
      onChanged: (newDay) => this.setState(() {
        this._selectedDay = int.parse(newDay);
      }),
    );

    Widget monthDropDown = DropdownButton<String>(
      value: "${getMonthOfNumber(this._selectedMonth)}",
      items: MONTHS_OF_YEAR
          .map<DropdownMenuItem<String>>(
            (String value) => DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            ),
          )
          .toList(),
      onChanged: (newMonth) => this.setState(() {
        int newMonthNumber = getNumberOfMonth(newMonth);
        if (this._selectedDay > daysInMonth(newMonthNumber)) {
          this._selectedDay = daysInMonth(newMonthNumber);
        }
        this._selectedMonth = newMonthNumber;
      }),
    );

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(widget.appBarTitle),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: [
            SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // person's name
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Name",
                    ),
                  ),
                  SizedBox(height: 10),
                  // birth date entry
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Birthday"),
                      SizedBox(width: 20),
                      dayDropDown,
                      SizedBox(width: 10),
                      monthDropDown,
                    ],
                  ),
                ],
              ),
            ),
            // accept button
            Container(
              width: double.infinity,
              child: TextButton(
                child: Text("ACCEPT"),
                onPressed: () {
                  FocusScope.of(context).unfocus();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
