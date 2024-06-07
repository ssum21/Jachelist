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

  // "StarPrice" field.
  double? _starPrice;
  double get starPrice => _starPrice ?? 0.0;
  bool hasStarPrice() => _starPrice != null;

  // "StarSize" field.
  double? _starSize;
  double get starSize => _starSize ?? 0.0;
  bool hasStarSize() => _starSize != null;

  // "StarWaterDrainage" field.
  double? _starWaterDrainage;
  double get starWaterDrainage => _starWaterDrainage ?? 0.0;
  bool hasStarWaterDrainage() => _starWaterDrainage != null;

  // "StarBathroom" field.
  double? _starBathroom;
  double get starBathroom => _starBathroom ?? 0.0;
  bool hasStarBathroom() => _starBathroom != null;

  // "StarBasicOption" field.
  double? _starBasicOption;
  double get starBasicOption => _starBasicOption ?? 0.0;
  bool hasStarBasicOption() => _starBasicOption != null;

  // "StarGarbageDisposal" field.
  double? _starGarbageDisposal;
  double get starGarbageDisposal => _starGarbageDisposal ?? 0.0;
  bool hasStarGarbageDisposal() => _starGarbageDisposal != null;

  // "StarFloor" field.
  double? _starFloor;
  double get starFloor => _starFloor ?? 0.0;
  bool hasStarFloor() => _starFloor != null;

  // "StarSecurity" field.
  double? _starSecurity;
  double get starSecurity => _starSecurity ?? 0.0;
  bool hasStarSecurity() => _starSecurity != null;

  // "StarWindows" field.
  double? _starWindows;
  double get starWindows => _starWindows ?? 0.0;
  bool hasStarWindows() => _starWindows != null;

  // "StarCleanliness" field.
  double? _starCleanliness;
  double get starCleanliness => _starCleanliness ?? 0.0;
  bool hasStarCleanliness() => _starCleanliness != null;

  // "StarConvenience" field.
  double? _starConvenience;
  double get starConvenience => _starConvenience ?? 0.0;
  bool hasStarConvenience() => _starConvenience != null;

  // "StarSoundProofing" field.
  double? _starSoundProofing;
  double get starSoundProofing => _starSoundProofing ?? 0.0;
  bool hasStarSoundProofing() => _starSoundProofing != null;

  // "StarParking" field.
  double? _starParking;
  double get starParking => _starParking ?? 0.0;
  bool hasStarParking() => _starParking != null;

  // "StarSmokingArea" field.
  double? _starSmokingArea;
  double get starSmokingArea => _starSmokingArea ?? 0.0;
  bool hasStarSmokingArea() => _starSmokingArea != null;

  // "MemoPrice" field.
  String? _memoPrice;
  String get memoPrice => _memoPrice ?? '';
  bool hasMemoPrice() => _memoPrice != null;

  // "MemoSize" field.
  String? _memoSize;
  String get memoSize => _memoSize ?? '';
  bool hasMemoSize() => _memoSize != null;

  // "MemoWaterDrainage" field.
  String? _memoWaterDrainage;
  String get memoWaterDrainage => _memoWaterDrainage ?? '';
  bool hasMemoWaterDrainage() => _memoWaterDrainage != null;

  // "MemoBathroom" field.
  String? _memoBathroom;
  String get memoBathroom => _memoBathroom ?? '';
  bool hasMemoBathroom() => _memoBathroom != null;

  // "MemoBasicOption" field.
  String? _memoBasicOption;
  String get memoBasicOption => _memoBasicOption ?? '';
  bool hasMemoBasicOption() => _memoBasicOption != null;

  // "MemoGarbageDisposal" field.
  String? _memoGarbageDisposal;
  String get memoGarbageDisposal => _memoGarbageDisposal ?? '';
  bool hasMemoGarbageDisposal() => _memoGarbageDisposal != null;

  // "MemoFloor" field.
  String? _memoFloor;
  String get memoFloor => _memoFloor ?? '';
  bool hasMemoFloor() => _memoFloor != null;

  // "MemoSecurity" field.
  String? _memoSecurity;
  String get memoSecurity => _memoSecurity ?? '';
  bool hasMemoSecurity() => _memoSecurity != null;

  // "MemoWindows" field.
  String? _memoWindows;
  String get memoWindows => _memoWindows ?? '';
  bool hasMemoWindows() => _memoWindows != null;

  // "MemoCleanliness" field.
  String? _memoCleanliness;
  String get memoCleanliness => _memoCleanliness ?? '';
  bool hasMemoCleanliness() => _memoCleanliness != null;

  // "MemoConvenience" field.
  String? _memoConvenience;
  String get memoConvenience => _memoConvenience ?? '';
  bool hasMemoConvenience() => _memoConvenience != null;

  // "MemoSoundProofing" field.
  String? _memoSoundProofing;
  String get memoSoundProofing => _memoSoundProofing ?? '';
  bool hasMemoSoundProofing() => _memoSoundProofing != null;

  // "MemoParkingArea" field.
  String? _memoParkingArea;
  String get memoParkingArea => _memoParkingArea ?? '';
  bool hasMemoParkingArea() => _memoParkingArea != null;

  // "MemoSmokingArea" field.
  String? _memoSmokingArea;
  String get memoSmokingArea => _memoSmokingArea ?? '';
  bool hasMemoSmokingArea() => _memoSmokingArea != null;

  // "MonthTotalPrice" field.
  double? _monthTotalPrice;
  double get monthTotalPrice => _monthTotalPrice ?? 0.0;
  bool hasMonthTotalPrice() => _monthTotalPrice != null;

  void _initializeFields() {
    _roomName = snapshotData['RoomName'] as String?;
    _roomAdress = snapshotData['RoomAdress'] as String?;
    _roomDescription = snapshotData['RoomDescription'] as String?;
    _roomImage = snapshotData['RoomImage'] as String?;
    _roomTotalReview = castToType<double>(snapshotData['RoomTotalReview']);
    _roomPriorityAvg = castToType<double>(snapshotData['RoomPriorityAvg']);
    _starPrice = castToType<double>(snapshotData['StarPrice']);
    _starSize = castToType<double>(snapshotData['StarSize']);
    _starWaterDrainage = castToType<double>(snapshotData['StarWaterDrainage']);
    _starBathroom = castToType<double>(snapshotData['StarBathroom']);
    _starBasicOption = castToType<double>(snapshotData['StarBasicOption']);
    _starGarbageDisposal =
        castToType<double>(snapshotData['StarGarbageDisposal']);
    _starFloor = castToType<double>(snapshotData['StarFloor']);
    _starSecurity = castToType<double>(snapshotData['StarSecurity']);
    _starWindows = castToType<double>(snapshotData['StarWindows']);
    _starCleanliness = castToType<double>(snapshotData['StarCleanliness']);
    _starConvenience = castToType<double>(snapshotData['StarConvenience']);
    _starSoundProofing = castToType<double>(snapshotData['StarSoundProofing']);
    _starParking = castToType<double>(snapshotData['StarParking']);
    _starSmokingArea = castToType<double>(snapshotData['StarSmokingArea']);
    _memoPrice = snapshotData['MemoPrice'] as String?;
    _memoSize = snapshotData['MemoSize'] as String?;
    _memoWaterDrainage = snapshotData['MemoWaterDrainage'] as String?;
    _memoBathroom = snapshotData['MemoBathroom'] as String?;
    _memoBasicOption = snapshotData['MemoBasicOption'] as String?;
    _memoGarbageDisposal = snapshotData['MemoGarbageDisposal'] as String?;
    _memoFloor = snapshotData['MemoFloor'] as String?;
    _memoSecurity = snapshotData['MemoSecurity'] as String?;
    _memoWindows = snapshotData['MemoWindows'] as String?;
    _memoCleanliness = snapshotData['MemoCleanliness'] as String?;
    _memoConvenience = snapshotData['MemoConvenience'] as String?;
    _memoSoundProofing = snapshotData['MemoSoundProofing'] as String?;
    _memoParkingArea = snapshotData['MemoParkingArea'] as String?;
    _memoSmokingArea = snapshotData['MemoSmokingArea'] as String?;
    _monthTotalPrice = castToType<double>(snapshotData['MonthTotalPrice']);
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
  double? starPrice,
  double? starSize,
  double? starWaterDrainage,
  double? starBathroom,
  double? starBasicOption,
  double? starGarbageDisposal,
  double? starFloor,
  double? starSecurity,
  double? starWindows,
  double? starCleanliness,
  double? starConvenience,
  double? starSoundProofing,
  double? starParking,
  double? starSmokingArea,
  String? memoPrice,
  String? memoSize,
  String? memoWaterDrainage,
  String? memoBathroom,
  String? memoBasicOption,
  String? memoGarbageDisposal,
  String? memoFloor,
  String? memoSecurity,
  String? memoWindows,
  String? memoCleanliness,
  String? memoConvenience,
  String? memoSoundProofing,
  String? memoParkingArea,
  String? memoSmokingArea,
  double? monthTotalPrice,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'RoomName': roomName,
      'RoomAdress': roomAdress,
      'RoomDescription': roomDescription,
      'RoomImage': roomImage,
      'RoomTotalReview': roomTotalReview,
      'RoomPriorityAvg': roomPriorityAvg,
      'StarPrice': starPrice,
      'StarSize': starSize,
      'StarWaterDrainage': starWaterDrainage,
      'StarBathroom': starBathroom,
      'StarBasicOption': starBasicOption,
      'StarGarbageDisposal': starGarbageDisposal,
      'StarFloor': starFloor,
      'StarSecurity': starSecurity,
      'StarWindows': starWindows,
      'StarCleanliness': starCleanliness,
      'StarConvenience': starConvenience,
      'StarSoundProofing': starSoundProofing,
      'StarParking': starParking,
      'StarSmokingArea': starSmokingArea,
      'MemoPrice': memoPrice,
      'MemoSize': memoSize,
      'MemoWaterDrainage': memoWaterDrainage,
      'MemoBathroom': memoBathroom,
      'MemoBasicOption': memoBasicOption,
      'MemoGarbageDisposal': memoGarbageDisposal,
      'MemoFloor': memoFloor,
      'MemoSecurity': memoSecurity,
      'MemoWindows': memoWindows,
      'MemoCleanliness': memoCleanliness,
      'MemoConvenience': memoConvenience,
      'MemoSoundProofing': memoSoundProofing,
      'MemoParkingArea': memoParkingArea,
      'MemoSmokingArea': memoSmokingArea,
      'MonthTotalPrice': monthTotalPrice,
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
        e1?.roomPriorityAvg == e2?.roomPriorityAvg &&
        e1?.starPrice == e2?.starPrice &&
        e1?.starSize == e2?.starSize &&
        e1?.starWaterDrainage == e2?.starWaterDrainage &&
        e1?.starBathroom == e2?.starBathroom &&
        e1?.starBasicOption == e2?.starBasicOption &&
        e1?.starGarbageDisposal == e2?.starGarbageDisposal &&
        e1?.starFloor == e2?.starFloor &&
        e1?.starSecurity == e2?.starSecurity &&
        e1?.starWindows == e2?.starWindows &&
        e1?.starCleanliness == e2?.starCleanliness &&
        e1?.starConvenience == e2?.starConvenience &&
        e1?.starSoundProofing == e2?.starSoundProofing &&
        e1?.starParking == e2?.starParking &&
        e1?.starSmokingArea == e2?.starSmokingArea &&
        e1?.memoPrice == e2?.memoPrice &&
        e1?.memoSize == e2?.memoSize &&
        e1?.memoWaterDrainage == e2?.memoWaterDrainage &&
        e1?.memoBathroom == e2?.memoBathroom &&
        e1?.memoBasicOption == e2?.memoBasicOption &&
        e1?.memoGarbageDisposal == e2?.memoGarbageDisposal &&
        e1?.memoFloor == e2?.memoFloor &&
        e1?.memoSecurity == e2?.memoSecurity &&
        e1?.memoWindows == e2?.memoWindows &&
        e1?.memoCleanliness == e2?.memoCleanliness &&
        e1?.memoConvenience == e2?.memoConvenience &&
        e1?.memoSoundProofing == e2?.memoSoundProofing &&
        e1?.memoParkingArea == e2?.memoParkingArea &&
        e1?.memoSmokingArea == e2?.memoSmokingArea &&
        e1?.monthTotalPrice == e2?.monthTotalPrice;
  }

  @override
  int hash(RoomInfoRecord? e) => const ListEquality().hash([
        e?.roomName,
        e?.roomAdress,
        e?.roomDescription,
        e?.roomImage,
        e?.roomTotalReview,
        e?.roomPriorityAvg,
        e?.starPrice,
        e?.starSize,
        e?.starWaterDrainage,
        e?.starBathroom,
        e?.starBasicOption,
        e?.starGarbageDisposal,
        e?.starFloor,
        e?.starSecurity,
        e?.starWindows,
        e?.starCleanliness,
        e?.starConvenience,
        e?.starSoundProofing,
        e?.starParking,
        e?.starSmokingArea,
        e?.memoPrice,
        e?.memoSize,
        e?.memoWaterDrainage,
        e?.memoBathroom,
        e?.memoBasicOption,
        e?.memoGarbageDisposal,
        e?.memoFloor,
        e?.memoSecurity,
        e?.memoWindows,
        e?.memoCleanliness,
        e?.memoConvenience,
        e?.memoSoundProofing,
        e?.memoParkingArea,
        e?.memoSmokingArea,
        e?.monthTotalPrice
      ]);

  @override
  bool isValidKey(Object? o) => o is RoomInfoRecord;
}
