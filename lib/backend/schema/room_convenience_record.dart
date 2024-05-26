import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RoomConvenienceRecord extends FirestoreRecord {
  RoomConvenienceRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "MartReview" field.
  double? _martReview;
  double get martReview => _martReview ?? 0.0;
  bool hasMartReview() => _martReview != null;

  // "BusReview" field.
  double? _busReview;
  double get busReview => _busReview ?? 0.0;
  bool hasBusReview() => _busReview != null;

  // "SchoolReview" field.
  double? _schoolReview;
  double get schoolReview => _schoolReview ?? 0.0;
  bool hasSchoolReview() => _schoolReview != null;

  // "AvgConvenienceReview" field.
  double? _avgConvenienceReview;
  double get avgConvenienceReview => _avgConvenienceReview ?? 0.0;
  bool hasAvgConvenienceReview() => _avgConvenienceReview != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _martReview = castToType<double>(snapshotData['MartReview']);
    _busReview = castToType<double>(snapshotData['BusReview']);
    _schoolReview = castToType<double>(snapshotData['SchoolReview']);
    _avgConvenienceReview =
        castToType<double>(snapshotData['AvgConvenienceReview']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('RoomConvenience')
          : FirebaseFirestore.instance.collectionGroup('RoomConvenience');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('RoomConvenience').doc(id);

  static Stream<RoomConvenienceRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RoomConvenienceRecord.fromSnapshot(s));

  static Future<RoomConvenienceRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RoomConvenienceRecord.fromSnapshot(s));

  static RoomConvenienceRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RoomConvenienceRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RoomConvenienceRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RoomConvenienceRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RoomConvenienceRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RoomConvenienceRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRoomConvenienceRecordData({
  double? martReview,
  double? busReview,
  double? schoolReview,
  double? avgConvenienceReview,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'MartReview': martReview,
      'BusReview': busReview,
      'SchoolReview': schoolReview,
      'AvgConvenienceReview': avgConvenienceReview,
    }.withoutNulls,
  );

  return firestoreData;
}

class RoomConvenienceRecordDocumentEquality
    implements Equality<RoomConvenienceRecord> {
  const RoomConvenienceRecordDocumentEquality();

  @override
  bool equals(RoomConvenienceRecord? e1, RoomConvenienceRecord? e2) {
    return e1?.martReview == e2?.martReview &&
        e1?.busReview == e2?.busReview &&
        e1?.schoolReview == e2?.schoolReview &&
        e1?.avgConvenienceReview == e2?.avgConvenienceReview;
  }

  @override
  int hash(RoomConvenienceRecord? e) => const ListEquality().hash(
      [e?.martReview, e?.busReview, e?.schoolReview, e?.avgConvenienceReview]);

  @override
  bool isValidKey(Object? o) => o is RoomConvenienceRecord;
}
