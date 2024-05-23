import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _cardNumber = prefs.getString('ff_cardNumber') ?? _cardNumber;
    });
    _safeInit(() {
      _cardHolderName = prefs.getString('ff_cardHolderName') ?? _cardHolderName;
    });
    _safeInit(() {
      _cardName = prefs.getString('ff_cardName') ?? _cardName;
    });
    _safeInit(() {
      _zipCode = prefs.getString('ff_zipCode') ?? _zipCode;
    });
    _safeInit(() {
      _switchPrice = prefs.getBool('ff_switchPrice') ?? _switchPrice;
    });
    _safeInit(() {
      _switchRoomsize = prefs.getBool('ff_switchRoomsize') ?? _switchRoomsize;
    });
    _safeInit(() {
      _switchwaterdrain =
          prefs.getBool('ff_switchwaterdrain') ?? _switchwaterdrain;
    });
    _safeInit(() {
      _swtichbathroom = prefs.getBool('ff_swtichbathroom') ?? _swtichbathroom;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _cardNumber = '';
  String get cardNumber => _cardNumber;
  set cardNumber(String _value) {
    _cardNumber = _value;
    prefs.setString('ff_cardNumber', _value);
  }

  String _cardHolderName = '';
  String get cardHolderName => _cardHolderName;
  set cardHolderName(String _value) {
    _cardHolderName = _value;
    prefs.setString('ff_cardHolderName', _value);
  }

  String _cardName = '';
  String get cardName => _cardName;
  set cardName(String _value) {
    _cardName = _value;
    prefs.setString('ff_cardName', _value);
  }

  String _zipCode = '';
  String get zipCode => _zipCode;
  set zipCode(String _value) {
    _zipCode = _value;
    prefs.setString('ff_zipCode', _value);
  }

  bool _isOptionsExpanded = false;
  bool get isOptionsExpanded => _isOptionsExpanded;
  set isOptionsExpanded(bool _value) {
    _isOptionsExpanded = _value;
  }

  bool _switchPrice = false;
  bool get switchPrice => _switchPrice;
  set switchPrice(bool _value) {
    _switchPrice = _value;
    prefs.setBool('ff_switchPrice', _value);
  }

  bool _switchRoomsize = false;
  bool get switchRoomsize => _switchRoomsize;
  set switchRoomsize(bool _value) {
    _switchRoomsize = _value;
    prefs.setBool('ff_switchRoomsize', _value);
  }

  bool _switchwaterdrain = false;
  bool get switchwaterdrain => _switchwaterdrain;
  set switchwaterdrain(bool _value) {
    _switchwaterdrain = _value;
    prefs.setBool('ff_switchwaterdrain', _value);
  }

  bool _swtichbathroom = false;
  bool get swtichbathroom => _swtichbathroom;
  set swtichbathroom(bool _value) {
    _swtichbathroom = _value;
    prefs.setBool('ff_swtichbathroom', _value);
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
