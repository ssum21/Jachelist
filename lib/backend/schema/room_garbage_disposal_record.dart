import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RoomGarbageDisposalRecord extends FirestoreRecord {
  RoomGarbageDisposalRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "TrashLocationReview" field.
  double? _trashLocationReview;
  double get trashLocationReview => _trashLocationReview ?? 0.0;
  bool hasTrashLocationReview() => _trashLocationReview != null;

  // "TrashSmellReview" field.
  double? _trashSmellReview;
  double get trashSmellReview => _trashSmellReview ?? 0.0;
  bool hasTrashSmellReview() => _trashSmellReview != null;

  // "AvgGargageDisposalReview" field.
  double? _avgGargageDisposalReview;
  double get avgGargageDisposalReview => _avgGargageDisposalReview ?? 0.0;
  bool hasAvgGargageDisposalReview() => _avgGargageDisposalReview != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _trashLocationReview =
        castToType<double>(snapshotData['TrashLocationReview']);
    _trashSmellReview = castToType<double>(snapshotData['TrashSmellReview']);
    _avgGargageDisposalReview =
        castToType<double>(snapshotData['AvgGargageDisposalReview']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('RoomGarbageDisposal')
          : FirebaseFirestore.instance.collectionGroup('RoomGarbageDisposal');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('RoomGarbageDisposal').doc(id);

  static Stream<RoomGarbageDisposalRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RoomGarbageDisposalRecord.fromSnapshot(s));

  static Future<RoomGarbageDisposalRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => RoomGarbageDisposalRecord.fromSnapshot(s));

  static RoomGarbageDisposalRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RoomGarbageDisposalRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RoomGarbageDisposalRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RoomGarbageDisposalRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RoomGarbageDisposalRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RoomGarbageDisposalRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRoomGarbageDisposalRecordData({
  double? trashLocationReview,
  double? trashSmellReview,
  double? avgGargageDisposalReview,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'TrashLocationReview': trashLocationReview,
      'TrashSmellReview': trashSmellReview,
      'AvgGargageDisposalReview': avgGargageDisposalReview,
    }.withoutNulls,
  );

  return firestoreData;
}

class RoomGarbageDisposalRecordDocumentEquality
    implements Equality<RoomGarbageDisposalRecord> {
  const RoomGarbageDisposalRecordDocumentEquality();

  @override
  bool equals(RoomGarbageDisposalRecord? e1, RoomGarbageDisposalRecord? e2) {
    return e1?.trashLocationReview == e2?.trashLocationReview &&
        e1?.trashSmellReview == e2?.trashSmellReview &&
        e1?.avgGargageDisposalReview == e2?.avgGargageDisposalReview;
  }

  @override
  int hash(RoomGarbageDisposalRecord? e) => const ListEquality().hash([
        e?.trashLocationReview,
        e?.trashSmellReview,
        e?.avgGargageDisposalReview
      ]);

  @override
  bool isValidKey(Object? o) => o is RoomGarbageDisposalRecord;
}
