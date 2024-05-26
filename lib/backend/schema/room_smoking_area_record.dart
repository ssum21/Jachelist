import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RoomSmokingAreaRecord extends FirestoreRecord {
  RoomSmokingAreaRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "SmokingSpaceReview" field.
  double? _smokingSpaceReview;
  double get smokingSpaceReview => _smokingSpaceReview ?? 0.0;
  bool hasSmokingSpaceReview() => _smokingSpaceReview != null;

  // "SmokingLocationReview" field.
  double? _smokingLocationReview;
  double get smokingLocationReview => _smokingLocationReview ?? 0.0;
  bool hasSmokingLocationReview() => _smokingLocationReview != null;

  // "SmokingAreaCleanessReview" field.
  double? _smokingAreaCleanessReview;
  double get smokingAreaCleanessReview => _smokingAreaCleanessReview ?? 0.0;
  bool hasSmokingAreaCleanessReview() => _smokingAreaCleanessReview != null;

  // "AvgSmokingAreaReview" field.
  double? _avgSmokingAreaReview;
  double get avgSmokingAreaReview => _avgSmokingAreaReview ?? 0.0;
  bool hasAvgSmokingAreaReview() => _avgSmokingAreaReview != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _smokingSpaceReview =
        castToType<double>(snapshotData['SmokingSpaceReview']);
    _smokingLocationReview =
        castToType<double>(snapshotData['SmokingLocationReview']);
    _smokingAreaCleanessReview =
        castToType<double>(snapshotData['SmokingAreaCleanessReview']);
    _avgSmokingAreaReview =
        castToType<double>(snapshotData['AvgSmokingAreaReview']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('RoomSmokingArea')
          : FirebaseFirestore.instance.collectionGroup('RoomSmokingArea');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('RoomSmokingArea').doc(id);

  static Stream<RoomSmokingAreaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RoomSmokingAreaRecord.fromSnapshot(s));

  static Future<RoomSmokingAreaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RoomSmokingAreaRecord.fromSnapshot(s));

  static RoomSmokingAreaRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RoomSmokingAreaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RoomSmokingAreaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RoomSmokingAreaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RoomSmokingAreaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RoomSmokingAreaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRoomSmokingAreaRecordData({
  double? smokingSpaceReview,
  double? smokingLocationReview,
  double? smokingAreaCleanessReview,
  double? avgSmokingAreaReview,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'SmokingSpaceReview': smokingSpaceReview,
      'SmokingLocationReview': smokingLocationReview,
      'SmokingAreaCleanessReview': smokingAreaCleanessReview,
      'AvgSmokingAreaReview': avgSmokingAreaReview,
    }.withoutNulls,
  );

  return firestoreData;
}

class RoomSmokingAreaRecordDocumentEquality
    implements Equality<RoomSmokingAreaRecord> {
  const RoomSmokingAreaRecordDocumentEquality();

  @override
  bool equals(RoomSmokingAreaRecord? e1, RoomSmokingAreaRecord? e2) {
    return e1?.smokingSpaceReview == e2?.smokingSpaceReview &&
        e1?.smokingLocationReview == e2?.smokingLocationReview &&
        e1?.smokingAreaCleanessReview == e2?.smokingAreaCleanessReview &&
        e1?.avgSmokingAreaReview == e2?.avgSmokingAreaReview;
  }

  @override
  int hash(RoomSmokingAreaRecord? e) => const ListEquality().hash([
        e?.smokingSpaceReview,
        e?.smokingLocationReview,
        e?.smokingAreaCleanessReview,
        e?.avgSmokingAreaReview
      ]);

  @override
  bool isValidKey(Object? o) => o is RoomSmokingAreaRecord;
}
