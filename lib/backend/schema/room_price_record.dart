import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RoomPriceRecord extends FirestoreRecord {
  RoomPriceRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "LivingTypeReview" field.
  int? _livingTypeReview;
  int get livingTypeReview => _livingTypeReview ?? 0;
  bool hasLivingTypeReview() => _livingTypeReview != null;

  // "DepositCost" field.
  double? _depositCost;
  double get depositCost => _depositCost ?? 0.0;
  bool hasDepositCost() => _depositCost != null;

  // "AdministrationCost" field.
  double? _administrationCost;
  double get administrationCost => _administrationCost ?? 0.0;
  bool hasAdministrationCost() => _administrationCost != null;

  // "ParkingCost" field.
  double? _parkingCost;
  double get parkingCost => _parkingCost ?? 0.0;
  bool hasParkingCost() => _parkingCost != null;

  // "InternetFeeCost" field.
  double? _internetFeeCost;
  double get internetFeeCost => _internetFeeCost ?? 0.0;
  bool hasInternetFeeCost() => _internetFeeCost != null;

  // "MonthCost" field.
  double? _monthCost;
  double get monthCost => _monthCost ?? 0.0;
  bool hasMonthCost() => _monthCost != null;

  // "PriceReview" field.
  double? _priceReview;
  double get priceReview => _priceReview ?? 0.0;
  bool hasPriceReview() => _priceReview != null;

  // "ElectricFeeCost" field.
  double? _electricFeeCost;
  double get electricFeeCost => _electricFeeCost ?? 0.0;
  bool hasElectricFeeCost() => _electricFeeCost != null;

  // "WaterFeeCost" field.
  double? _waterFeeCost;
  double get waterFeeCost => _waterFeeCost ?? 0.0;
  bool hasWaterFeeCost() => _waterFeeCost != null;

  // "HeatingFeeCost" field.
  double? _heatingFeeCost;
  double get heatingFeeCost => _heatingFeeCost ?? 0.0;
  bool hasHeatingFeeCost() => _heatingFeeCost != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _livingTypeReview = castToType<int>(snapshotData['LivingTypeReview']);
    _depositCost = castToType<double>(snapshotData['DepositCost']);
    _administrationCost =
        castToType<double>(snapshotData['AdministrationCost']);
    _parkingCost = castToType<double>(snapshotData['ParkingCost']);
    _internetFeeCost = castToType<double>(snapshotData['InternetFeeCost']);
    _monthCost = castToType<double>(snapshotData['MonthCost']);
    _priceReview = castToType<double>(snapshotData['PriceReview']);
    _electricFeeCost = castToType<double>(snapshotData['ElectricFeeCost']);
    _waterFeeCost = castToType<double>(snapshotData['WaterFeeCost']);
    _heatingFeeCost = castToType<double>(snapshotData['HeatingFeeCost']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('RoomPrice')
          : FirebaseFirestore.instance.collectionGroup('RoomPrice');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('RoomPrice').doc(id);

  static Stream<RoomPriceRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RoomPriceRecord.fromSnapshot(s));

  static Future<RoomPriceRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RoomPriceRecord.fromSnapshot(s));

  static RoomPriceRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RoomPriceRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RoomPriceRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RoomPriceRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RoomPriceRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RoomPriceRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRoomPriceRecordData({
  int? livingTypeReview,
  double? depositCost,
  double? administrationCost,
  double? parkingCost,
  double? internetFeeCost,
  double? monthCost,
  double? priceReview,
  double? electricFeeCost,
  double? waterFeeCost,
  double? heatingFeeCost,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'LivingTypeReview': livingTypeReview,
      'DepositCost': depositCost,
      'AdministrationCost': administrationCost,
      'ParkingCost': parkingCost,
      'InternetFeeCost': internetFeeCost,
      'MonthCost': monthCost,
      'PriceReview': priceReview,
      'ElectricFeeCost': electricFeeCost,
      'WaterFeeCost': waterFeeCost,
      'HeatingFeeCost': heatingFeeCost,
    }.withoutNulls,
  );

  return firestoreData;
}

class RoomPriceRecordDocumentEquality implements Equality<RoomPriceRecord> {
  const RoomPriceRecordDocumentEquality();

  @override
  bool equals(RoomPriceRecord? e1, RoomPriceRecord? e2) {
    return e1?.livingTypeReview == e2?.livingTypeReview &&
        e1?.depositCost == e2?.depositCost &&
        e1?.administrationCost == e2?.administrationCost &&
        e1?.parkingCost == e2?.parkingCost &&
        e1?.internetFeeCost == e2?.internetFeeCost &&
        e1?.monthCost == e2?.monthCost &&
        e1?.priceReview == e2?.priceReview &&
        e1?.electricFeeCost == e2?.electricFeeCost &&
        e1?.waterFeeCost == e2?.waterFeeCost &&
        e1?.heatingFeeCost == e2?.heatingFeeCost;
  }

  @override
  int hash(RoomPriceRecord? e) => const ListEquality().hash([
        e?.livingTypeReview,
        e?.depositCost,
        e?.administrationCost,
        e?.parkingCost,
        e?.internetFeeCost,
        e?.monthCost,
        e?.priceReview,
        e?.electricFeeCost,
        e?.waterFeeCost,
        e?.heatingFeeCost
      ]);

  @override
  bool isValidKey(Object? o) => o is RoomPriceRecord;
}
