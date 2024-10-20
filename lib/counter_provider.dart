import 'package:flutter/cupertino.dart';

class CounterProvider extends ChangeNotifier {
  int _counter = 0;

  //event (jo Data me changes Layege )
  void incrementCount() {
    _counter++;
    notifyListeners();
  }
  int getCountValue() {
    return _counter;
  }
  void decrementCount() {
    if (_counter > 0) {
      _counter--;
      notifyListeners();
    }
  }


}
