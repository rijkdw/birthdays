import 'package:birthdays/managers/birthdayStore.dart';
import 'package:birthdays/managers/notificationManager.dart';
import 'package:birthdays/managers/themeManager.dart';
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
        ChangeNotifierProvider(create: (_) => BirthdayStore()),
        Provider(create: (_) => NotificationManager()),
        ChangeNotifierProvider(create: (_) => ThemeManager())
      ],
      builder: (context, _) => MaterialApp(
        title: 'Birthdays',
        theme: Provider.of<ThemeManager>(context).themeData,
        home: BirthdayListScreen(),
      ),
    );
  }
}
