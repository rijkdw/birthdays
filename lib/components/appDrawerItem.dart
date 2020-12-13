import 'package:flutter/material.dart';

class AppDrawerItem extends StatelessWidget {
  String text;
  IconData iconData;
  VoidCallback onTap;
  Widget trailing;

  AppDrawerItem({String text, IconData iconData, VoidCallback onTap, Widget trailing}) {
    this.text = text;
    this.iconData = iconData;
    this.onTap = onTap;
    this.trailing = trailing;
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(this.text),
      leading: Icon(this.iconData),
      onTap: this.onTap,
      trailing: this.trailing ?? SizedBox(height: 1, width: 1),
    );
  }
}
