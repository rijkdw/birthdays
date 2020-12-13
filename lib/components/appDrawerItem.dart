import 'package:flutter/material.dart';

class AppDrawerItem extends StatelessWidget {
  String text;
  IconData iconData;
  VoidCallback onTap;

  AppDrawerItem({String text, IconData iconData, VoidCallback onTap}) {
    this.text = text;
    this.iconData = iconData;
    this.onTap = onTap;
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(this.text),
      leading: Icon(this.iconData),
      onTap: this.onTap,
    );
  }
}
