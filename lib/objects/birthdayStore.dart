import 'package:flutter/material.dart';

import 'package:birthdays/objects/birthday.dart';
import 'package:intl/intl.dart';

class BirthdayStore extends ChangeNotifier {
  // ATTRIBUTES
  List<Birthday> _birthdays;

  // CONSTRUCTORS

  // GETTERS
  // List<Birthday> get birthdays => this._birthdays ?? [];
  List<Birthday> get birthdays {
    List<Birthday> birthdays = [
      Birthday(
        personName: "Rijk",
        createdDate: DateTime.now(),
        modifiedDate: DateTime.now(),
        birthDate: DateTime.parse("2020-09-17 12:00:00"),
      ),
      Birthday(
        personName: "Liza",
        createdDate: DateTime.now(),
        modifiedDate: DateTime.now(),
        birthDate: DateTime.parse("2020-01-28 12:00:00"),
      ),
    ];
    birthdays.sort((a, b) => a.birthDate.compareTo(b.birthDate));
    return birthdays;
  }

  List<dynamic> get birthdaysByMonth {
    List<Birthday> birthdays = this.birthdays;
    List<dynamic> birthdaysByMonth = [
      DateFormat("MMMM").format(birthdays.first.birthDate),
      birthdays.first,
    ];
    for (Birthday birthday in birthdays.getRange(1, birthdays.length)) {
      if (birthday.birthDate.month != birthdaysByMonth.last.birthDate.month)
        birthdaysByMonth.add(DateFormat("MMMM").format(birthday.birthDate));
      birthdaysByMonth.add(birthday);
    }
    return birthdaysByMonth;
  }
}

class FakeBirthdayStore extends BirthdayStore {
  @override
  List<Birthday> get birthdays => [
        Birthday(
          personName: "Rijk",
          createdDate: DateTime.now(),
          modifiedDate: DateTime.now(),
          birthDate: DateTime(17, 9, 2020),
        ),
        Birthday(
          personName: "Liza",
          createdDate: DateTime.now(),
          modifiedDate: DateTime.now(),
          birthDate: DateTime(28, 1, 2020),
        ),
      ];
}
