import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RoomParkingAreaRecord extends FirestoreRecord {
  RoomParkingAreaRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "ParkingSpaceReview" field.
  double? _parkingSpaceReview;
  double get parkingSpaceReview => _parkingSpaceReview ?? 0.0;
  bool hasParkingSpaceReview() => _parkingSpaceReview != null;

  // "ParkingCostReview" field.
  double? _parkingCostReview;
  double get parkingCostReview => _parkingCostReview ?? 0.0;
  bool hasParkingCostReview() => _parkingCostReview != null;

  // "AvgParkingAreaReview" field.
  double? _avgParkingAreaReview;
  double get avgParkingAreaReview => _avgParkingAreaReview ?? 0.0;
  bool hasAvgParkingAreaReview() => _avgParkingAreaReview != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _parkingSpaceReview =
        castToType<double>(snapshotData['ParkingSpaceReview']);
    _parkingCostReview = castToType<double>(snapshotData['ParkingCostReview']);
    _avgParkingAreaReview =
        castToType<double>(snapshotData['AvgParkingAreaReview']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('RoomParkingArea')
          : FirebaseFirestore.instance.collectionGroup('RoomParkingArea');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('RoomParkingArea').doc(id);

  static Stream<RoomParkingAreaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RoomParkingAreaRecord.fromSnapshot(s));

  static Future<RoomParkingAreaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RoomParkingAreaRecord.fromSnapshot(s));

  static RoomParkingAreaRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RoomParkingAreaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RoomParkingAreaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RoomParkingAreaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RoomParkingAreaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RoomParkingAreaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRoomParkingAreaRecordData({
  double? parkingSpaceReview,
  double? parkingCostReview,
  double? avgParkingAreaReview,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'ParkingSpaceReview': parkingSpaceReview,
      'ParkingCostReview': parkingCostReview,
      'AvgParkingAreaReview': avgParkingAreaReview,
    }.withoutNulls,
  );

  return firestoreData;
}

class RoomParkingAreaRecordDocumentEquality
    implements Equality<RoomParkingAreaRecord> {
  const RoomParkingAreaRecordDocumentEquality();

  @override
  bool equals(RoomParkingAreaRecord? e1, RoomParkingAreaRecord? e2) {
    return e1?.parkingSpaceReview == e2?.parkingSpaceReview &&
        e1?.parkingCostReview == e2?.parkingCostReview &&
        e1?.avgParkingAreaReview == e2?.avgParkingAreaReview;
  }

  @override
  int hash(RoomParkingAreaRecord? e) => const ListEquality().hash(
      [e?.parkingSpaceReview, e?.parkingCostReview, e?.avgParkingAreaReview]);

  @override
  bool isValidKey(Object? o) => o is RoomParkingAreaRecord;
}
