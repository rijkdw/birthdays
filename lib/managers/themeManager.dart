import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

enum AppThemeMode { light, dark }

class ThemeManager extends ChangeNotifier {
  AppThemeMode _mode = AppThemeMode.light;

  // METHODS

  void switchAppThemeMode() {
    if (this.mode == AppThemeMode.light)
      this._mode = AppThemeMode.dark;
    else {
      this._mode = AppThemeMode.light;
    }
    this.notifyListeners();
  }

  // GETTERS

  AppThemeMode get mode => this._mode;

  ThemeData get themeData {
    if (this._mode == AppThemeMode.light)
      return ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      );
    else
      return ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      );
  }
}
