import 'package:birthdays/objects/birthday.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class BirthdayTile extends StatelessWidget {
  // attributes
  final Birthday birthday;

  // constructors
  BirthdayTile(this.birthday);

  // methods
  String _getBirthdayDate() {
    return DateFormat('dd MMMM').format(this.birthday.birthDate);
  }

  // build method
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        this.birthday.personName,
      ),
      subtitle: Text(
        _getBirthdayDate(),
      ),
      trailing: InkWell(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
          child: Icon(
            Icons.more_vert,
          ),
        ),
        onTap: () {

        },
      ),
    );
  }
}
