import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/amenitity_indicator/amenitity_indicator_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'room_star_review_widget.dart' show RoomStarReviewWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class RoomStarReviewModel extends FlutterFlowModel<RoomStarReviewWidget> {
  ///  Local state fields for this page.

  double? jeonsae;

  double? depositRating;

  double? managementFeeRating;

  double? parkingFeeRating;

  double? internetFeeRating;

  double? utilityFeeRating;

  List<double> pricetotalrating = [];
  void addToPricetotalrating(double item) => pricetotalrating.add(item);
  void removeFromPricetotalrating(double item) => pricetotalrating.remove(item);
  void removeAtIndexFromPricetotalrating(int index) =>
      pricetotalrating.removeAt(index);
  void insertAtIndexInPricetotalrating(int index, double item) =>
      pricetotalrating.insert(index, item);
  void updatePricetotalratingAtIndex(int index, Function(double) updateFn) =>
      pricetotalrating[index] = updateFn(pricetotalrating[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Create Document] action in IconButton widget.
  RoomPriceRecord? priceData;
  // Stores action output result for [Backend Call - Create Document] action in IconButton widget.
  RoomSizeRecord? sizeData;
  // Stores action output result for [Backend Call - Create Document] action in IconButton widget.
  RoomWaterDrainageRecord? waterDrainageData;
  // Stores action output result for [Backend Call - Create Document] action in IconButton widget.
  RoomBathroomRecord? bathroomData;
  // Stores action output result for [Backend Call - Create Document] action in IconButton widget.
  RoomBasicOptionRecord? basicOptionData;
  // Stores action output result for [Backend Call - Create Document] action in IconButton widget.
  RoomGarbageDisposalRecord? garbageDisposalData;
  // Stores action output result for [Backend Call - Create Document] action in IconButton widget.
  RoomFloorRecord? floorData;
  // Stores action output result for [Backend Call - Create Document] action in IconButton widget.
  RoomSecurityRecord? securityData;
  // Stores action output result for [Backend Call - Create Document] action in IconButton widget.
  RoomWindowsRecord? windowsData;
  // Stores action output result for [Backend Call - Create Document] action in IconButton widget.
  RoomCleanlinessRecord? cleanlinessData;
  // Stores action output result for [Backend Call - Create Document] action in IconButton widget.
  RoomConvenienceRecord? convenienceData;
  // Stores action output result for [Backend Call - Create Document] action in IconButton widget.
  RoomSoundProofingRecord? soundProofingData;
  // Stores action output result for [Backend Call - Create Document] action in IconButton widget.
  RoomParkingAreaRecord? parkingAreaData;
  // Stores action output result for [Backend Call - Create Document] action in IconButton widget.
  RoomSmokingAreaRecord? smokingAreaData;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController1;

  // Model for amenitityIndicator component.
  late AmenitityIndicatorModel amenitityIndicatorModel1;
  // State field(s) for JeonseTextfield widget.
  FocusNode? jeonseTextfieldFocusNode;
  TextEditingController? jeonseTextfieldTextController;
  String? Function(BuildContext, String?)?
      jeonseTextfieldTextControllerValidator;
  // State field(s) for WolseTextfield widget.
  FocusNode? wolseTextfieldFocusNode;
  TextEditingController? wolseTextfieldTextController;
  String? Function(BuildContext, String?)?
      wolseTextfieldTextControllerValidator;
  // State field(s) for DepositTextfield widget.
  FocusNode? depositTextfieldFocusNode;
  TextEditingController? depositTextfieldTextController;
  String? Function(BuildContext, String?)?
      depositTextfieldTextControllerValidator;
  // State field(s) for AdminTextfield widget.
  FocusNode? adminTextfieldFocusNode;
  TextEditingController? adminTextfieldTextController;
  String? Function(BuildContext, String?)?
      adminTextfieldTextControllerValidator;
  // State field(s) for ParkingTextfield widget.
  FocusNode? parkingTextfieldFocusNode;
  TextEditingController? parkingTextfieldTextController;
  String? Function(BuildContext, String?)?
      parkingTextfieldTextControllerValidator;
  // State field(s) for InternetTextfield widget.
  FocusNode? internetTextfieldFocusNode;
  TextEditingController? internetTextfieldTextController;
  String? Function(BuildContext, String?)?
      internetTextfieldTextControllerValidator;
  // State field(s) for ElecTextfield widget.
  FocusNode? elecTextfieldFocusNode;
  TextEditingController? elecTextfieldTextController;
  String? Function(BuildContext, String?)? elecTextfieldTextControllerValidator;
  // State field(s) for WaterTextfield widget.
  FocusNode? waterTextfieldFocusNode;
  TextEditingController? waterTextfieldTextController;
  String? Function(BuildContext, String?)?
      waterTextfieldTextControllerValidator;
  // State field(s) for HeatingTextfield widget.
  FocusNode? heatingTextfieldFocusNode;
  TextEditingController? heatingTextfieldTextController;
  String? Function(BuildContext, String?)?
      heatingTextfieldTextControllerValidator;
  // State field(s) for Pricebar widget.
  double? pricebarValue;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController2;

  // Model for amenitityIndicator component.
  late AmenitityIndicatorModel amenitityIndicatorModel2;
  // State field(s) for Roomsizebar widget.
  double? roomsizebarValue;
  // State field(s) for Roomshapebar widget.
  double? roomshapebarValue;
  // State field(s) for Opensepartebar widget.
  double? opensepartebarValue;
  // State field(s) for EaseofFurnitureArrangementbar widget.
  double? easeofFurnitureArrangementbarValue;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController3;

  // Model for amenitityIndicator component.
  late AmenitityIndicatorModel amenitityIndicatorModel3;
  // State field(s) for waterpressurebar widget.
  double? waterpressurebarValue;
  // State field(s) for warmwaterpossiblebar widget.
  double? warmwaterpossiblebarValue;
  // State field(s) for drainstatebar widget.
  double? drainstatebarValue;
  // State field(s) for Waterpipesatusbar widget.
  double? waterpipesatusbarValue;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController4;

  // Model for amenitityIndicator component.
  late AmenitityIndicatorModel amenitityIndicatorModel4;
  // State field(s) for windowbar widget.
  double? windowbarValue;
  // State field(s) for drainsmellbar widget.
  double? drainsmellbarValue;
  // State field(s) for showerboothbar widget.
  double? showerboothbarValue;
  // State field(s) for Gompangyeebar widget.
  double? gompangyeebarValue;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController5;

  // Model for amenitityIndicator component.
  late AmenitityIndicatorModel amenitityIndicatorModel5;
  // State field(s) for refrigeratoroptionbar widget.
  double? refrigeratoroptionbarValue;
  // State field(s) for Washingmachineoptionsbar widget.
  double? washingmachineoptionsbarValue;
  // State field(s) for gasstovebar widget.
  double? gasstovebarValue;
  // State field(s) for airconditionaloptionbar widget.
  double? airconditionaloptionbarValue;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController6;

  // Model for amenitityIndicator component.
  late AmenitityIndicatorModel amenitityIndicatorModel6;
  // State field(s) for trashlocationbar widget.
  double? trashlocationbarValue;
  // State field(s) for trashsmellbar widget.
  double? trashsmellbarValue;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController7;

  // Model for amenitityIndicator component.
  late AmenitityIndicatorModel amenitityIndicatorModel7;
  // State field(s) for floorbar widget.
  double? floorbarValue;
  // State field(s) for elevatorbar widget.
  double? elevatorbarValue;
  // State field(s) for stairgoodbar widget.
  double? stairgoodbarValue;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController8;

  // Model for amenitityIndicator component.
  late AmenitityIndicatorModel amenitityIndicatorModel8;
  // State field(s) for doorlockbar widget.
  double? doorlockbarValue;
  // State field(s) for cctvbar widget.
  double? cctvbarValue;
  // State field(s) for buildentrycontolbar widget.
  double? buildentrycontolbarValue;
  // State field(s) for policebar widget.
  double? policebarValue;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController9;

  // Model for amenitityIndicator component.
  late AmenitityIndicatorModel amenitityIndicatorModel9;
  // State field(s) for windownumbar widget.
  double? windownumbarValue;
  // State field(s) for sunlightbar widget.
  double? sunlightbarValue;
  // State field(s) for windgoodbar widget.
  double? windgoodbarValue;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController10;

  // Model for amenitityIndicator component.
  late AmenitityIndicatorModel amenitityIndicatorModel10;
  // State field(s) for floorstatebar widget.
  double? floorstatebarValue;
  // State field(s) for wallstatebar widget.
  double? wallstatebarValue;
  // State field(s) for kitchencleanbar widget.
  double? kitchencleanbarValue;
  // State field(s) for buildcleanbar widget.
  double? buildcleanbarValue;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController11;

  // Model for amenitityIndicator component.
  late AmenitityIndicatorModel amenitityIndicatorModel11;
  // State field(s) for martbar widget.
  double? martbarValue;
  // State field(s) for busbar widget.
  double? busbarValue;
  // State field(s) for schoolbar widget.
  double? schoolbarValue;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController12;

  // Model for amenitityIndicator component.
  late AmenitityIndicatorModel amenitityIndicatorModel12;
  // State field(s) for wallsoundbar widget.
  double? wallsoundbarValue;
  // State field(s) for outsidesoundbar widget.
  double? outsidesoundbarValue;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController13;

  // Model for amenitityIndicator component.
  late AmenitityIndicatorModel amenitityIndicatorModel13;
  // State field(s) for parkingspacebar widget.
  double? parkingspacebarValue;
  // State field(s) for parkingcostbar widget.
  double? parkingcostbarValue;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController14;

  // Model for amenitityIndicator component.
  late AmenitityIndicatorModel amenitityIndicatorModel14;
  // State field(s) for smokingspacebar widget.
  double? smokingspacebarValue;
  // State field(s) for smokinglocationbar widget.
  double? smokinglocationbarValue;
  // State field(s) for smokingareacleanessbar widget.
  double? smokingareacleanessbarValue;

  @override
  void initState(BuildContext context) {
    amenitityIndicatorModel1 =
        createModel(context, () => AmenitityIndicatorModel());
    amenitityIndicatorModel2 =
        createModel(context, () => AmenitityIndicatorModel());
    amenitityIndicatorModel3 =
        createModel(context, () => AmenitityIndicatorModel());
    amenitityIndicatorModel4 =
        createModel(context, () => AmenitityIndicatorModel());
    amenitityIndicatorModel5 =
        createModel(context, () => AmenitityIndicatorModel());
    amenitityIndicatorModel6 =
        createModel(context, () => AmenitityIndicatorModel());
    amenitityIndicatorModel7 =
        createModel(context, () => AmenitityIndicatorModel());
    amenitityIndicatorModel8 =
        createModel(context, () => AmenitityIndicatorModel());
    amenitityIndicatorModel9 =
        createModel(context, () => AmenitityIndicatorModel());
    amenitityIndicatorModel10 =
        createModel(context, () => AmenitityIndicatorModel());
    amenitityIndicatorModel11 =
        createModel(context, () => AmenitityIndicatorModel());
    amenitityIndicatorModel12 =
        createModel(context, () => AmenitityIndicatorModel());
    amenitityIndicatorModel13 =
        createModel(context, () => AmenitityIndicatorModel());
    amenitityIndicatorModel14 =
        createModel(context, () => AmenitityIndicatorModel());
  }

  @override
  void dispose() {
    expandableExpandableController1.dispose();
    amenitityIndicatorModel1.dispose();
    jeonseTextfieldFocusNode?.dispose();
    jeonseTextfieldTextController?.dispose();

    wolseTextfieldFocusNode?.dispose();
    wolseTextfieldTextController?.dispose();

    depositTextfieldFocusNode?.dispose();
    depositTextfieldTextController?.dispose();

    adminTextfieldFocusNode?.dispose();
    adminTextfieldTextController?.dispose();

    parkingTextfieldFocusNode?.dispose();
    parkingTextfieldTextController?.dispose();

    internetTextfieldFocusNode?.dispose();
    internetTextfieldTextController?.dispose();

    elecTextfieldFocusNode?.dispose();
    elecTextfieldTextController?.dispose();

    waterTextfieldFocusNode?.dispose();
    waterTextfieldTextController?.dispose();

    heatingTextfieldFocusNode?.dispose();
    heatingTextfieldTextController?.dispose();

    expandableExpandableController2.dispose();
    amenitityIndicatorModel2.dispose();
    expandableExpandableController3.dispose();
    amenitityIndicatorModel3.dispose();
    expandableExpandableController4.dispose();
    amenitityIndicatorModel4.dispose();
    expandableExpandableController5.dispose();
    amenitityIndicatorModel5.dispose();
    expandableExpandableController6.dispose();
    amenitityIndicatorModel6.dispose();
    expandableExpandableController7.dispose();
    amenitityIndicatorModel7.dispose();
    expandableExpandableController8.dispose();
    amenitityIndicatorModel8.dispose();
    expandableExpandableController9.dispose();
    amenitityIndicatorModel9.dispose();
    expandableExpandableController10.dispose();
    amenitityIndicatorModel10.dispose();
    expandableExpandableController11.dispose();
    amenitityIndicatorModel11.dispose();
    expandableExpandableController12.dispose();
    amenitityIndicatorModel12.dispose();
    expandableExpandableController13.dispose();
    amenitityIndicatorModel13.dispose();
    expandableExpandableController14.dispose();
    amenitityIndicatorModel14.dispose();
  }
}
