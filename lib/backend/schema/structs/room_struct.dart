// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RoomStruct extends FFFirebaseStruct {
  RoomStruct({
    String? roomName,
    int? price,
    double? roomSize,
    String? location,
    double? cleanrating,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _roomName = roomName,
        _price = price,
        _roomSize = roomSize,
        _location = location,
        _cleanrating = cleanrating,
        super(firestoreUtilData);

  // "roomName" field.
  String? _roomName;
  String get roomName => _roomName ?? '';
  set roomName(String? val) => _roomName = val;
  bool hasRoomName() => _roomName != null;

  // "price" field.
  int? _price;
  int get price => _price ?? 0;
  set price(int? val) => _price = val;
  void incrementPrice(int amount) => _price = price + amount;
  bool hasPrice() => _price != null;

  // "RoomSize" field.
  double? _roomSize;
  double get roomSize => _roomSize ?? 0.0;
  set roomSize(double? val) => _roomSize = val;
  void incrementRoomSize(double amount) => _roomSize = roomSize + amount;
  bool hasRoomSize() => _roomSize != null;

  // "location" field.
  String? _location;
  String get location => _location ?? '';
  set location(String? val) => _location = val;
  bool hasLocation() => _location != null;

  // "cleanrating" field.
  double? _cleanrating;
  double get cleanrating => _cleanrating ?? 0.0;
  set cleanrating(double? val) => _cleanrating = val;
  void incrementCleanrating(double amount) =>
      _cleanrating = cleanrating + amount;
  bool hasCleanrating() => _cleanrating != null;

  static RoomStruct fromMap(Map<String, dynamic> data) => RoomStruct(
        roomName: data['roomName'] as String?,
        price: castToType<int>(data['price']),
        roomSize: castToType<double>(data['RoomSize']),
        location: data['location'] as String?,
        cleanrating: castToType<double>(data['cleanrating']),
      );

  static RoomStruct? maybeFromMap(dynamic data) =>
      data is Map ? RoomStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'roomName': _roomName,
        'price': _price,
        'RoomSize': _roomSize,
        'location': _location,
        'cleanrating': _cleanrating,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'roomName': serializeParam(
          _roomName,
          ParamType.String,
        ),
        'price': serializeParam(
          _price,
          ParamType.int,
        ),
        'RoomSize': serializeParam(
          _roomSize,
          ParamType.double,
        ),
        'location': serializeParam(
          _location,
          ParamType.String,
        ),
        'cleanrating': serializeParam(
          _cleanrating,
          ParamType.double,
        ),
      }.withoutNulls;

  static RoomStruct fromSerializableMap(Map<String, dynamic> data) =>
      RoomStruct(
        roomName: deserializeParam(
          data['roomName'],
          ParamType.String,
          false,
        ),
        price: deserializeParam(
          data['price'],
          ParamType.int,
          false,
        ),
        roomSize: deserializeParam(
          data['RoomSize'],
          ParamType.double,
          false,
        ),
        location: deserializeParam(
          data['location'],
          ParamType.String,
          false,
        ),
        cleanrating: deserializeParam(
          data['cleanrating'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'RoomStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is RoomStruct &&
        roomName == other.roomName &&
        price == other.price &&
        roomSize == other.roomSize &&
        location == other.location &&
        cleanrating == other.cleanrating;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([roomName, price, roomSize, location, cleanrating]);
}

RoomStruct createRoomStruct({
  String? roomName,
  int? price,
  double? roomSize,
  String? location,
  double? cleanrating,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    RoomStruct(
      roomName: roomName,
      price: price,
      roomSize: roomSize,
      location: location,
      cleanrating: cleanrating,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

RoomStruct? updateRoomStruct(
  RoomStruct? room, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    room
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addRoomStructData(
  Map<String, dynamic> firestoreData,
  RoomStruct? room,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (room == null) {
    return;
  }
  if (room.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue && room.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final roomData = getRoomFirestoreData(room, forFieldValue);
  final nestedData = roomData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = room.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getRoomFirestoreData(
  RoomStruct? room, [
  bool forFieldValue = false,
]) {
  if (room == null) {
    return {};
  }
  final firestoreData = mapToFirestore(room.toMap());

  // Add any Firestore field values
  room.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getRoomListFirestoreData(
  List<RoomStruct>? rooms,
) =>
    rooms?.map((e) => getRoomFirestoreData(e, true)).toList() ?? [];
