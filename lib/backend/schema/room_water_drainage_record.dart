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

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _waterPressureReview =
        castToType<double>(snapshotData['WaterPressureReview']);
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
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'WaterPressureReview': waterPressureReview,
    }.withoutNulls,
  );

  return firestoreData;
}

class RoomWaterDrainageRecordDocumentEquality
    implements Equality<RoomWaterDrainageRecord> {
  const RoomWaterDrainageRecordDocumentEquality();

  @override
  bool equals(RoomWaterDrainageRecord? e1, RoomWaterDrainageRecord? e2) {
    return e1?.waterPressureReview == e2?.waterPressureReview;
  }

  @override
  int hash(RoomWaterDrainageRecord? e) =>
      const ListEquality().hash([e?.waterPressureReview]);

  @override
  bool isValidKey(Object? o) => o is RoomWaterDrainageRecord;
}
