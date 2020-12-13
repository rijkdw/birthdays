import 'package:birthdays/screens/newBirthdayScreen.dart';
import 'package:flutter/material.dart';

class AddNewBirthdayFAB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        return Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => NewBirthdayScreen(
              appBarTitle: "New Birthday",
            ),
          ),
        );
      },
      child: Icon(
        Icons.add,
      ),
    );
  }
}
