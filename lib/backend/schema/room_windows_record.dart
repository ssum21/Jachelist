import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RoomWindowsRecord extends FirestoreRecord {
  RoomWindowsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "WindowNumReview" field.
  double? _windowNumReview;
  double get windowNumReview => _windowNumReview ?? 0.0;
  bool hasWindowNumReview() => _windowNumReview != null;

  // "SunlightReview" field.
  double? _sunlightReview;
  double get sunlightReview => _sunlightReview ?? 0.0;
  bool hasSunlightReview() => _sunlightReview != null;

  // "WindGoodReview" field.
  double? _windGoodReview;
  double get windGoodReview => _windGoodReview ?? 0.0;
  bool hasWindGoodReview() => _windGoodReview != null;

  // "AvgWindowsReview" field.
  double? _avgWindowsReview;
  double get avgWindowsReview => _avgWindowsReview ?? 0.0;
  bool hasAvgWindowsReview() => _avgWindowsReview != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _windowNumReview = castToType<double>(snapshotData['WindowNumReview']);
    _sunlightReview = castToType<double>(snapshotData['SunlightReview']);
    _windGoodReview = castToType<double>(snapshotData['WindGoodReview']);
    _avgWindowsReview = castToType<double>(snapshotData['AvgWindowsReview']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('RoomWindows')
          : FirebaseFirestore.instance.collectionGroup('RoomWindows');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('RoomWindows').doc(id);

  static Stream<RoomWindowsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RoomWindowsRecord.fromSnapshot(s));

  static Future<RoomWindowsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RoomWindowsRecord.fromSnapshot(s));

  static RoomWindowsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RoomWindowsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RoomWindowsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RoomWindowsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RoomWindowsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RoomWindowsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRoomWindowsRecordData({
  double? windowNumReview,
  double? sunlightReview,
  double? windGoodReview,
  double? avgWindowsReview,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'WindowNumReview': windowNumReview,
      'SunlightReview': sunlightReview,
      'WindGoodReview': windGoodReview,
      'AvgWindowsReview': avgWindowsReview,
    }.withoutNulls,
  );

  return firestoreData;
}

class RoomWindowsRecordDocumentEquality implements Equality<RoomWindowsRecord> {
  const RoomWindowsRecordDocumentEquality();

  @override
  bool equals(RoomWindowsRecord? e1, RoomWindowsRecord? e2) {
    return e1?.windowNumReview == e2?.windowNumReview &&
        e1?.sunlightReview == e2?.sunlightReview &&
        e1?.windGoodReview == e2?.windGoodReview &&
        e1?.avgWindowsReview == e2?.avgWindowsReview;
  }

  @override
  int hash(RoomWindowsRecord? e) => const ListEquality().hash([
        e?.windowNumReview,
        e?.sunlightReview,
        e?.windGoodReview,
        e?.avgWindowsReview
      ]);

  @override
  bool isValidKey(Object? o) => o is RoomWindowsRecord;
}
