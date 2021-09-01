import 'dart:collection';
import 'dart:developer';

import 'package:flutter/cupertino.dart';

class WidgetPositionProvider with ChangeNotifier {
  Map reachPosition = {
    'top': false,
    'bottom': false,
  };

  Map get item {
    return reachPosition;
  }

  update(String key, bool value) {
    reachPosition.update(
      key,
      (value) => value,
      ifAbsent: () => value,
    );
    log(reachPosition.toString() + ' ', name: 'reach update');
    notifyListeners();
  }
}
