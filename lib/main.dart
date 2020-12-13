import 'package:birthdays/managers/birthdayStore.dart';
import 'package:birthdays/screens/birthdayListScreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => BirthdayStore())
      ],
      child: MaterialApp(
        title: 'Birthdays',
        theme: ThemeData(
          primarySwatch: Colors.red,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: BirthdayListScreen(),
      ),
    );
  }
}
