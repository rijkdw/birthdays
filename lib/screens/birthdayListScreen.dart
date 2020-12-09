import 'package:birthdays/components/addNewBirthdayFAB.dart';
import 'package:birthdays/components/appDrawer.dart';
import 'package:birthdays/components/birthdayList.dart';
import 'package:flutter/material.dart';

class BirthdayListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text("Birthdays"),
      ),
      drawer: AppDrawer(),
      body: BirthdayList(),
      floatingActionButton: AddNewBirthdayFAB(),
    );
  }
}
