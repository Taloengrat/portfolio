import 'dart:collection';

import 'package:flutter/cupertino.dart';

class WidgetPositionProvider with ChangeNotifier {
  Map widgetList = HashMap();

  Map get item {
    return widgetList;
  }

  update(int key, double value) {
    widgetList.update(
      key,
      (value) => value,
      ifAbsent: () => value,
    );
    notifyListeners();
  }
}
