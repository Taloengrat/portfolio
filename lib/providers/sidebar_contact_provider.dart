import 'package:flutter/cupertino.dart';

class SidebarProvider with ChangeNotifier {
  bool isReachBottom = false;

  bool get item {
    return isReachBottom;
  }

  updateReachBottom(bool value) {
    isReachBottom = value;
    notifyListeners();
  }
}
