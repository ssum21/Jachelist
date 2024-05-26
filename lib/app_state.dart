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
    _safeInit(() {
      _PriorityPrice = prefs.getInt('ff_PriorityPrice') ?? _PriorityPrice;
    });
    _safeInit(() {
      _PriorityRoomSize =
          prefs.getInt('ff_PriorityRoomSize') ?? _PriorityRoomSize;
    });
    _safeInit(() {
      _PriorityWaterDrainage =
          prefs.getInt('ff_PriorityWaterDrainage') ?? _PriorityWaterDrainage;
    });
    _safeInit(() {
      _PriorityBathroom =
          prefs.getInt('ff_PriorityBathroom') ?? _PriorityBathroom;
    });
    _safeInit(() {
      _PriorityBasicOption =
          prefs.getInt('ff_PriorityBasicOption') ?? _PriorityBasicOption;
    });
    _safeInit(() {
      _PriorityGarbageDisposal = prefs.getInt('ff_PriorityGarbageDisposal') ??
          _PriorityGarbageDisposal;
    });
    _safeInit(() {
      _PriorityWindows = prefs.getInt('ff_PriorityWindows') ?? _PriorityWindows;
    });
    _safeInit(() {
      _PrioritySecurity =
          prefs.getInt('ff_PrioritySecurity') ?? _PrioritySecurity;
    });
    _safeInit(() {
      _PrioritySoundProofing =
          prefs.getInt('ff_PrioritySoundProofing') ?? _PrioritySoundProofing;
    });
    _safeInit(() {
      _PriorityParkingArea =
          prefs.getInt('ff_PriorityParkingArea') ?? _PriorityParkingArea;
    });
    _safeInit(() {
      _PrioritySmokingArea =
          prefs.getInt('ff_PrioritySmokingArea') ?? _PrioritySmokingArea;
    });
    _safeInit(() {
      _ColorIconPrice = _colorFromIntValue(prefs.getInt('ff_ColorIconPrice')) ??
          _ColorIconPrice;
    });
    _safeInit(() {
      _StringPriorityPrice =
          prefs.getString('ff_StringPriorityPrice') ?? _StringPriorityPrice;
    });
    _safeInit(() {
      _StringPriorityRoomSize = prefs.getString('ff_StringPriorityRoomSize') ??
          _StringPriorityRoomSize;
    });
    _safeInit(() {
      _StringPriorityWaterDrainage =
          prefs.getString('ff_StringPriorityWaterDrainage') ??
              _StringPriorityWaterDrainage;
    });
    _safeInit(() {
      _StringPriorityBathroom = prefs.getString('ff_StringPriorityBathroom') ??
          _StringPriorityBathroom;
    });
    _safeInit(() {
      _StringPriorityBasicOption =
          prefs.getString('ff_StringPriorityBasicOption') ??
              _StringPriorityBasicOption;
    });
    _safeInit(() {
      _StringPriorityGarbageDisPosal =
          prefs.getString('ff_StringPriorityGarbageDisPosal') ??
              _StringPriorityGarbageDisPosal;
    });
    _safeInit(() {
      _StringPrioritySecurity = prefs.getString('ff_StringPrioritySecurity') ??
          _StringPrioritySecurity;
    });
    _safeInit(() {
      _StringPriorityWindows =
          prefs.getString('ff_StringPriorityWindows') ?? _StringPriorityWindows;
    });
    _safeInit(() {
      _StringPrioritySmokingArea =
          prefs.getString('ff_StringPrioritySmokingArea') ??
              _StringPrioritySmokingArea;
    });
    _safeInit(() {
      _StringPriorityParkingArea =
          prefs.getString('ff_StringPriorityParkingArea') ??
              _StringPriorityParkingArea;
    });
    _safeInit(() {
      _ColorIconRoomSize =
          _colorFromIntValue(prefs.getInt('ff_ColorIconRoomSize')) ??
              _ColorIconRoomSize;
    });
    _safeInit(() {
      _ColorIconWaterDrainage =
          _colorFromIntValue(prefs.getInt('ff_ColorIconWaterDrainage')) ??
              _ColorIconWaterDrainage;
    });
    _safeInit(() {
      _ColorIconBathroom =
          _colorFromIntValue(prefs.getInt('ff_ColorIconBathroom')) ??
              _ColorIconBathroom;
    });
    _safeInit(() {
      _ColorIconBasicOption =
          _colorFromIntValue(prefs.getInt('ff_ColorIconBasicOption')) ??
              _ColorIconBasicOption;
    });
    _safeInit(() {
      _ColorIconGarbageDisposal =
          _colorFromIntValue(prefs.getInt('ff_ColorIconGarbageDisposal')) ??
              _ColorIconGarbageDisposal;
    });
    _safeInit(() {
      _ColorIconFloor = _colorFromIntValue(prefs.getInt('ff_ColorIconFloor')) ??
          _ColorIconFloor;
    });
    _safeInit(() {
      _ColoriconSecurity =
          _colorFromIntValue(prefs.getInt('ff_ColoriconSecurity')) ??
              _ColoriconSecurity;
    });
    _safeInit(() {
      _ColorIconWindows =
          _colorFromIntValue(prefs.getInt('ff_ColorIconWindows')) ??
              _ColorIconWindows;
    });
    _safeInit(() {
      _ColorIconCleanliness =
          _colorFromIntValue(prefs.getInt('ff_ColorIconCleanliness')) ??
              _ColorIconCleanliness;
    });
    _safeInit(() {
      _ColorIconConvenience =
          _colorFromIntValue(prefs.getInt('ff_ColorIconConvenience')) ??
              _ColorIconConvenience;
    });
    _safeInit(() {
      _ColorIconSoundProofing =
          _colorFromIntValue(prefs.getInt('ff_ColorIconSoundProofing')) ??
              _ColorIconSoundProofing;
    });
    _safeInit(() {
      _ColorIconParkingArea =
          _colorFromIntValue(prefs.getInt('ff_ColorIconParkingArea')) ??
              _ColorIconParkingArea;
    });
    _safeInit(() {
      _ColorIconSmokingArea =
          _colorFromIntValue(prefs.getInt('ff_ColorIconSmokingArea')) ??
              _ColorIconSmokingArea;
    });
    _safeInit(() {
      _PriorityFloor = prefs.getInt('ff_PriorityFloor') ?? _PriorityFloor;
    });
    _safeInit(() {
      _PriorityCleaness =
          prefs.getInt('ff_PriorityCleaness') ?? _PriorityCleaness;
    });
    _safeInit(() {
      _StringPriorityCleaness = prefs.getString('ff_StringPriorityCleaness') ??
          _StringPriorityCleaness;
    });
    _safeInit(() {
      _StringPriorityConvenience =
          prefs.getString('ff_StringPriorityConvenience') ??
              _StringPriorityConvenience;
    });
    _safeInit(() {
      _PriorityConvenience =
          prefs.getInt('ff_PriorityConvenience') ?? _PriorityConvenience;
    });
    _safeInit(() {
      _StringPrioritySoundProofing =
          prefs.getString('ff_StringPrioritySoundProofing') ??
              _StringPrioritySoundProofing;
    });
    _safeInit(() {
      _switchBasicOption =
          prefs.getBool('ff_switchBasicOption') ?? _switchBasicOption;
    });
    _safeInit(() {
      _sWitchGarbageDisposal =
          prefs.getBool('ff_sWitchGarbageDisposal') ?? _sWitchGarbageDisposal;
    });
    _safeInit(() {
      _switchFloor = prefs.getBool('ff_switchFloor') ?? _switchFloor;
    });
    _safeInit(() {
      _switchSecurity = prefs.getBool('ff_switchSecurity') ?? _switchSecurity;
    });
    _safeInit(() {
      _switchcleanliness =
          prefs.getBool('ff_switchcleanliness') ?? _switchcleanliness;
    });
    _safeInit(() {
      _switchConvenience =
          prefs.getBool('ff_switchConvenience') ?? _switchConvenience;
    });
    _safeInit(() {
      _switchSoundproofing =
          prefs.getBool('ff_switchSoundproofing') ?? _switchSoundproofing;
    });
    _safeInit(() {
      _switchParkingArea =
          prefs.getBool('ff_switchParkingArea') ?? _switchParkingArea;
    });
    _safeInit(() {
      _switchSmokingArea =
          prefs.getBool('ff_switchSmokingArea') ?? _switchSmokingArea;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  bool _isOptionsExpanded = false;
  bool get isOptionsExpanded => _isOptionsExpanded;
  set isOptionsExpanded(bool _value) {
    _isOptionsExpanded = _value;
  }

  bool _switchPrice = true;
  bool get switchPrice => _switchPrice;
  set switchPrice(bool _value) {
    _switchPrice = _value;
    prefs.setBool('ff_switchPrice', _value);
  }

  bool _switchRoomsize = true;
  bool get switchRoomsize => _switchRoomsize;
  set switchRoomsize(bool _value) {
    _switchRoomsize = _value;
    prefs.setBool('ff_switchRoomsize', _value);
  }

  bool _switchwaterdrain = true;
  bool get switchwaterdrain => _switchwaterdrain;
  set switchwaterdrain(bool _value) {
    _switchwaterdrain = _value;
    prefs.setBool('ff_switchwaterdrain', _value);
  }

  bool _swtichbathroom = true;
  bool get swtichbathroom => _swtichbathroom;
  set swtichbathroom(bool _value) {
    _swtichbathroom = _value;
    prefs.setBool('ff_swtichbathroom', _value);
  }

  int _PriorityPrice = 3;
  int get PriorityPrice => _PriorityPrice;
  set PriorityPrice(int _value) {
    _PriorityPrice = _value;
    prefs.setInt('ff_PriorityPrice', _value);
  }

  int _PriorityRoomSize = 3;
  int get PriorityRoomSize => _PriorityRoomSize;
  set PriorityRoomSize(int _value) {
    _PriorityRoomSize = _value;
    prefs.setInt('ff_PriorityRoomSize', _value);
  }

  int _PriorityWaterDrainage = 3;
  int get PriorityWaterDrainage => _PriorityWaterDrainage;
  set PriorityWaterDrainage(int _value) {
    _PriorityWaterDrainage = _value;
    prefs.setInt('ff_PriorityWaterDrainage', _value);
  }

  int _PriorityBathroom = 3;
  int get PriorityBathroom => _PriorityBathroom;
  set PriorityBathroom(int _value) {
    _PriorityBathroom = _value;
    prefs.setInt('ff_PriorityBathroom', _value);
  }

  int _PriorityBasicOption = 3;
  int get PriorityBasicOption => _PriorityBasicOption;
  set PriorityBasicOption(int _value) {
    _PriorityBasicOption = _value;
    prefs.setInt('ff_PriorityBasicOption', _value);
  }

  int _PriorityGarbageDisposal = 3;
  int get PriorityGarbageDisposal => _PriorityGarbageDisposal;
  set PriorityGarbageDisposal(int _value) {
    _PriorityGarbageDisposal = _value;
    prefs.setInt('ff_PriorityGarbageDisposal', _value);
  }

  int _PriorityWindows = 3;
  int get PriorityWindows => _PriorityWindows;
  set PriorityWindows(int _value) {
    _PriorityWindows = _value;
    prefs.setInt('ff_PriorityWindows', _value);
  }

  int _PrioritySecurity = 3;
  int get PrioritySecurity => _PrioritySecurity;
  set PrioritySecurity(int _value) {
    _PrioritySecurity = _value;
    prefs.setInt('ff_PrioritySecurity', _value);
  }

  int _PrioritySoundProofing = 3;
  int get PrioritySoundProofing => _PrioritySoundProofing;
  set PrioritySoundProofing(int _value) {
    _PrioritySoundProofing = _value;
    prefs.setInt('ff_PrioritySoundProofing', _value);
  }

  int _PriorityParkingArea = 3;
  int get PriorityParkingArea => _PriorityParkingArea;
  set PriorityParkingArea(int _value) {
    _PriorityParkingArea = _value;
    prefs.setInt('ff_PriorityParkingArea', _value);
  }

  int _PrioritySmokingArea = 3;
  int get PrioritySmokingArea => _PrioritySmokingArea;
  set PrioritySmokingArea(int _value) {
    _PrioritySmokingArea = _value;
    prefs.setInt('ff_PrioritySmokingArea', _value);
  }

  Color _ColorIconPrice = Color(4283120111);
  Color get ColorIconPrice => _ColorIconPrice;
  set ColorIconPrice(Color _value) {
    _ColorIconPrice = _value;
    prefs.setInt('ff_ColorIconPrice', _value.value);
  }

  String _StringPriorityPrice = '보통';
  String get StringPriorityPrice => _StringPriorityPrice;
  set StringPriorityPrice(String _value) {
    _StringPriorityPrice = _value;
    prefs.setString('ff_StringPriorityPrice', _value);
  }

  String _StringPriorityRoomSize = '보통';
  String get StringPriorityRoomSize => _StringPriorityRoomSize;
  set StringPriorityRoomSize(String _value) {
    _StringPriorityRoomSize = _value;
    prefs.setString('ff_StringPriorityRoomSize', _value);
  }

  String _StringPriorityWaterDrainage = '보통';
  String get StringPriorityWaterDrainage => _StringPriorityWaterDrainage;
  set StringPriorityWaterDrainage(String _value) {
    _StringPriorityWaterDrainage = _value;
    prefs.setString('ff_StringPriorityWaterDrainage', _value);
  }

  String _StringPriorityBathroom = '보통';
  String get StringPriorityBathroom => _StringPriorityBathroom;
  set StringPriorityBathroom(String _value) {
    _StringPriorityBathroom = _value;
    prefs.setString('ff_StringPriorityBathroom', _value);
  }

  String _StringPriorityBasicOption = '보통';
  String get StringPriorityBasicOption => _StringPriorityBasicOption;
  set StringPriorityBasicOption(String _value) {
    _StringPriorityBasicOption = _value;
    prefs.setString('ff_StringPriorityBasicOption', _value);
  }

  String _StringPriorityGarbageDisPosal = '보통';
  String get StringPriorityGarbageDisPosal => _StringPriorityGarbageDisPosal;
  set StringPriorityGarbageDisPosal(String _value) {
    _StringPriorityGarbageDisPosal = _value;
    prefs.setString('ff_StringPriorityGarbageDisPosal', _value);
  }

  String _StringPriorityFloor = '보통';
  String get StringPriorityFloor => _StringPriorityFloor;
  set StringPriorityFloor(String _value) {
    _StringPriorityFloor = _value;
  }

  String _StringPrioritySecurity = '보통';
  String get StringPrioritySecurity => _StringPrioritySecurity;
  set StringPrioritySecurity(String _value) {
    _StringPrioritySecurity = _value;
    prefs.setString('ff_StringPrioritySecurity', _value);
  }

  String _StringPriorityWindows = '보통';
  String get StringPriorityWindows => _StringPriorityWindows;
  set StringPriorityWindows(String _value) {
    _StringPriorityWindows = _value;
    prefs.setString('ff_StringPriorityWindows', _value);
  }

  String _StringPrioritySmokingArea = '보통';
  String get StringPrioritySmokingArea => _StringPrioritySmokingArea;
  set StringPrioritySmokingArea(String _value) {
    _StringPrioritySmokingArea = _value;
    prefs.setString('ff_StringPrioritySmokingArea', _value);
  }

  String _StringPriorityParkingArea = '보통';
  String get StringPriorityParkingArea => _StringPriorityParkingArea;
  set StringPriorityParkingArea(String _value) {
    _StringPriorityParkingArea = _value;
    prefs.setString('ff_StringPriorityParkingArea', _value);
  }

  Color _ColorIconRoomSize = Color(4283120111);
  Color get ColorIconRoomSize => _ColorIconRoomSize;
  set ColorIconRoomSize(Color _value) {
    _ColorIconRoomSize = _value;
    prefs.setInt('ff_ColorIconRoomSize', _value.value);
  }

  Color _ColorIconWaterDrainage = Color(4283120111);
  Color get ColorIconWaterDrainage => _ColorIconWaterDrainage;
  set ColorIconWaterDrainage(Color _value) {
    _ColorIconWaterDrainage = _value;
    prefs.setInt('ff_ColorIconWaterDrainage', _value.value);
  }

  Color _ColorIconBathroom = Color(4283120111);
  Color get ColorIconBathroom => _ColorIconBathroom;
  set ColorIconBathroom(Color _value) {
    _ColorIconBathroom = _value;
    prefs.setInt('ff_ColorIconBathroom', _value.value);
  }

  Color _ColorIconBasicOption = Color(4283120111);
  Color get ColorIconBasicOption => _ColorIconBasicOption;
  set ColorIconBasicOption(Color _value) {
    _ColorIconBasicOption = _value;
    prefs.setInt('ff_ColorIconBasicOption', _value.value);
  }

  Color _ColorIconGarbageDisposal = Color(4283120111);
  Color get ColorIconGarbageDisposal => _ColorIconGarbageDisposal;
  set ColorIconGarbageDisposal(Color _value) {
    _ColorIconGarbageDisposal = _value;
    prefs.setInt('ff_ColorIconGarbageDisposal', _value.value);
  }

  Color _ColorIconFloor = Color(4283120111);
  Color get ColorIconFloor => _ColorIconFloor;
  set ColorIconFloor(Color _value) {
    _ColorIconFloor = _value;
    prefs.setInt('ff_ColorIconFloor', _value.value);
  }

  Color _ColoriconSecurity = Color(4283120111);
  Color get ColoriconSecurity => _ColoriconSecurity;
  set ColoriconSecurity(Color _value) {
    _ColoriconSecurity = _value;
    prefs.setInt('ff_ColoriconSecurity', _value.value);
  }

  Color _ColorIconWindows = Color(4283120111);
  Color get ColorIconWindows => _ColorIconWindows;
  set ColorIconWindows(Color _value) {
    _ColorIconWindows = _value;
    prefs.setInt('ff_ColorIconWindows', _value.value);
  }

  Color _ColorIconCleanliness = Color(4283120111);
  Color get ColorIconCleanliness => _ColorIconCleanliness;
  set ColorIconCleanliness(Color _value) {
    _ColorIconCleanliness = _value;
    prefs.setInt('ff_ColorIconCleanliness', _value.value);
  }

  Color _ColorIconConvenience = Color(4283120111);
  Color get ColorIconConvenience => _ColorIconConvenience;
  set ColorIconConvenience(Color _value) {
    _ColorIconConvenience = _value;
    prefs.setInt('ff_ColorIconConvenience', _value.value);
  }

  Color _ColorIconSoundProofing = Color(4283120111);
  Color get ColorIconSoundProofing => _ColorIconSoundProofing;
  set ColorIconSoundProofing(Color _value) {
    _ColorIconSoundProofing = _value;
    prefs.setInt('ff_ColorIconSoundProofing', _value.value);
  }

  Color _ColorIconParkingArea = Color(4283120111);
  Color get ColorIconParkingArea => _ColorIconParkingArea;
  set ColorIconParkingArea(Color _value) {
    _ColorIconParkingArea = _value;
    prefs.setInt('ff_ColorIconParkingArea', _value.value);
  }

  Color _ColorIconSmokingArea = Color(4283120111);
  Color get ColorIconSmokingArea => _ColorIconSmokingArea;
  set ColorIconSmokingArea(Color _value) {
    _ColorIconSmokingArea = _value;
    prefs.setInt('ff_ColorIconSmokingArea', _value.value);
  }

  int _PriorityFloor = 3;
  int get PriorityFloor => _PriorityFloor;
  set PriorityFloor(int _value) {
    _PriorityFloor = _value;
    prefs.setInt('ff_PriorityFloor', _value);
  }

  int _PriorityCleaness = 3;
  int get PriorityCleaness => _PriorityCleaness;
  set PriorityCleaness(int _value) {
    _PriorityCleaness = _value;
    prefs.setInt('ff_PriorityCleaness', _value);
  }

  String _StringPriorityCleaness = '보통';
  String get StringPriorityCleaness => _StringPriorityCleaness;
  set StringPriorityCleaness(String _value) {
    _StringPriorityCleaness = _value;
    prefs.setString('ff_StringPriorityCleaness', _value);
  }

  String _StringPriorityConvenience = '보통';
  String get StringPriorityConvenience => _StringPriorityConvenience;
  set StringPriorityConvenience(String _value) {
    _StringPriorityConvenience = _value;
    prefs.setString('ff_StringPriorityConvenience', _value);
  }

  int _PriorityConvenience = 3;
  int get PriorityConvenience => _PriorityConvenience;
  set PriorityConvenience(int _value) {
    _PriorityConvenience = _value;
    prefs.setInt('ff_PriorityConvenience', _value);
  }

  String _StringPrioritySoundProofing = '보통';
  String get StringPrioritySoundProofing => _StringPrioritySoundProofing;
  set StringPrioritySoundProofing(String _value) {
    _StringPrioritySoundProofing = _value;
    prefs.setString('ff_StringPrioritySoundProofing', _value);
  }

  bool _switchBasicOption = true;
  bool get switchBasicOption => _switchBasicOption;
  set switchBasicOption(bool _value) {
    _switchBasicOption = _value;
    prefs.setBool('ff_switchBasicOption', _value);
  }

  bool _sWitchGarbageDisposal = true;
  bool get sWitchGarbageDisposal => _sWitchGarbageDisposal;
  set sWitchGarbageDisposal(bool _value) {
    _sWitchGarbageDisposal = _value;
    prefs.setBool('ff_sWitchGarbageDisposal', _value);
  }

  bool _switchFloor = true;
  bool get switchFloor => _switchFloor;
  set switchFloor(bool _value) {
    _switchFloor = _value;
    prefs.setBool('ff_switchFloor', _value);
  }

  bool _switchSecurity = true;
  bool get switchSecurity => _switchSecurity;
  set switchSecurity(bool _value) {
    _switchSecurity = _value;
    prefs.setBool('ff_switchSecurity', _value);
  }

  bool _switchwindows = true;
  bool get switchwindows => _switchwindows;
  set switchwindows(bool _value) {
    _switchwindows = _value;
  }

  bool _switchcleanliness = true;
  bool get switchcleanliness => _switchcleanliness;
  set switchcleanliness(bool _value) {
    _switchcleanliness = _value;
    prefs.setBool('ff_switchcleanliness', _value);
  }

  bool _switchConvenience = true;
  bool get switchConvenience => _switchConvenience;
  set switchConvenience(bool _value) {
    _switchConvenience = _value;
    prefs.setBool('ff_switchConvenience', _value);
  }

  bool _switchSoundproofing = true;
  bool get switchSoundproofing => _switchSoundproofing;
  set switchSoundproofing(bool _value) {
    _switchSoundproofing = _value;
    prefs.setBool('ff_switchSoundproofing', _value);
  }

  bool _switchParkingArea = true;
  bool get switchParkingArea => _switchParkingArea;
  set switchParkingArea(bool _value) {
    _switchParkingArea = _value;
    prefs.setBool('ff_switchParkingArea', _value);
  }

  bool _switchSmokingArea = true;
  bool get switchSmokingArea => _switchSmokingArea;
  set switchSmokingArea(bool _value) {
    _switchSmokingArea = _value;
    prefs.setBool('ff_switchSmokingArea', _value);
  }

  bool _buttonJeonseBool = false;
  bool get buttonJeonseBool => _buttonJeonseBool;
  set buttonJeonseBool(bool _value) {
    _buttonJeonseBool = _value;
  }

  bool _buttonWolseBool = false;
  bool get buttonWolseBool => _buttonWolseBool;
  set buttonWolseBool(bool _value) {
    _buttonWolseBool = _value;
  }

  bool _buttonMaeMaeBool = false;
  bool get buttonMaeMaeBool => _buttonMaeMaeBool;
  set buttonMaeMaeBool(bool _value) {
    _buttonMaeMaeBool = _value;
  }

  Color _ColorButtonBorderJeonse = Color(0);
  Color get ColorButtonBorderJeonse => _ColorButtonBorderJeonse;
  set ColorButtonBorderJeonse(Color _value) {
    _ColorButtonBorderJeonse = _value;
  }

  Color _ColorButtonBorderWolse = Color(0);
  Color get ColorButtonBorderWolse => _ColorButtonBorderWolse;
  set ColorButtonBorderWolse(Color _value) {
    _ColorButtonBorderWolse = _value;
  }

  Color _ColorButtonBorderMaeMae = Colors.transparent;
  Color get ColorButtonBorderMaeMae => _ColorButtonBorderMaeMae;
  set ColorButtonBorderMaeMae(Color _value) {
    _ColorButtonBorderMaeMae = _value;
  }

  int _livingTypeInt = 0;
  int get livingTypeInt => _livingTypeInt;
  set livingTypeInt(int _value) {
    _livingTypeInt = _value;
  }

  List<bool> _switchOnOffList = [];
  List<bool> get switchOnOffList => _switchOnOffList;
  set switchOnOffList(List<bool> _value) {
    _switchOnOffList = _value;
  }

  void addToSwitchOnOffList(bool _value) {
    _switchOnOffList.add(_value);
  }

  void removeFromSwitchOnOffList(bool _value) {
    _switchOnOffList.remove(_value);
  }

  void removeAtIndexFromSwitchOnOffList(int _index) {
    _switchOnOffList.removeAt(_index);
  }

  void updateSwitchOnOffListAtIndex(
    int _index,
    bool Function(bool) updateFn,
  ) {
    _switchOnOffList[_index] = updateFn(_switchOnOffList[_index]);
  }

  void insertAtIndexInSwitchOnOffList(int _index, bool _value) {
    _switchOnOffList.insert(_index, _value);
  }

  List<int> _PriorityLevelList = [];
  List<int> get PriorityLevelList => _PriorityLevelList;
  set PriorityLevelList(List<int> _value) {
    _PriorityLevelList = _value;
  }

  void addToPriorityLevelList(int _value) {
    _PriorityLevelList.add(_value);
  }

  void removeFromPriorityLevelList(int _value) {
    _PriorityLevelList.remove(_value);
  }

  void removeAtIndexFromPriorityLevelList(int _index) {
    _PriorityLevelList.removeAt(_index);
  }

  void updatePriorityLevelListAtIndex(
    int _index,
    int Function(int) updateFn,
  ) {
    _PriorityLevelList[_index] = updateFn(_PriorityLevelList[_index]);
  }

  void insertAtIndexInPriorityLevelList(int _index, int _value) {
    _PriorityLevelList.insert(_index, _value);
  }

  double _CateAvgReviewList = 0.0;
  double get CateAvgReviewList => _CateAvgReviewList;
  set CateAvgReviewList(double _value) {
    _CateAvgReviewList = _value;
  }

  List<double> _avgReviewList = [];
  List<double> get avgReviewList => _avgReviewList;
  set avgReviewList(List<double> _value) {
    _avgReviewList = _value;
  }

  void addToAvgReviewList(double _value) {
    _avgReviewList.add(_value);
  }

  void removeFromAvgReviewList(double _value) {
    _avgReviewList.remove(_value);
  }

  void removeAtIndexFromAvgReviewList(int _index) {
    _avgReviewList.removeAt(_index);
  }

  void updateAvgReviewListAtIndex(
    int _index,
    double Function(double) updateFn,
  ) {
    _avgReviewList[_index] = updateFn(_avgReviewList[_index]);
  }

  void insertAtIndexInAvgReviewList(int _index, double _value) {
    _avgReviewList.insert(_index, _value);
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

Color? _colorFromIntValue(int? val) {
  if (val == null) {
    return null;
  }
  return Color(val);
}
