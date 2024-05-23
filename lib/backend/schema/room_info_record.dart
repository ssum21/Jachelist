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

  // "PriceRatings" field.
  List<int>? _priceRatings;
  List<int> get priceRatings => _priceRatings ?? const [];
  bool hasPriceRatings() => _priceRatings != null;

  void _initializeFields() {
    _roomName = snapshotData['RoomName'] as String?;
    _roomAdress = snapshotData['RoomAdress'] as String?;
    _roomDescription = snapshotData['RoomDescription'] as String?;
    _roomImage = snapshotData['RoomImage'] as String?;
    _priceRatings = getDataList(snapshotData['PriceRatings']);
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
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'RoomName': roomName,
      'RoomAdress': roomAdress,
      'RoomDescription': roomDescription,
      'RoomImage': roomImage,
    }.withoutNulls,
  );

  return firestoreData;
}

class RoomInfoRecordDocumentEquality implements Equality<RoomInfoRecord> {
  const RoomInfoRecordDocumentEquality();

  @override
  bool equals(RoomInfoRecord? e1, RoomInfoRecord? e2) {
    const listEquality = ListEquality();
    return e1?.roomName == e2?.roomName &&
        e1?.roomAdress == e2?.roomAdress &&
        e1?.roomDescription == e2?.roomDescription &&
        e1?.roomImage == e2?.roomImage &&
        listEquality.equals(e1?.priceRatings, e2?.priceRatings);
  }

  @override
  int hash(RoomInfoRecord? e) => const ListEquality().hash([
        e?.roomName,
        e?.roomAdress,
        e?.roomDescription,
        e?.roomImage,
        e?.priceRatings
      ]);

  @override
  bool isValidKey(Object? o) => o is RoomInfoRecord;
}
