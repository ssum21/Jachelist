import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RoomBasicOptionRecord extends FirestoreRecord {
  RoomBasicOptionRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "RefrigeratorReview" field.
  double? _refrigeratorReview;
  double get refrigeratorReview => _refrigeratorReview ?? 0.0;
  bool hasRefrigeratorReview() => _refrigeratorReview != null;

  // "WashingMachineReview" field.
  double? _washingMachineReview;
  double get washingMachineReview => _washingMachineReview ?? 0.0;
  bool hasWashingMachineReview() => _washingMachineReview != null;

  // "GasstoveReview" field.
  double? _gasstoveReview;
  double get gasstoveReview => _gasstoveReview ?? 0.0;
  bool hasGasstoveReview() => _gasstoveReview != null;

  // "AirConditionerReview" field.
  double? _airConditionerReview;
  double get airConditionerReview => _airConditionerReview ?? 0.0;
  bool hasAirConditionerReview() => _airConditionerReview != null;

  // "AvgBasicOptionReview" field.
  double? _avgBasicOptionReview;
  double get avgBasicOptionReview => _avgBasicOptionReview ?? 0.0;
  bool hasAvgBasicOptionReview() => _avgBasicOptionReview != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _refrigeratorReview =
        castToType<double>(snapshotData['RefrigeratorReview']);
    _washingMachineReview =
        castToType<double>(snapshotData['WashingMachineReview']);
    _gasstoveReview = castToType<double>(snapshotData['GasstoveReview']);
    _airConditionerReview =
        castToType<double>(snapshotData['AirConditionerReview']);
    _avgBasicOptionReview =
        castToType<double>(snapshotData['AvgBasicOptionReview']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('RoomBasicOption')
          : FirebaseFirestore.instance.collectionGroup('RoomBasicOption');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('RoomBasicOption').doc(id);

  static Stream<RoomBasicOptionRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RoomBasicOptionRecord.fromSnapshot(s));

  static Future<RoomBasicOptionRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RoomBasicOptionRecord.fromSnapshot(s));

  static RoomBasicOptionRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RoomBasicOptionRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RoomBasicOptionRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RoomBasicOptionRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RoomBasicOptionRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RoomBasicOptionRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRoomBasicOptionRecordData({
  double? refrigeratorReview,
  double? washingMachineReview,
  double? gasstoveReview,
  double? airConditionerReview,
  double? avgBasicOptionReview,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'RefrigeratorReview': refrigeratorReview,
      'WashingMachineReview': washingMachineReview,
      'GasstoveReview': gasstoveReview,
      'AirConditionerReview': airConditionerReview,
      'AvgBasicOptionReview': avgBasicOptionReview,
    }.withoutNulls,
  );

  return firestoreData;
}

class RoomBasicOptionRecordDocumentEquality
    implements Equality<RoomBasicOptionRecord> {
  const RoomBasicOptionRecordDocumentEquality();

  @override
  bool equals(RoomBasicOptionRecord? e1, RoomBasicOptionRecord? e2) {
    return e1?.refrigeratorReview == e2?.refrigeratorReview &&
        e1?.washingMachineReview == e2?.washingMachineReview &&
        e1?.gasstoveReview == e2?.gasstoveReview &&
        e1?.airConditionerReview == e2?.airConditionerReview &&
        e1?.avgBasicOptionReview == e2?.avgBasicOptionReview;
  }

  @override
  int hash(RoomBasicOptionRecord? e) => const ListEquality().hash([
        e?.refrigeratorReview,
        e?.washingMachineReview,
        e?.gasstoveReview,
        e?.airConditionerReview,
        e?.avgBasicOptionReview
      ]);

  @override
  bool isValidKey(Object? o) => o is RoomBasicOptionRecord;
}
