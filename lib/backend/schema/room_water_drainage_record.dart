import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RoomWaterDrainageRecord extends FirestoreRecord {
  RoomWaterDrainageRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "WaterPressureReview" field.
  double? _waterPressureReview;
  double get waterPressureReview => _waterPressureReview ?? 0.0;
  bool hasWaterPressureReview() => _waterPressureReview != null;

  // "WarmWaterPossibleReview" field.
  double? _warmWaterPossibleReview;
  double get warmWaterPossibleReview => _warmWaterPossibleReview ?? 0.0;
  bool hasWarmWaterPossibleReview() => _warmWaterPossibleReview != null;

  // "DrainStateReview" field.
  double? _drainStateReview;
  double get drainStateReview => _drainStateReview ?? 0.0;
  bool hasDrainStateReview() => _drainStateReview != null;

  // "WaterPipeStatusReview" field.
  double? _waterPipeStatusReview;
  double get waterPipeStatusReview => _waterPipeStatusReview ?? 0.0;
  bool hasWaterPipeStatusReview() => _waterPipeStatusReview != null;

  // "AvgWaterDrainageReview" field.
  double? _avgWaterDrainageReview;
  double get avgWaterDrainageReview => _avgWaterDrainageReview ?? 0.0;
  bool hasAvgWaterDrainageReview() => _avgWaterDrainageReview != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _waterPressureReview =
        castToType<double>(snapshotData['WaterPressureReview']);
    _warmWaterPossibleReview =
        castToType<double>(snapshotData['WarmWaterPossibleReview']);
    _drainStateReview = castToType<double>(snapshotData['DrainStateReview']);
    _waterPipeStatusReview =
        castToType<double>(snapshotData['WaterPipeStatusReview']);
    _avgWaterDrainageReview =
        castToType<double>(snapshotData['AvgWaterDrainageReview']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('RoomWaterDrainage')
          : FirebaseFirestore.instance.collectionGroup('RoomWaterDrainage');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('RoomWaterDrainage').doc(id);

  static Stream<RoomWaterDrainageRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RoomWaterDrainageRecord.fromSnapshot(s));

  static Future<RoomWaterDrainageRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => RoomWaterDrainageRecord.fromSnapshot(s));

  static RoomWaterDrainageRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RoomWaterDrainageRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RoomWaterDrainageRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RoomWaterDrainageRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RoomWaterDrainageRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RoomWaterDrainageRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRoomWaterDrainageRecordData({
  double? waterPressureReview,
  double? warmWaterPossibleReview,
  double? drainStateReview,
  double? waterPipeStatusReview,
  double? avgWaterDrainageReview,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'WaterPressureReview': waterPressureReview,
      'WarmWaterPossibleReview': warmWaterPossibleReview,
      'DrainStateReview': drainStateReview,
      'WaterPipeStatusReview': waterPipeStatusReview,
      'AvgWaterDrainageReview': avgWaterDrainageReview,
    }.withoutNulls,
  );

  return firestoreData;
}

class RoomWaterDrainageRecordDocumentEquality
    implements Equality<RoomWaterDrainageRecord> {
  const RoomWaterDrainageRecordDocumentEquality();

  @override
  bool equals(RoomWaterDrainageRecord? e1, RoomWaterDrainageRecord? e2) {
    return e1?.waterPressureReview == e2?.waterPressureReview &&
        e1?.warmWaterPossibleReview == e2?.warmWaterPossibleReview &&
        e1?.drainStateReview == e2?.drainStateReview &&
        e1?.waterPipeStatusReview == e2?.waterPipeStatusReview &&
        e1?.avgWaterDrainageReview == e2?.avgWaterDrainageReview;
  }

  @override
  int hash(RoomWaterDrainageRecord? e) => const ListEquality().hash([
        e?.waterPressureReview,
        e?.warmWaterPossibleReview,
        e?.drainStateReview,
        e?.waterPipeStatusReview,
        e?.avgWaterDrainageReview
      ]);

  @override
  bool isValidKey(Object? o) => o is RoomWaterDrainageRecord;
}
