import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RoomSoundProofingRecord extends FirestoreRecord {
  RoomSoundProofingRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "WallSoundReview" field.
  double? _wallSoundReview;
  double get wallSoundReview => _wallSoundReview ?? 0.0;
  bool hasWallSoundReview() => _wallSoundReview != null;

  // "OutsideSoundReview" field.
  double? _outsideSoundReview;
  double get outsideSoundReview => _outsideSoundReview ?? 0.0;
  bool hasOutsideSoundReview() => _outsideSoundReview != null;

  // "AvgSoundProofingReview" field.
  double? _avgSoundProofingReview;
  double get avgSoundProofingReview => _avgSoundProofingReview ?? 0.0;
  bool hasAvgSoundProofingReview() => _avgSoundProofingReview != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _wallSoundReview = castToType<double>(snapshotData['WallSoundReview']);
    _outsideSoundReview =
        castToType<double>(snapshotData['OutsideSoundReview']);
    _avgSoundProofingReview =
        castToType<double>(snapshotData['AvgSoundProofingReview']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('RoomSoundProofing')
          : FirebaseFirestore.instance.collectionGroup('RoomSoundProofing');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('RoomSoundProofing').doc(id);

  static Stream<RoomSoundProofingRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RoomSoundProofingRecord.fromSnapshot(s));

  static Future<RoomSoundProofingRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => RoomSoundProofingRecord.fromSnapshot(s));

  static RoomSoundProofingRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RoomSoundProofingRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RoomSoundProofingRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RoomSoundProofingRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RoomSoundProofingRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RoomSoundProofingRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRoomSoundProofingRecordData({
  double? wallSoundReview,
  double? outsideSoundReview,
  double? avgSoundProofingReview,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'WallSoundReview': wallSoundReview,
      'OutsideSoundReview': outsideSoundReview,
      'AvgSoundProofingReview': avgSoundProofingReview,
    }.withoutNulls,
  );

  return firestoreData;
}

class RoomSoundProofingRecordDocumentEquality
    implements Equality<RoomSoundProofingRecord> {
  const RoomSoundProofingRecordDocumentEquality();

  @override
  bool equals(RoomSoundProofingRecord? e1, RoomSoundProofingRecord? e2) {
    return e1?.wallSoundReview == e2?.wallSoundReview &&
        e1?.outsideSoundReview == e2?.outsideSoundReview &&
        e1?.avgSoundProofingReview == e2?.avgSoundProofingReview;
  }

  @override
  int hash(RoomSoundProofingRecord? e) => const ListEquality().hash(
      [e?.wallSoundReview, e?.outsideSoundReview, e?.avgSoundProofingReview]);

  @override
  bool isValidKey(Object? o) => o is RoomSoundProofingRecord;
}
