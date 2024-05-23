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

  // "DepositReview" field.
  double? _depositReview;
  double get depositReview => _depositReview ?? 0.0;
  bool hasDepositReview() => _depositReview != null;

  // "AdministrationReview" field.
  double? _administrationReview;
  double get administrationReview => _administrationReview ?? 0.0;
  bool hasAdministrationReview() => _administrationReview != null;

  // "InternetFeeReview" field.
  double? _internetFeeReview;
  double get internetFeeReview => _internetFeeReview ?? 0.0;
  bool hasInternetFeeReview() => _internetFeeReview != null;

  // "ElectricandWaterFeeReview" field.
  double? _electricandWaterFeeReview;
  double get electricandWaterFeeReview => _electricandWaterFeeReview ?? 0.0;
  bool hasElectricandWaterFeeReview() => _electricandWaterFeeReview != null;

  // "LivingTypeReview" field.
  int? _livingTypeReview;
  int get livingTypeReview => _livingTypeReview ?? 0;
  bool hasLivingTypeReview() => _livingTypeReview != null;

  // "RoomPriceReview" field.
  List<int>? _roomPriceReview;
  List<int> get roomPriceReview => _roomPriceReview ?? const [];
  bool hasRoomPriceReview() => _roomPriceReview != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _depositReview = castToType<double>(snapshotData['DepositReview']);
    _administrationReview =
        castToType<double>(snapshotData['AdministrationReview']);
    _internetFeeReview = castToType<double>(snapshotData['InternetFeeReview']);
    _electricandWaterFeeReview =
        castToType<double>(snapshotData['ElectricandWaterFeeReview']);
    _livingTypeReview = castToType<int>(snapshotData['LivingTypeReview']);
    _roomPriceReview = getDataList(snapshotData['RoomPriceReview']);
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
  double? depositReview,
  double? administrationReview,
  double? internetFeeReview,
  double? electricandWaterFeeReview,
  int? livingTypeReview,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'DepositReview': depositReview,
      'AdministrationReview': administrationReview,
      'InternetFeeReview': internetFeeReview,
      'ElectricandWaterFeeReview': electricandWaterFeeReview,
      'LivingTypeReview': livingTypeReview,
    }.withoutNulls,
  );

  return firestoreData;
}

class RoomPriceRecordDocumentEquality implements Equality<RoomPriceRecord> {
  const RoomPriceRecordDocumentEquality();

  @override
  bool equals(RoomPriceRecord? e1, RoomPriceRecord? e2) {
    const listEquality = ListEquality();
    return e1?.depositReview == e2?.depositReview &&
        e1?.administrationReview == e2?.administrationReview &&
        e1?.internetFeeReview == e2?.internetFeeReview &&
        e1?.electricandWaterFeeReview == e2?.electricandWaterFeeReview &&
        e1?.livingTypeReview == e2?.livingTypeReview &&
        listEquality.equals(e1?.roomPriceReview, e2?.roomPriceReview);
  }

  @override
  int hash(RoomPriceRecord? e) => const ListEquality().hash([
        e?.depositReview,
        e?.administrationReview,
        e?.internetFeeReview,
        e?.electricandWaterFeeReview,
        e?.livingTypeReview,
        e?.roomPriceReview
      ]);

  @override
  bool isValidKey(Object? o) => o is RoomPriceRecord;
}
