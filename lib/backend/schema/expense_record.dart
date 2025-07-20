import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ExpenseRecord extends FirestoreRecord {
  ExpenseRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "ExpenseType" field.
  String? _expenseType;
  String get expenseType => _expenseType ?? '';
  bool hasExpenseType() => _expenseType != null;

  // "ExpenseCategory" field.
  String? _expenseCategory;
  String get expenseCategory => _expenseCategory ?? '';
  bool hasExpenseCategory() => _expenseCategory != null;

  // "ExpenseUnitCost" field.
  int? _expenseUnitCost;
  int get expenseUnitCost => _expenseUnitCost ?? 0;
  bool hasExpenseUnitCost() => _expenseUnitCost != null;

  // "ExpenseData" field.
  DateTime? _expenseData;
  DateTime? get expenseData => _expenseData;
  bool hasExpenseData() => _expenseData != null;

  // "User" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  void _initializeFields() {
    _expenseType = snapshotData['ExpenseType'] as String?;
    _expenseCategory = snapshotData['ExpenseCategory'] as String?;
    _expenseUnitCost = castToType<int>(snapshotData['ExpenseUnitCost']);
    _expenseData = snapshotData['ExpenseData'] as DateTime?;
    _user = snapshotData['User'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('expense');

  static Stream<ExpenseRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ExpenseRecord.fromSnapshot(s));

  static Future<ExpenseRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ExpenseRecord.fromSnapshot(s));

  static ExpenseRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ExpenseRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ExpenseRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ExpenseRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ExpenseRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ExpenseRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createExpenseRecordData({
  String? expenseType,
  String? expenseCategory,
  int? expenseUnitCost,
  DateTime? expenseData,
  DocumentReference? user,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'ExpenseType': expenseType,
      'ExpenseCategory': expenseCategory,
      'ExpenseUnitCost': expenseUnitCost,
      'ExpenseData': expenseData,
      'User': user,
    }.withoutNulls,
  );

  return firestoreData;
}

class ExpenseRecordDocumentEquality implements Equality<ExpenseRecord> {
  const ExpenseRecordDocumentEquality();

  @override
  bool equals(ExpenseRecord? e1, ExpenseRecord? e2) {
    return e1?.expenseType == e2?.expenseType &&
        e1?.expenseCategory == e2?.expenseCategory &&
        e1?.expenseUnitCost == e2?.expenseUnitCost &&
        e1?.expenseData == e2?.expenseData &&
        e1?.user == e2?.user;
  }

  @override
  int hash(ExpenseRecord? e) => const ListEquality().hash([
        e?.expenseType,
        e?.expenseCategory,
        e?.expenseUnitCost,
        e?.expenseData,
        e?.user
      ]);

  @override
  bool isValidKey(Object? o) => o is ExpenseRecord;
}
