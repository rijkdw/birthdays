import 'package:flutter/material.dart';

class MonthHeading extends StatelessWidget {
  final String monthName;

  MonthHeading(this.monthName);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      width: double.infinity,
      child: Center(
        child: Text(
          this.monthName,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
