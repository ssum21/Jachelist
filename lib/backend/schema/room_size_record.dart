import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RoomSizeRecord extends FirestoreRecord {
  RoomSizeRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "RoomSizeReview" field.
  double? _roomSizeReview;
  double get roomSizeReview => _roomSizeReview ?? 0.0;
  bool hasRoomSizeReview() => _roomSizeReview != null;

  // "ShapeRoomReview" field.
  double? _shapeRoomReview;
  double get shapeRoomReview => _shapeRoomReview ?? 0.0;
  bool hasShapeRoomReview() => _shapeRoomReview != null;

  // "OpenSeparateTypeReview" field.
  double? _openSeparateTypeReview;
  double get openSeparateTypeReview => _openSeparateTypeReview ?? 0.0;
  bool hasOpenSeparateTypeReview() => _openSeparateTypeReview != null;

  // "EaseofFurnitureArrangementReview" field.
  double? _easeofFurnitureArrangementReview;
  double get easeofFurnitureArrangementReview =>
      _easeofFurnitureArrangementReview ?? 0.0;
  bool hasEaseofFurnitureArrangementReview() =>
      _easeofFurnitureArrangementReview != null;

  // "AvgSizeReview" field.
  double? _avgSizeReview;
  double get avgSizeReview => _avgSizeReview ?? 0.0;
  bool hasAvgSizeReview() => _avgSizeReview != null;

  // "AvgTest" field.
  String? _avgTest;
  String get avgTest => _avgTest ?? '';
  bool hasAvgTest() => _avgTest != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _roomSizeReview = castToType<double>(snapshotData['RoomSizeReview']);
    _shapeRoomReview = castToType<double>(snapshotData['ShapeRoomReview']);
    _openSeparateTypeReview =
        castToType<double>(snapshotData['OpenSeparateTypeReview']);
    _easeofFurnitureArrangementReview =
        castToType<double>(snapshotData['EaseofFurnitureArrangementReview']);
    _avgSizeReview = castToType<double>(snapshotData['AvgSizeReview']);
    _avgTest = snapshotData['AvgTest'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('RoomSize')
          : FirebaseFirestore.instance.collectionGroup('RoomSize');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('RoomSize').doc(id);

  static Stream<RoomSizeRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RoomSizeRecord.fromSnapshot(s));

  static Future<RoomSizeRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RoomSizeRecord.fromSnapshot(s));

  static RoomSizeRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RoomSizeRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RoomSizeRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RoomSizeRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RoomSizeRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RoomSizeRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRoomSizeRecordData({
  double? roomSizeReview,
  double? shapeRoomReview,
  double? openSeparateTypeReview,
  double? easeofFurnitureArrangementReview,
  double? avgSizeReview,
  String? avgTest,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'RoomSizeReview': roomSizeReview,
      'ShapeRoomReview': shapeRoomReview,
      'OpenSeparateTypeReview': openSeparateTypeReview,
      'EaseofFurnitureArrangementReview': easeofFurnitureArrangementReview,
      'AvgSizeReview': avgSizeReview,
      'AvgTest': avgTest,
    }.withoutNulls,
  );

  return firestoreData;
}

class RoomSizeRecordDocumentEquality implements Equality<RoomSizeRecord> {
  const RoomSizeRecordDocumentEquality();

  @override
  bool equals(RoomSizeRecord? e1, RoomSizeRecord? e2) {
    return e1?.roomSizeReview == e2?.roomSizeReview &&
        e1?.shapeRoomReview == e2?.shapeRoomReview &&
        e1?.openSeparateTypeReview == e2?.openSeparateTypeReview &&
        e1?.easeofFurnitureArrangementReview ==
            e2?.easeofFurnitureArrangementReview &&
        e1?.avgSizeReview == e2?.avgSizeReview &&
        e1?.avgTest == e2?.avgTest;
  }

  @override
  int hash(RoomSizeRecord? e) => const ListEquality().hash([
        e?.roomSizeReview,
        e?.shapeRoomReview,
        e?.openSeparateTypeReview,
        e?.easeofFurnitureArrangementReview,
        e?.avgSizeReview,
        e?.avgTest
      ]);

  @override
  bool isValidKey(Object? o) => o is RoomSizeRecord;
}
