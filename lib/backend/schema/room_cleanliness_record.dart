import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RoomCleanlinessRecord extends FirestoreRecord {
  RoomCleanlinessRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "FloorStateReview" field.
  double? _floorStateReview;
  double get floorStateReview => _floorStateReview ?? 0.0;
  bool hasFloorStateReview() => _floorStateReview != null;

  // "WallStateReview" field.
  double? _wallStateReview;
  double get wallStateReview => _wallStateReview ?? 0.0;
  bool hasWallStateReview() => _wallStateReview != null;

  // "KitchenCleanReview" field.
  double? _kitchenCleanReview;
  double get kitchenCleanReview => _kitchenCleanReview ?? 0.0;
  bool hasKitchenCleanReview() => _kitchenCleanReview != null;

  // "BuildingCleanReview" field.
  double? _buildingCleanReview;
  double get buildingCleanReview => _buildingCleanReview ?? 0.0;
  bool hasBuildingCleanReview() => _buildingCleanReview != null;

  // "AvgCleanlinessReview" field.
  double? _avgCleanlinessReview;
  double get avgCleanlinessReview => _avgCleanlinessReview ?? 0.0;
  bool hasAvgCleanlinessReview() => _avgCleanlinessReview != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _floorStateReview = castToType<double>(snapshotData['FloorStateReview']);
    _wallStateReview = castToType<double>(snapshotData['WallStateReview']);
    _kitchenCleanReview =
        castToType<double>(snapshotData['KitchenCleanReview']);
    _buildingCleanReview =
        castToType<double>(snapshotData['BuildingCleanReview']);
    _avgCleanlinessReview =
        castToType<double>(snapshotData['AvgCleanlinessReview']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('RoomCleanliness')
          : FirebaseFirestore.instance.collectionGroup('RoomCleanliness');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('RoomCleanliness').doc(id);

  static Stream<RoomCleanlinessRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RoomCleanlinessRecord.fromSnapshot(s));

  static Future<RoomCleanlinessRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RoomCleanlinessRecord.fromSnapshot(s));

  static RoomCleanlinessRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RoomCleanlinessRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RoomCleanlinessRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RoomCleanlinessRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RoomCleanlinessRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RoomCleanlinessRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRoomCleanlinessRecordData({
  double? floorStateReview,
  double? wallStateReview,
  double? kitchenCleanReview,
  double? buildingCleanReview,
  double? avgCleanlinessReview,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'FloorStateReview': floorStateReview,
      'WallStateReview': wallStateReview,
      'KitchenCleanReview': kitchenCleanReview,
      'BuildingCleanReview': buildingCleanReview,
      'AvgCleanlinessReview': avgCleanlinessReview,
    }.withoutNulls,
  );

  return firestoreData;
}

class RoomCleanlinessRecordDocumentEquality
    implements Equality<RoomCleanlinessRecord> {
  const RoomCleanlinessRecordDocumentEquality();

  @override
  bool equals(RoomCleanlinessRecord? e1, RoomCleanlinessRecord? e2) {
    return e1?.floorStateReview == e2?.floorStateReview &&
        e1?.wallStateReview == e2?.wallStateReview &&
        e1?.kitchenCleanReview == e2?.kitchenCleanReview &&
        e1?.buildingCleanReview == e2?.buildingCleanReview &&
        e1?.avgCleanlinessReview == e2?.avgCleanlinessReview;
  }

  @override
  int hash(RoomCleanlinessRecord? e) => const ListEquality().hash([
        e?.floorStateReview,
        e?.wallStateReview,
        e?.kitchenCleanReview,
        e?.buildingCleanReview,
        e?.avgCleanlinessReview
      ]);

  @override
  bool isValidKey(Object? o) => o is RoomCleanlinessRecord;
}
