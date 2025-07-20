import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

String? newCustomFunction(
  String? selectedChoice1,
  String? selectedChoice2,
  String? selectedChoice3,
) {
  if (selectedChoice1 == "Own" &&
      selectedChoice2 == "Crop" &&
      selectedChoice3 == "Yes") {
    return "Correct";
  } else {
    return "Incorrect";
  }
}

/// hello
bool? newCustomFunction2(
  String? selectedChoice1,
  String? selectedChoice3,
  String? selectedChoice4,
  String? selectedChoice8,
) {
  if ((selectedChoice1 == "Own" || selectedChoice1 == "Lease") &&
      selectedChoice3 == "Yes" &&
      selectedChoice4 == "Yes" &&
      selectedChoice8 == "Yes") {
    return true;
  } else {
    return false;
  }
}

/// hi
bool? newCustomFunction3(
  String? selectedChoice1,
  String? selectedChoice2,
  String? selectedChoice3,
  String? selectedChoice6,
) {
  if (selectedChoice1 == "Own" &&
      (selectedChoice2 == 'Dairy' ||
          selectedChoice2 == "Mixed" &&
              selectedChoice3 == "Yes" &&
              selectedChoice6 == "Yes")) {
    return true;
  } else {
    return false;
  }
}

bool? pMKisan(
  String? selectedChoice1,
  String? selectedChoice2,
  String? selectedChoice3,
  String? selectedChoice5,
  String? selectedChoice7,
) {
  if (selectedChoice1 == "Own" &&
      (selectedChoice2 == "Crop" || selectedChoice2 == "Dairy") &&
      selectedChoice3 == "Yes" &&
      selectedChoice5 == "No" &&
      selectedChoice7 == "No") {
    return true;
  } else {
    return false;
  }
}

bool? tractorLoan(
  String? selectedChoice1,
  String? selectedChoice2,
  String? selectedChoice3,
  String? selectedChoice5,
) {
  if ((selectedChoice1 == "Lease" || selectedChoice1 == "Own") &&
      (selectedChoice2 == "Crop" || selectedChoice2 == "Mixed") &&
      selectedChoice3 == "Yes" &&
      selectedChoice5 == "Yes") {
    return true;
  } else {
    return false;
  }
}

bool? animalLoan(
  String? selectedChoice1,
  String? selectedChoice3,
  String? selectedChoice4,
  String? selectedChoice6,
  String? selectedChoice8,
) {
  if (selectedChoice1 == "Own" &&
      selectedChoice3 == "Yes" &&
      selectedChoice4 == "Yes" &&
      selectedChoice6 == "Yes" &&
      selectedChoice8 == "Yes") {
    return true;
  } else {
    return false;
  }
}

int addexpenseVals(List<ExpenseRecord> expenseDocs) {
  int sum = 0;
  for (var item in expenseDocs) {
    sum += item.expenseUnitCost;
  }
  return sum;
}

int subtraction(
  int val1,
  int val2,
) {
  return val1 - val2;
}

int newCustomFunction4(List<IncomeRecord> incomeDocs) {
  int sum = 0;
  for (var item in incomeDocs) {
    sum += item.incomeUnitCost;
  }
  return sum;
}

List<String> returnString() {
  return [
    "Crop",
    "Animal",
    "Loans",
    "Services",
    "Forestry",
  ];
}

List<int> returnCount(List<IncomeRecord> incomeDocs) {
  final List<String> orderedCategories = [
    "Crop Sales",
    "Livestock",
    "Government Payments/Loan repayment",
    "Services",
    "Forestry Products",
  ];

  Map<String, int> categoryCounts = {};
  for (String category in orderedCategories) {
    categoryCounts[category] = 0;
  }

  // Loop through each income document
  for (var doc in incomeDocs) {
    final String? category = doc.incomeCategory;

    if (category != null && orderedCategories.contains(category)) {
      categoryCounts[category] = (categoryCounts[category] ?? 0) + 1;
    }
  }

  // Create the final list of counts in the specified order
  List<int> resultCounts = [];
  for (String category in orderedCategories) {
    resultCounts.add(categoryCounts[category] ?? 0);
  }

  return resultCounts;
}

List<String> returnExpenseString() {
  return [
    "Fertilizer",
    "Crop",
    "Utility",
    "Labor",
    "Machine",
  ];
}

List<int> returnExpenseCount(List<ExpenseRecord> expenseDocs) {
  final List<String> orderedCategories = [
    "Fertilizer/Chemicals",
    "Crop seeds",
    "Fuel/Utilities",
    "Labor Costs",
    "Machinery and equipment maintenance",
  ];

  Map<String, int> categoryCounts = {};
  for (String category in orderedCategories) {
    categoryCounts[category] = 0;
  }

  // Loop through each income document
  for (var doc in expenseDocs) {
    final String? category = doc.expenseCategory;

    if (category != null && orderedCategories.contains(category)) {
      categoryCounts[category] = (categoryCounts[category] ?? 0) + 1;
    }
  }

  List<int> resultCounts = [];
  for (String category in orderedCategories) {
    resultCounts.add(categoryCounts[category] ?? 0);
  }

  return resultCounts;
}
