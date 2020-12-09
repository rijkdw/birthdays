import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:birthdays/components/birthdayTile.dart';
import 'package:birthdays/objects/birthday.dart';
import 'package:birthdays/objects/birthdayStore.dart';
import 'package:birthdays/components/monthHeading.dart';

class BirthdayList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<BirthdayStore>(
      builder: (context, birthdayStore, child) {
        // get the birthdays and sort them
        List<dynamic> birthdaysByMonth = birthdayStore.birthdaysByMonth;
        // then show them in a list
        List<Widget> widgets = List.generate(birthdaysByMonth.length, (index) {
          var item = birthdaysByMonth[index];
          if (item is Birthday) return BirthdayTile(item);
          if (item is String) return MonthHeading(item);
          return Container();
        });
        return ListView(
          children: widgets,
        );
      },
    );
  }
}
