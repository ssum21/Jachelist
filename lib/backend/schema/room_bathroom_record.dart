import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RoomBathroomRecord extends FirestoreRecord {
  RoomBathroomRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "WindowReview" field.
  double? _windowReview;
  double get windowReview => _windowReview ?? 0.0;
  bool hasWindowReview() => _windowReview != null;

  // "DrainSmellReview" field.
  double? _drainSmellReview;
  double get drainSmellReview => _drainSmellReview ?? 0.0;
  bool hasDrainSmellReview() => _drainSmellReview != null;

  // "ShowerBoothReview" field.
  double? _showerBoothReview;
  double get showerBoothReview => _showerBoothReview ?? 0.0;
  bool hasShowerBoothReview() => _showerBoothReview != null;

  // "GompangyeeReview" field.
  double? _gompangyeeReview;
  double get gompangyeeReview => _gompangyeeReview ?? 0.0;
  bool hasGompangyeeReview() => _gompangyeeReview != null;

  // "AvgRoomBathReview" field.
  double? _avgRoomBathReview;
  double get avgRoomBathReview => _avgRoomBathReview ?? 0.0;
  bool hasAvgRoomBathReview() => _avgRoomBathReview != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _windowReview = castToType<double>(snapshotData['WindowReview']);
    _drainSmellReview = castToType<double>(snapshotData['DrainSmellReview']);
    _showerBoothReview = castToType<double>(snapshotData['ShowerBoothReview']);
    _gompangyeeReview = castToType<double>(snapshotData['GompangyeeReview']);
    _avgRoomBathReview = castToType<double>(snapshotData['AvgRoomBathReview']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('RoomBathroom')
          : FirebaseFirestore.instance.collectionGroup('RoomBathroom');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('RoomBathroom').doc(id);

  static Stream<RoomBathroomRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RoomBathroomRecord.fromSnapshot(s));

  static Future<RoomBathroomRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RoomBathroomRecord.fromSnapshot(s));

  static RoomBathroomRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RoomBathroomRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RoomBathroomRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RoomBathroomRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RoomBathroomRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RoomBathroomRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRoomBathroomRecordData({
  double? windowReview,
  double? drainSmellReview,
  double? showerBoothReview,
  double? gompangyeeReview,
  double? avgRoomBathReview,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'WindowReview': windowReview,
      'DrainSmellReview': drainSmellReview,
      'ShowerBoothReview': showerBoothReview,
      'GompangyeeReview': gompangyeeReview,
      'AvgRoomBathReview': avgRoomBathReview,
    }.withoutNulls,
  );

  return firestoreData;
}

class RoomBathroomRecordDocumentEquality
    implements Equality<RoomBathroomRecord> {
  const RoomBathroomRecordDocumentEquality();

  @override
  bool equals(RoomBathroomRecord? e1, RoomBathroomRecord? e2) {
    return e1?.windowReview == e2?.windowReview &&
        e1?.drainSmellReview == e2?.drainSmellReview &&
        e1?.showerBoothReview == e2?.showerBoothReview &&
        e1?.gompangyeeReview == e2?.gompangyeeReview &&
        e1?.avgRoomBathReview == e2?.avgRoomBathReview;
  }

  @override
  int hash(RoomBathroomRecord? e) => const ListEquality().hash([
        e?.windowReview,
        e?.drainSmellReview,
        e?.showerBoothReview,
        e?.gompangyeeReview,
        e?.avgRoomBathReview
      ]);

  @override
  bool isValidKey(Object? o) => o is RoomBathroomRecord;
}
