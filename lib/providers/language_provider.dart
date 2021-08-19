import 'dart:developer';

import 'package:flutter/cupertino.dart';

class LanguageProvider with ChangeNotifier {
  String languageType = 'English';

  String get item {
    return languageType;
  }

  updateLanguageType(String value) {
    if (languageType != value) {
      languageType = value;
      notifyListeners();
      log(
        "updateLanguageType",
        name: 'LanguageProvider',
      );
    }
  }
}

enum LANGUAGE_TYPE {
  EN,
  TH,
}
