import 'package:flutter/cupertino.dart';

class LanguageProvider with ChangeNotifier {
  String languageType = 'English';

  String get item {
    return languageType;
  }

  updateLAnguageType(String value) {
    languageType = value;
    notifyListeners();
  }
}

enum LANGUAGE_TYPE {
  EN,
  TH,
}
