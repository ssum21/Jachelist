import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RoomSecurityRecord extends FirestoreRecord {
  RoomSecurityRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "DoorlockReview" field.
  double? _doorlockReview;
  double get doorlockReview => _doorlockReview ?? 0.0;
  bool hasDoorlockReview() => _doorlockReview != null;

  // "CctvReview" field.
  double? _cctvReview;
  double get cctvReview => _cctvReview ?? 0.0;
  bool hasCctvReview() => _cctvReview != null;

  // "BuildEntryControlReview" field.
  double? _buildEntryControlReview;
  double get buildEntryControlReview => _buildEntryControlReview ?? 0.0;
  bool hasBuildEntryControlReview() => _buildEntryControlReview != null;

  // "PoliceReview" field.
  double? _policeReview;
  double get policeReview => _policeReview ?? 0.0;
  bool hasPoliceReview() => _policeReview != null;

  // "AvgSecurityReview" field.
  double? _avgSecurityReview;
  double get avgSecurityReview => _avgSecurityReview ?? 0.0;
  bool hasAvgSecurityReview() => _avgSecurityReview != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _doorlockReview = castToType<double>(snapshotData['DoorlockReview']);
    _cctvReview = castToType<double>(snapshotData['CctvReview']);
    _buildEntryControlReview =
        castToType<double>(snapshotData['BuildEntryControlReview']);
    _policeReview = castToType<double>(snapshotData['PoliceReview']);
    _avgSecurityReview = castToType<double>(snapshotData['AvgSecurityReview']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('RoomSecurity')
          : FirebaseFirestore.instance.collectionGroup('RoomSecurity');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('RoomSecurity').doc(id);

  static Stream<RoomSecurityRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RoomSecurityRecord.fromSnapshot(s));

  static Future<RoomSecurityRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RoomSecurityRecord.fromSnapshot(s));

  static RoomSecurityRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RoomSecurityRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RoomSecurityRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RoomSecurityRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RoomSecurityRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RoomSecurityRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRoomSecurityRecordData({
  double? doorlockReview,
  double? cctvReview,
  double? buildEntryControlReview,
  double? policeReview,
  double? avgSecurityReview,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'DoorlockReview': doorlockReview,
      'CctvReview': cctvReview,
      'BuildEntryControlReview': buildEntryControlReview,
      'PoliceReview': policeReview,
      'AvgSecurityReview': avgSecurityReview,
    }.withoutNulls,
  );

  return firestoreData;
}

class RoomSecurityRecordDocumentEquality
    implements Equality<RoomSecurityRecord> {
  const RoomSecurityRecordDocumentEquality();

  @override
  bool equals(RoomSecurityRecord? e1, RoomSecurityRecord? e2) {
    return e1?.doorlockReview == e2?.doorlockReview &&
        e1?.cctvReview == e2?.cctvReview &&
        e1?.buildEntryControlReview == e2?.buildEntryControlReview &&
        e1?.policeReview == e2?.policeReview &&
        e1?.avgSecurityReview == e2?.avgSecurityReview;
  }

  @override
  int hash(RoomSecurityRecord? e) => const ListEquality().hash([
        e?.doorlockReview,
        e?.cctvReview,
        e?.buildEntryControlReview,
        e?.policeReview,
        e?.avgSecurityReview
      ]);

  @override
  bool isValidKey(Object? o) => o is RoomSecurityRecord;
}
