import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LoanCheckerRecord extends FirestoreRecord {
  LoanCheckerRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Question1" field.
  String? _question1;
  String get question1 => _question1 ?? '';
  bool hasQuestion1() => _question1 != null;

  // "Question2" field.
  String? _question2;
  String get question2 => _question2 ?? '';
  bool hasQuestion2() => _question2 != null;

  // "Question3" field.
  String? _question3;
  String get question3 => _question3 ?? '';
  bool hasQuestion3() => _question3 != null;

  // "Question4" field.
  String? _question4;
  String get question4 => _question4 ?? '';
  bool hasQuestion4() => _question4 != null;

  // "Question5" field.
  String? _question5;
  String get question5 => _question5 ?? '';
  bool hasQuestion5() => _question5 != null;

  // "Question6" field.
  String? _question6;
  String get question6 => _question6 ?? '';
  bool hasQuestion6() => _question6 != null;

  // "Question7" field.
  String? _question7;
  String get question7 => _question7 ?? '';
  bool hasQuestion7() => _question7 != null;

  // "Question8" field.
  String? _question8;
  String get question8 => _question8 ?? '';
  bool hasQuestion8() => _question8 != null;

  void _initializeFields() {
    _question1 = snapshotData['Question1'] as String?;
    _question2 = snapshotData['Question2'] as String?;
    _question3 = snapshotData['Question3'] as String?;
    _question4 = snapshotData['Question4'] as String?;
    _question5 = snapshotData['Question5'] as String?;
    _question6 = snapshotData['Question6'] as String?;
    _question7 = snapshotData['Question7'] as String?;
    _question8 = snapshotData['Question8'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('loanChecker');

  static Stream<LoanCheckerRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => LoanCheckerRecord.fromSnapshot(s));

  static Future<LoanCheckerRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => LoanCheckerRecord.fromSnapshot(s));

  static LoanCheckerRecord fromSnapshot(DocumentSnapshot snapshot) =>
      LoanCheckerRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static LoanCheckerRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      LoanCheckerRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'LoanCheckerRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is LoanCheckerRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createLoanCheckerRecordData({
  String? question1,
  String? question2,
  String? question3,
  String? question4,
  String? question5,
  String? question6,
  String? question7,
  String? question8,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Question1': question1,
      'Question2': question2,
      'Question3': question3,
      'Question4': question4,
      'Question5': question5,
      'Question6': question6,
      'Question7': question7,
      'Question8': question8,
    }.withoutNulls,
  );

  return firestoreData;
}

class LoanCheckerRecordDocumentEquality implements Equality<LoanCheckerRecord> {
  const LoanCheckerRecordDocumentEquality();

  @override
  bool equals(LoanCheckerRecord? e1, LoanCheckerRecord? e2) {
    return e1?.question1 == e2?.question1 &&
        e1?.question2 == e2?.question2 &&
        e1?.question3 == e2?.question3 &&
        e1?.question4 == e2?.question4 &&
        e1?.question5 == e2?.question5 &&
        e1?.question6 == e2?.question6 &&
        e1?.question7 == e2?.question7 &&
        e1?.question8 == e2?.question8;
  }

  @override
  int hash(LoanCheckerRecord? e) => const ListEquality().hash([
        e?.question1,
        e?.question2,
        e?.question3,
        e?.question4,
        e?.question5,
        e?.question6,
        e?.question7,
        e?.question8
      ]);

  @override
  bool isValidKey(Object? o) => o is LoanCheckerRecord;
}
