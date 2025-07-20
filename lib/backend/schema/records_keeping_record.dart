import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RecordsKeepingRecord extends FirestoreRecord {
  RecordsKeepingRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "income" field.
  int? _income;
  int get income => _income ?? 0;
  bool hasIncome() => _income != null;

  // "expenses" field.
  int? _expenses;
  int get expenses => _expenses ?? 0;
  bool hasExpenses() => _expenses != null;

  // "profit" field.
  int? _profit;
  int get profit => _profit ?? 0;
  bool hasProfit() => _profit != null;

  void _initializeFields() {
    _income = castToType<int>(snapshotData['income']);
    _expenses = castToType<int>(snapshotData['expenses']);
    _profit = castToType<int>(snapshotData['profit']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('recordsKeeping');

  static Stream<RecordsKeepingRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RecordsKeepingRecord.fromSnapshot(s));

  static Future<RecordsKeepingRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RecordsKeepingRecord.fromSnapshot(s));

  static RecordsKeepingRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RecordsKeepingRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RecordsKeepingRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RecordsKeepingRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RecordsKeepingRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RecordsKeepingRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRecordsKeepingRecordData({
  int? income,
  int? expenses,
  int? profit,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'income': income,
      'expenses': expenses,
      'profit': profit,
    }.withoutNulls,
  );

  return firestoreData;
}

class RecordsKeepingRecordDocumentEquality
    implements Equality<RecordsKeepingRecord> {
  const RecordsKeepingRecordDocumentEquality();

  @override
  bool equals(RecordsKeepingRecord? e1, RecordsKeepingRecord? e2) {
    return e1?.income == e2?.income &&
        e1?.expenses == e2?.expenses &&
        e1?.profit == e2?.profit;
  }

  @override
  int hash(RecordsKeepingRecord? e) =>
      const ListEquality().hash([e?.income, e?.expenses, e?.profit]);

  @override
  bool isValidKey(Object? o) => o is RecordsKeepingRecord;
}
