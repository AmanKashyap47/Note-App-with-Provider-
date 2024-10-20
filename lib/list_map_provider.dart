import 'package:flutter/cupertino.dart';

class ListMapProvider extends ChangeNotifier {
  List<Map<String, dynamic>> _mData = [];

  //event
  //add
  void addMap(Map<String, dynamic> newData) {
    _mData.add(newData);
    notifyListeners();
  }

  ///get
  List<Map<String, dynamic>> getListData() => _mData;

//update
  void updateMap(Map<String, dynamic> updateData, int index) {
    _mData[index] = updateData;
    notifyListeners();


  }
  //delete
  void deleteMap(int index) {
    _mData.removeAt(index);
    notifyListeners();
  }
}
