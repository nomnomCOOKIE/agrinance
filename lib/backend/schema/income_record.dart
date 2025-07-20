import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class IncomeRecord extends FirestoreRecord {
  IncomeRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "IncomeType" field.
  String? _incomeType;
  String get incomeType => _incomeType ?? '';
  bool hasIncomeType() => _incomeType != null;

  // "IncomeCategory" field.
  String? _incomeCategory;
  String get incomeCategory => _incomeCategory ?? '';
  bool hasIncomeCategory() => _incomeCategory != null;

  // "IncomeUnitCost" field.
  int? _incomeUnitCost;
  int get incomeUnitCost => _incomeUnitCost ?? 0;
  bool hasIncomeUnitCost() => _incomeUnitCost != null;

  // "IncomeDate" field.
  DateTime? _incomeDate;
  DateTime? get incomeDate => _incomeDate;
  bool hasIncomeDate() => _incomeDate != null;

  // "User" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  void _initializeFields() {
    _incomeType = snapshotData['IncomeType'] as String?;
    _incomeCategory = snapshotData['IncomeCategory'] as String?;
    _incomeUnitCost = castToType<int>(snapshotData['IncomeUnitCost']);
    _incomeDate = snapshotData['IncomeDate'] as DateTime?;
    _user = snapshotData['User'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('income');

  static Stream<IncomeRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => IncomeRecord.fromSnapshot(s));

  static Future<IncomeRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => IncomeRecord.fromSnapshot(s));

  static IncomeRecord fromSnapshot(DocumentSnapshot snapshot) => IncomeRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static IncomeRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      IncomeRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'IncomeRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is IncomeRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createIncomeRecordData({
  String? incomeType,
  String? incomeCategory,
  int? incomeUnitCost,
  DateTime? incomeDate,
  DocumentReference? user,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'IncomeType': incomeType,
      'IncomeCategory': incomeCategory,
      'IncomeUnitCost': incomeUnitCost,
      'IncomeDate': incomeDate,
      'User': user,
    }.withoutNulls,
  );

  return firestoreData;
}

class IncomeRecordDocumentEquality implements Equality<IncomeRecord> {
  const IncomeRecordDocumentEquality();

  @override
  bool equals(IncomeRecord? e1, IncomeRecord? e2) {
    return e1?.incomeType == e2?.incomeType &&
        e1?.incomeCategory == e2?.incomeCategory &&
        e1?.incomeUnitCost == e2?.incomeUnitCost &&
        e1?.incomeDate == e2?.incomeDate &&
        e1?.user == e2?.user;
  }

  @override
  int hash(IncomeRecord? e) => const ListEquality().hash([
        e?.incomeType,
        e?.incomeCategory,
        e?.incomeUnitCost,
        e?.incomeDate,
        e?.user
      ]);

  @override
  bool isValidKey(Object? o) => o is IncomeRecord;
}
