import 'package:flutter/material.dart';

class LocaleModel extends ChangeNotifier {
  Locale? _locale;

  Locale? get locale => _locale;

  void set(Locale locale) {
    _locale = locale;
    notifyListeners();
  }
}
