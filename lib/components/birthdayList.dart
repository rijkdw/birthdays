import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:birthdays/components/birthdayTile.dart';
import 'package:birthdays/managers/birthdayStore.dart';

class BirthdayList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<BirthdayStore>(
      builder: (context, birthdayStore, child) {
        // then show them in a list
        return ListView(
          children: birthdayStore.birthdays
              .map((birthday) => BirthdayTile(birthday))
              .toList(),
        );
      },
    );
  }
}
