import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:intl/intl.dart';

class NewBirthdayScreen extends StatefulWidget {
  @override
  _NewBirthdayScreenState createState() => _NewBirthdayScreenState();
}

class _NewBirthdayScreenState extends State<NewBirthdayScreen> {

  int _selectedMonth;
  int _selectedDay;

  @override
  void initState() {
    this._selectedDay = DateTime.now().day;
    this._selectedMonth = DateTime.now().month;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text("New Birthday"),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
        child: SingleChildScrollView(
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
              // birth date
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  DropdownButton<String>(
                    items: <String>[]
                        .map<DropdownMenuItem<String>>(
                            (String value) => DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                ))
                        .toList(),
                    onChanged: (newMonth) {},
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
