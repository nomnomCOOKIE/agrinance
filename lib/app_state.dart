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

  bool _showKCC = false;
  bool get showKCC => _showKCC;
  set showKCC(bool value) {
    _showKCC = value;
  }

  bool _showNABARD = false;
  bool get showNABARD => _showNABARD;
  set showNABARD(bool value) {
    _showNABARD = value;
  }

  bool _showKisan = false;
  bool get showKisan => _showKisan;
  set showKisan(bool value) {
    _showKisan = value;
  }

  bool _showFasal = false;
  bool get showFasal => _showFasal;
  set showFasal(bool value) {
    _showFasal = value;
  }

  bool _showTractor = false;
  bool get showTractor => _showTractor;
  set showTractor(bool value) {
    _showTractor = value;
  }

  bool _showAnimal = false;
  bool get showAnimal => _showAnimal;
  set showAnimal(bool value) {
    _showAnimal = value;
  }

  List<String> _incomeCategories = [];
  List<String> get incomeCategories => _incomeCategories;
  set incomeCategories(List<String> value) {
    _incomeCategories = value;
  }

  void addToIncomeCategories(String value) {
    incomeCategories.add(value);
  }

  void removeFromIncomeCategories(String value) {
    incomeCategories.remove(value);
  }

  void removeAtIndexFromIncomeCategories(int index) {
    incomeCategories.removeAt(index);
  }

  void updateIncomeCategoriesAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    incomeCategories[index] = updateFn(_incomeCategories[index]);
  }

  void insertAtIndexInIncomeCategories(int index, String value) {
    incomeCategories.insert(index, value);
  }

  List<int> _incomeCounts = [];
  List<int> get incomeCounts => _incomeCounts;
  set incomeCounts(List<int> value) {
    _incomeCounts = value;
  }

  void addToIncomeCounts(int value) {
    incomeCounts.add(value);
  }

  void removeFromIncomeCounts(int value) {
    incomeCounts.remove(value);
  }

  void removeAtIndexFromIncomeCounts(int index) {
    incomeCounts.removeAt(index);
  }

  void updateIncomeCountsAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    incomeCounts[index] = updateFn(_incomeCounts[index]);
  }

  void insertAtIndexInIncomeCounts(int index, int value) {
    incomeCounts.insert(index, value);
  }

  List<String> _expenseCategories = [];
  List<String> get expenseCategories => _expenseCategories;
  set expenseCategories(List<String> value) {
    _expenseCategories = value;
  }

  void addToExpenseCategories(String value) {
    expenseCategories.add(value);
  }

  void removeFromExpenseCategories(String value) {
    expenseCategories.remove(value);
  }

  void removeAtIndexFromExpenseCategories(int index) {
    expenseCategories.removeAt(index);
  }

  void updateExpenseCategoriesAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    expenseCategories[index] = updateFn(_expenseCategories[index]);
  }

  void insertAtIndexInExpenseCategories(int index, String value) {
    expenseCategories.insert(index, value);
  }

  List<int> _expenseCounts = [];
  List<int> get expenseCounts => _expenseCounts;
  set expenseCounts(List<int> value) {
    _expenseCounts = value;
  }

  void addToExpenseCounts(int value) {
    expenseCounts.add(value);
  }

  void removeFromExpenseCounts(int value) {
    expenseCounts.remove(value);
  }

  void removeAtIndexFromExpenseCounts(int index) {
    expenseCounts.removeAt(index);
  }

  void updateExpenseCountsAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    expenseCounts[index] = updateFn(_expenseCounts[index]);
  }

  void insertAtIndexInExpenseCounts(int index, int value) {
    expenseCounts.insert(index, value);
  }
}
