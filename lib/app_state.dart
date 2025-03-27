import 'package:flutter/material.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  int _accounts = 0;
  int get accounts => _accounts;
  set accounts(int value) {
    _accounts = value;
  }

  int _maxWealthSoFar = 0;
  int get maxWealthSoFar => _maxWealthSoFar;
  set maxWealthSoFar(int value) {
    _maxWealthSoFar = value;
  }

  int _currentCustomerWealth = 0;
  int get currentCustomerWealth => _currentCustomerWealth;
  set currentCustomerWealth(int value) {
    _currentCustomerWealth = value;
  }

  int _bank = 0;
  int get bank => _bank;
  set bank(int value) {
    _bank = value;
  }

  int _customer = 0;
  int get customer => _customer;
  set customer(int value) {
    _customer = value;
  }

  List<String> _inputNums = [];
  List<String> get inputNums => _inputNums;
  set inputNums(List<String> value) {
    _inputNums = value;
  }

  void addToInputNums(String value) {
    inputNums.add(value);
  }

  void removeFromInputNums(String value) {
    inputNums.remove(value);
  }

  void removeAtIndexFromInputNums(int index) {
    inputNums.removeAt(index);
  }

  void updateInputNumsAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    inputNums[index] = updateFn(_inputNums[index]);
  }

  void insertAtIndexInInputNums(int index, String value) {
    inputNums.insert(index, value);
  }

  List<int> _convertStringtoInts = [];
  List<int> get convertStringtoInts => _convertStringtoInts;
  set convertStringtoInts(List<int> value) {
    _convertStringtoInts = value;
  }

  void addToConvertStringtoInts(int value) {
    convertStringtoInts.add(value);
  }

  void removeFromConvertStringtoInts(int value) {
    convertStringtoInts.remove(value);
  }

  void removeAtIndexFromConvertStringtoInts(int index) {
    convertStringtoInts.removeAt(index);
  }

  void updateConvertStringtoIntsAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    convertStringtoInts[index] = updateFn(_convertStringtoInts[index]);
  }

  void insertAtIndexInConvertStringtoInts(int index, int value) {
    convertStringtoInts.insert(index, value);
  }
}
