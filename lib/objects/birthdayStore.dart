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
