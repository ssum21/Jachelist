import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RoomInfoRecord extends FirestoreRecord {
  RoomInfoRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "RoomName" field.
  String? _roomName;
  String get roomName => _roomName ?? '';
  bool hasRoomName() => _roomName != null;

  // "RoomAdress" field.
  String? _roomAdress;
  String get roomAdress => _roomAdress ?? '';
  bool hasRoomAdress() => _roomAdress != null;

  // "RoomDescription" field.
  String? _roomDescription;
  String get roomDescription => _roomDescription ?? '';
  bool hasRoomDescription() => _roomDescription != null;

  // "RoomImage" field.
  String? _roomImage;
  String get roomImage => _roomImage ?? '';
  bool hasRoomImage() => _roomImage != null;

  // "RoomTotalReview" field.
  double? _roomTotalReview;
  double get roomTotalReview => _roomTotalReview ?? 0.0;
  bool hasRoomTotalReview() => _roomTotalReview != null;

  // "RoomPriorityAvg" field.
  double? _roomPriorityAvg;
  double get roomPriorityAvg => _roomPriorityAvg ?? 0.0;
  bool hasRoomPriorityAvg() => _roomPriorityAvg != null;

  void _initializeFields() {
    _roomName = snapshotData['RoomName'] as String?;
    _roomAdress = snapshotData['RoomAdress'] as String?;
    _roomDescription = snapshotData['RoomDescription'] as String?;
    _roomImage = snapshotData['RoomImage'] as String?;
    _roomTotalReview = castToType<double>(snapshotData['RoomTotalReview']);
    _roomPriorityAvg = castToType<double>(snapshotData['RoomPriorityAvg']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('RoomInfo');

  static Stream<RoomInfoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RoomInfoRecord.fromSnapshot(s));

  static Future<RoomInfoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RoomInfoRecord.fromSnapshot(s));

  static RoomInfoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RoomInfoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RoomInfoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RoomInfoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RoomInfoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RoomInfoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRoomInfoRecordData({
  String? roomName,
  String? roomAdress,
  String? roomDescription,
  String? roomImage,
  double? roomTotalReview,
  double? roomPriorityAvg,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'RoomName': roomName,
      'RoomAdress': roomAdress,
      'RoomDescription': roomDescription,
      'RoomImage': roomImage,
      'RoomTotalReview': roomTotalReview,
      'RoomPriorityAvg': roomPriorityAvg,
    }.withoutNulls,
  );

  return firestoreData;
}

class RoomInfoRecordDocumentEquality implements Equality<RoomInfoRecord> {
  const RoomInfoRecordDocumentEquality();

  @override
  bool equals(RoomInfoRecord? e1, RoomInfoRecord? e2) {
    return e1?.roomName == e2?.roomName &&
        e1?.roomAdress == e2?.roomAdress &&
        e1?.roomDescription == e2?.roomDescription &&
        e1?.roomImage == e2?.roomImage &&
        e1?.roomTotalReview == e2?.roomTotalReview &&
        e1?.roomPriorityAvg == e2?.roomPriorityAvg;
  }

  @override
  int hash(RoomInfoRecord? e) => const ListEquality().hash([
        e?.roomName,
        e?.roomAdress,
        e?.roomDescription,
        e?.roomImage,
        e?.roomTotalReview,
        e?.roomPriorityAvg
      ]);

  @override
  bool isValidKey(Object? o) => o is RoomInfoRecord;
}
