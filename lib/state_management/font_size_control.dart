import 'package:flutter/foundation.dart';

class FontSizeControl extends ChangeNotifier {
  double fontSizeFactor = 1;
  double headerSizeFactor = 1;

  enlarge() {
    if (fontSizeFactor < 2) {
      fontSizeFactor += 0.1;
      headerSizeFactor += 0.05;
    }
    notifyListeners();
  }

  shrink() {
    if (fontSizeFactor > 0.5) {
      fontSizeFactor -= 0.1;
      headerSizeFactor -= 0.05;
    }
    notifyListeners();
  }

  reset() {
    fontSizeFactor = 1;
    headerSizeFactor = 1;
    notifyListeners();
  }
}
