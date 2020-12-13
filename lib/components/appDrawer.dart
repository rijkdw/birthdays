import 'package:birthdays/components/appDrawerItem.dart';
import 'package:birthdays/managers/themeManager.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget drawerHeader = DrawerHeader(
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
      ),
      child: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                FaIcon(
                  FontAwesomeIcons.birthdayCake,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Birthdays",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Never forget a birthday again",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );

    Widget settingsItem = AppDrawerItem(
      iconData: Icons.settings,
      text: "Settings",
      onTap: () {},
    );

    Widget supportItem = AppDrawerItem(
      iconData: Icons.attach_money,
      text: "Donations",
      onTap: () {},
    );

    Widget darkmodeSwitch = AppDrawerItem(
      iconData: FontAwesomeIcons.lightbulb,
      text: Provider.of<ThemeManager>(context).mode == AppThemeMode.light
          ? "Light mode"
          : "Dark mode",
      onTap: () => Provider.of<ThemeManager>(context, listen: false).switchAppThemeMode(),
    );

    Provider.of<ThemeManager>(context).mode == AppThemeMode.light
        ? AppDrawerItem(
            iconData: FontAwesomeIcons.lightbulb,
            text: "Light Mode",
            onTap: () {},
          )
        : AppDrawerItem(
            iconData: FontAwesomeIcons.lightbulb,
            text: "Dark Mode",
            onTap: () {},
          );

    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            // the header with some text and an icon
            drawerHeader,
            // the menu items
            settingsItem,
            supportItem,
            darkmodeSwitch,
          ],
        ),
      ),
    );
  }
}
