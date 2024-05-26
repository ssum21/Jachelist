import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_place_picker.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/place.dart';
import '/flutter_flow/upload_data.dart';
import 'dart:io';
import 'add_room_widget.dart' show AddRoomWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AddRoomModel extends FlutterFlowModel<AddRoomWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for Roomname widget.
  FocusNode? roomnameFocusNode;
  TextEditingController? roomnameTextController;
  String? Function(BuildContext, String?)? roomnameTextControllerValidator;
  // State field(s) for Roomadress widget.
  FocusNode? roomadressFocusNode;
  TextEditingController? roomadressTextController;
  String? Function(BuildContext, String?)? roomadressTextControllerValidator;
  // State field(s) for Roomdesciption widget.
  FocusNode? roomdesciptionFocusNode;
  TextEditingController? roomdesciptionTextController;
  String? Function(BuildContext, String?)?
      roomdesciptionTextControllerValidator;
  // State field(s) for PlacePicker widget.
  var placePickerValue = FFPlace();
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  RoomInfoRecord? tempRoomInfoDocu;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    roomnameFocusNode?.dispose();
    roomnameTextController?.dispose();

    roomadressFocusNode?.dispose();
    roomadressTextController?.dispose();

    roomdesciptionFocusNode?.dispose();
    roomdesciptionTextController?.dispose();
  }
}
