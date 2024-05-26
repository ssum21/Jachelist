import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RoomFloorRecord extends FirestoreRecord {
  RoomFloorRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "FloorReview" field.
  double? _floorReview;
  double get floorReview => _floorReview ?? 0.0;
  bool hasFloorReview() => _floorReview != null;

  // "ElevatorReview" field.
  double? _elevatorReview;
  double get elevatorReview => _elevatorReview ?? 0.0;
  bool hasElevatorReview() => _elevatorReview != null;

  // "StairGoodReview" field.
  double? _stairGoodReview;
  double get stairGoodReview => _stairGoodReview ?? 0.0;
  bool hasStairGoodReview() => _stairGoodReview != null;

  // "AvgFloorReview" field.
  double? _avgFloorReview;
  double get avgFloorReview => _avgFloorReview ?? 0.0;
  bool hasAvgFloorReview() => _avgFloorReview != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _floorReview = castToType<double>(snapshotData['FloorReview']);
    _elevatorReview = castToType<double>(snapshotData['ElevatorReview']);
    _stairGoodReview = castToType<double>(snapshotData['StairGoodReview']);
    _avgFloorReview = castToType<double>(snapshotData['AvgFloorReview']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('RoomFloor')
          : FirebaseFirestore.instance.collectionGroup('RoomFloor');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('RoomFloor').doc(id);

  static Stream<RoomFloorRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RoomFloorRecord.fromSnapshot(s));

  static Future<RoomFloorRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RoomFloorRecord.fromSnapshot(s));

  static RoomFloorRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RoomFloorRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RoomFloorRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RoomFloorRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RoomFloorRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RoomFloorRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRoomFloorRecordData({
  double? floorReview,
  double? elevatorReview,
  double? stairGoodReview,
  double? avgFloorReview,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'FloorReview': floorReview,
      'ElevatorReview': elevatorReview,
      'StairGoodReview': stairGoodReview,
      'AvgFloorReview': avgFloorReview,
    }.withoutNulls,
  );

  return firestoreData;
}

class RoomFloorRecordDocumentEquality implements Equality<RoomFloorRecord> {
  const RoomFloorRecordDocumentEquality();

  @override
  bool equals(RoomFloorRecord? e1, RoomFloorRecord? e2) {
    return e1?.floorReview == e2?.floorReview &&
        e1?.elevatorReview == e2?.elevatorReview &&
        e1?.stairGoodReview == e2?.stairGoodReview &&
        e1?.avgFloorReview == e2?.avgFloorReview;
  }

  @override
  int hash(RoomFloorRecord? e) => const ListEquality().hash([
        e?.floorReview,
        e?.elevatorReview,
        e?.stairGoodReview,
        e?.avgFloorReview
      ]);

  @override
  bool isValidKey(Object? o) => o is RoomFloorRecord;
}
