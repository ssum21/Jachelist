import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/amenitity_indicator/amenitity_indicator_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'room_star_review_model.dart';
export 'room_star_review_model.dart';

class RoomStarReviewWidget extends StatefulWidget {
  const RoomStarReviewWidget({
    super.key,
    this.tempRoomInfoDocu,
  });

  final RoomInfoRecord? tempRoomInfoDocu;

  @override
  State<RoomStarReviewWidget> createState() => _RoomStarReviewWidgetState();
}

class _RoomStarReviewWidgetState extends State<RoomStarReviewWidget> {
  late RoomStarReviewModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RoomStarReviewModel());

    _model.expandableExpandableController1 =
        ExpandableController(initialExpanded: false);
    _model.wolseTextfieldTextController ??= TextEditingController();
    _model.wolseTextfieldFocusNode ??= FocusNode();

    _model.depositTextfieldTextController ??= TextEditingController();
    _model.depositTextfieldFocusNode ??= FocusNode();

    _model.adminTextfieldTextController ??= TextEditingController();
    _model.adminTextfieldFocusNode ??= FocusNode();

    _model.parkingTextfieldTextController ??= TextEditingController();
    _model.parkingTextfieldFocusNode ??= FocusNode();

    _model.internetTextfieldTextController ??= TextEditingController();
    _model.internetTextfieldFocusNode ??= FocusNode();

    _model.elecAndWaterTextfieldTextController ??= TextEditingController();
    _model.elecAndWaterTextfieldFocusNode ??= FocusNode();

    _model.expandableExpandableController2 =
        ExpandableController(initialExpanded: false);
    _model.expandableExpandableController3 =
        ExpandableController(initialExpanded: false);
    _model.expandableExpandableController4 =
        ExpandableController(initialExpanded: false);
    _model.expandableExpandableController5 =
        ExpandableController(initialExpanded: false);
    _model.expandableExpandableController6 =
        ExpandableController(initialExpanded: false);
    _model.expandableExpandableController7 =
        ExpandableController(initialExpanded: false);
    _model.expandableExpandableController8 =
        ExpandableController(initialExpanded: false);
    _model.expandableExpandableController9 =
        ExpandableController(initialExpanded: false);
    _model.expandableExpandableController10 =
        ExpandableController(initialExpanded: false);
    _model.expandableExpandableController11 =
        ExpandableController(initialExpanded: false);
    _model.expandableExpandableController12 =
        ExpandableController(initialExpanded: false);
    _model.expandableExpandableController13 =
        ExpandableController(initialExpanded: false);
    _model.expandableExpandableController14 =
        ExpandableController(initialExpanded: false);
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30.0,
          buttonSize: 46.0,
          icon: Icon(
            Icons.arrow_back_rounded,
            color: Color(0xFF95A1AC),
            size: 25.0,
          ),
          onPressed: () async {
            context.pop();
          },
        ),
        title: Text(
          valueOrDefault<String>(
            widget.tempRoomInfoDocu?.roomName,
            '방 이름',
          ),
          style: FlutterFlowTheme.of(context).headlineSmall.override(
                fontFamily: 'NotoSansKR',
                letterSpacing: 0.0,
                useGoogleFonts: GoogleFonts.asMap().containsKey('NotoSansKR'),
              ),
        ),
        actions: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 15.0, 0.0),
            child: FlutterFlowIconButton(
              borderRadius: 20.0,
              buttonSize: 40.0,
              icon: Icon(
                Icons.check_sharp,
                color: FlutterFlowTheme.of(context).primaryText,
                size: 24.0,
              ),
              onPressed: () async {
                if (FFAppState().switchPrice) {
                  // 1. PriceData

                  var roomPriceRecordReference = RoomPriceRecord.createDoc(
                      widget.tempRoomInfoDocu!.reference);
                  await roomPriceRecordReference.set(createRoomPriceRecordData(
                    livingTypeReview: valueOrDefault<int>(
                      FFAppState().livingTypeInt,
                      0,
                    ),
                    depositCost: valueOrDefault<double>(
                      double.tryParse(
                          _model.depositTextfieldTextController.text),
                      0.0,
                    ),
                    administrationCost: valueOrDefault<double>(
                      double.tryParse(_model.adminTextfieldTextController.text),
                      0.0,
                    ),
                    parkingCost: valueOrDefault<double>(
                      double.tryParse(
                          _model.parkingTextfieldTextController.text),
                      0.0,
                    ),
                    internetFeeCost: valueOrDefault<double>(
                      double.tryParse(
                          _model.internetTextfieldTextController.text),
                      0.0,
                    ),
                    electricAndWaterFeeCost: valueOrDefault<double>(
                      double.tryParse(
                          _model.internetTextfieldTextController.text),
                      0.0,
                    ),
                    monthCost: valueOrDefault<double>(
                      valueOrDefault<double>(
                            double.tryParse(
                                _model.adminTextfieldTextController.text),
                            0.0,
                          ) +
                          valueOrDefault<double>(
                            double.tryParse(
                                _model.parkingTextfieldTextController.text),
                            0.0,
                          ) +
                          valueOrDefault<double>(
                            double.tryParse(
                                _model.internetTextfieldTextController.text),
                            0.0,
                          ) +
                          valueOrDefault<double>(
                            double.tryParse(_model
                                .elecAndWaterTextfieldTextController.text),
                            0.0,
                          ),
                      0.0,
                    ),
                    priceReview: _model.pricebarValue,
                  ));
                  _model.priceData = RoomPriceRecord.getDocumentFromData(
                      createRoomPriceRecordData(
                        livingTypeReview: valueOrDefault<int>(
                          FFAppState().livingTypeInt,
                          0,
                        ),
                        depositCost: valueOrDefault<double>(
                          double.tryParse(
                              _model.depositTextfieldTextController.text),
                          0.0,
                        ),
                        administrationCost: valueOrDefault<double>(
                          double.tryParse(
                              _model.adminTextfieldTextController.text),
                          0.0,
                        ),
                        parkingCost: valueOrDefault<double>(
                          double.tryParse(
                              _model.parkingTextfieldTextController.text),
                          0.0,
                        ),
                        internetFeeCost: valueOrDefault<double>(
                          double.tryParse(
                              _model.internetTextfieldTextController.text),
                          0.0,
                        ),
                        electricAndWaterFeeCost: valueOrDefault<double>(
                          double.tryParse(
                              _model.internetTextfieldTextController.text),
                          0.0,
                        ),
                        monthCost: valueOrDefault<double>(
                          valueOrDefault<double>(
                                double.tryParse(
                                    _model.adminTextfieldTextController.text),
                                0.0,
                              ) +
                              valueOrDefault<double>(
                                double.tryParse(
                                    _model.parkingTextfieldTextController.text),
                                0.0,
                              ) +
                              valueOrDefault<double>(
                                double.tryParse(_model
                                    .internetTextfieldTextController.text),
                                0.0,
                              ) +
                              valueOrDefault<double>(
                                double.tryParse(_model
                                    .elecAndWaterTextfieldTextController.text),
                                0.0,
                              ),
                          0.0,
                        ),
                        priceReview: _model.pricebarValue,
                      ),
                      roomPriceRecordReference);
                  // 1. PriceUpdate
                  setState(() {
                    FFAppState().addToSwitchOnOffList(FFAppState().switchPrice);
                    FFAppState().addToPriorityLevelList(valueOrDefault<int>(
                      FFAppState().PriorityPrice,
                      4,
                    ));
                    FFAppState().addToAvgReviewList(_model.pricebarValue!);
                  });
                }
                if (FFAppState().switchRoomsize) {
                  // 2. SizeData

                  var roomSizeRecordReference = RoomSizeRecord.createDoc(
                      widget.tempRoomInfoDocu!.reference);
                  await roomSizeRecordReference.set(createRoomSizeRecordData(
                    roomSizeReview: _model.roomsizebarValue,
                    shapeRoomReview: valueOrDefault<double>(
                      _model.roomshapebarValue,
                      0.0,
                    ),
                    openSeparateTypeReview: valueOrDefault<double>(
                      _model.opensepartebarValue,
                      0.0,
                    ),
                    easeofFurnitureArrangementReview: valueOrDefault<double>(
                      _model.easeofFurnitureArrangementbarValue,
                      0.0,
                    ),
                    avgSizeReview: valueOrDefault<double>(
                      functions.fourRatingSummary(
                          _model.roomsizebarValue,
                          _model.roomshapebarValue,
                          _model.opensepartebarValue,
                          _model.easeofFurnitureArrangementbarValue),
                      0.0,
                    ),
                  ));
                  _model.sizeData = RoomSizeRecord.getDocumentFromData(
                      createRoomSizeRecordData(
                        roomSizeReview: _model.roomsizebarValue,
                        shapeRoomReview: valueOrDefault<double>(
                          _model.roomshapebarValue,
                          0.0,
                        ),
                        openSeparateTypeReview: valueOrDefault<double>(
                          _model.opensepartebarValue,
                          0.0,
                        ),
                        easeofFurnitureArrangementReview:
                            valueOrDefault<double>(
                          _model.easeofFurnitureArrangementbarValue,
                          0.0,
                        ),
                        avgSizeReview: valueOrDefault<double>(
                          functions.fourRatingSummary(
                              _model.roomsizebarValue,
                              _model.roomshapebarValue,
                              _model.opensepartebarValue,
                              _model.easeofFurnitureArrangementbarValue),
                          0.0,
                        ),
                      ),
                      roomSizeRecordReference);
                  // 2. SizeUpdate
                  setState(() {
                    FFAppState()
                        .addToSwitchOnOffList(FFAppState().switchRoomsize);
                    FFAppState().addToPriorityLevelList(valueOrDefault<int>(
                      FFAppState().PriorityRoomSize,
                      4,
                    ));
                    FFAppState().addToAvgReviewList(valueOrDefault<double>(
                      _model.sizeData?.avgSizeReview,
                      0.0,
                    ));
                  });
                }
                if (FFAppState().switchwaterdrain) {
                  // 3. WaterDrainageData

                  var roomWaterDrainageRecordReference =
                      RoomWaterDrainageRecord.createDoc(
                          widget.tempRoomInfoDocu!.reference);
                  await roomWaterDrainageRecordReference
                      .set(createRoomWaterDrainageRecordData(
                    waterPressureReview: valueOrDefault<double>(
                      _model.waterpressurebarValue,
                      0.0,
                    ),
                    warmWaterPossibleReview: valueOrDefault<double>(
                      _model.warmwaterpossiblebarValue,
                      0.0,
                    ),
                    drainStateReview: valueOrDefault<double>(
                      _model.drainstatebarValue,
                      0.0,
                    ),
                    waterPipeStatusReview: valueOrDefault<double>(
                      _model.waterpipesatusbarValue,
                      0.0,
                    ),
                    avgWaterDrainageReview: valueOrDefault<double>(
                      functions.fourRatingSummary(
                          _model.waterpressurebarValue,
                          _model.warmwaterpossiblebarValue,
                          _model.drainstatebarValue,
                          _model.waterpipesatusbarValue),
                      0.0,
                    ),
                  ));
                  _model.waterDrainageData =
                      RoomWaterDrainageRecord.getDocumentFromData(
                          createRoomWaterDrainageRecordData(
                            waterPressureReview: valueOrDefault<double>(
                              _model.waterpressurebarValue,
                              0.0,
                            ),
                            warmWaterPossibleReview: valueOrDefault<double>(
                              _model.warmwaterpossiblebarValue,
                              0.0,
                            ),
                            drainStateReview: valueOrDefault<double>(
                              _model.drainstatebarValue,
                              0.0,
                            ),
                            waterPipeStatusReview: valueOrDefault<double>(
                              _model.waterpipesatusbarValue,
                              0.0,
                            ),
                            avgWaterDrainageReview: valueOrDefault<double>(
                              functions.fourRatingSummary(
                                  _model.waterpressurebarValue,
                                  _model.warmwaterpossiblebarValue,
                                  _model.drainstatebarValue,
                                  _model.waterpipesatusbarValue),
                              0.0,
                            ),
                          ),
                          roomWaterDrainageRecordReference);
                  // 3. WaterDrainageUpdate
                  setState(() {
                    FFAppState()
                        .addToSwitchOnOffList(FFAppState().switchwaterdrain);
                    FFAppState().addToPriorityLevelList(valueOrDefault<int>(
                      FFAppState().PriorityWaterDrainage,
                      4,
                    ));
                    FFAppState().addToAvgReviewList(valueOrDefault<double>(
                      _model.waterDrainageData?.avgWaterDrainageReview,
                      0.0,
                    ));
                  });
                }
                if (FFAppState().swtichbathroom) {
                  // 4. BathroomData

                  var roomBathroomRecordReference =
                      RoomBathroomRecord.createDoc(
                          widget.tempRoomInfoDocu!.reference);
                  await roomBathroomRecordReference
                      .set(createRoomBathroomRecordData(
                    windowReview: valueOrDefault<double>(
                      _model.windowbarValue,
                      0.0,
                    ),
                    drainSmellReview: valueOrDefault<double>(
                      _model.drainsmellbarValue,
                      0.0,
                    ),
                    showerBoothReview: valueOrDefault<double>(
                      _model.showerboothbarValue,
                      0.0,
                    ),
                    gompangyeeReview: valueOrDefault<double>(
                      _model.gompangyeebarValue,
                      0.0,
                    ),
                    avgRoomBathReview: valueOrDefault<double>(
                      functions.fourRatingSummary(
                          _model.windowbarValue,
                          _model.drainsmellbarValue,
                          _model.showerboothbarValue,
                          _model.gompangyeebarValue),
                      0.0,
                    ),
                  ));
                  _model.bathroomData = RoomBathroomRecord.getDocumentFromData(
                      createRoomBathroomRecordData(
                        windowReview: valueOrDefault<double>(
                          _model.windowbarValue,
                          0.0,
                        ),
                        drainSmellReview: valueOrDefault<double>(
                          _model.drainsmellbarValue,
                          0.0,
                        ),
                        showerBoothReview: valueOrDefault<double>(
                          _model.showerboothbarValue,
                          0.0,
                        ),
                        gompangyeeReview: valueOrDefault<double>(
                          _model.gompangyeebarValue,
                          0.0,
                        ),
                        avgRoomBathReview: valueOrDefault<double>(
                          functions.fourRatingSummary(
                              _model.windowbarValue,
                              _model.drainsmellbarValue,
                              _model.showerboothbarValue,
                              _model.gompangyeebarValue),
                          0.0,
                        ),
                      ),
                      roomBathroomRecordReference);
                  // 4. BathroomUpdate
                  setState(() {
                    FFAppState()
                        .addToSwitchOnOffList(FFAppState().swtichbathroom);
                    FFAppState().addToPriorityLevelList(valueOrDefault<int>(
                      FFAppState().PriorityBathroom,
                      4,
                    ));
                    FFAppState().addToAvgReviewList(valueOrDefault<double>(
                      _model.bathroomData?.avgRoomBathReview,
                      0.0,
                    ));
                  });
                }
                if (FFAppState().switchBasicOption) {
                  // 5. BasicOptionData

                  var roomBasicOptionRecordReference =
                      RoomBasicOptionRecord.createDoc(
                          widget.tempRoomInfoDocu!.reference);
                  await roomBasicOptionRecordReference
                      .set(createRoomBasicOptionRecordData(
                    refrigeratorReview: valueOrDefault<double>(
                      _model.refrigeratoroptionbarValue,
                      0.0,
                    ),
                    washingMachineReview: valueOrDefault<double>(
                      _model.washingmachineoptionsbarValue,
                      0.0,
                    ),
                    gasstoveReview: valueOrDefault<double>(
                      _model.gasstovebarValue,
                      0.0,
                    ),
                    airConditionerReview: valueOrDefault<double>(
                      _model.airconditionaloptionbarValue,
                      0.0,
                    ),
                    avgBasicOptionReview: valueOrDefault<double>(
                      functions.fourRatingSummary(
                          _model.refrigeratoroptionbarValue,
                          _model.washingmachineoptionsbarValue,
                          _model.gasstovebarValue,
                          _model.airconditionaloptionbarValue),
                      0.0,
                    ),
                  ));
                  _model.basicOptionData =
                      RoomBasicOptionRecord.getDocumentFromData(
                          createRoomBasicOptionRecordData(
                            refrigeratorReview: valueOrDefault<double>(
                              _model.refrigeratoroptionbarValue,
                              0.0,
                            ),
                            washingMachineReview: valueOrDefault<double>(
                              _model.washingmachineoptionsbarValue,
                              0.0,
                            ),
                            gasstoveReview: valueOrDefault<double>(
                              _model.gasstovebarValue,
                              0.0,
                            ),
                            airConditionerReview: valueOrDefault<double>(
                              _model.airconditionaloptionbarValue,
                              0.0,
                            ),
                            avgBasicOptionReview: valueOrDefault<double>(
                              functions.fourRatingSummary(
                                  _model.refrigeratoroptionbarValue,
                                  _model.washingmachineoptionsbarValue,
                                  _model.gasstovebarValue,
                                  _model.airconditionaloptionbarValue),
                              0.0,
                            ),
                          ),
                          roomBasicOptionRecordReference);
                  // 5. BasicOptionUpdate
                  setState(() {
                    FFAppState()
                        .addToSwitchOnOffList(FFAppState().switchBasicOption);
                    FFAppState().addToPriorityLevelList(valueOrDefault<int>(
                      FFAppState().PriorityBasicOption,
                      4,
                    ));
                    FFAppState().addToAvgReviewList(valueOrDefault<double>(
                      _model.basicOptionData?.avgBasicOptionReview,
                      0.0,
                    ));
                  });
                }
                if (FFAppState().sWitchGarbageDisposal) {
                  // 6. GarbageDisposalData

                  var roomGarbageDisposalRecordReference =
                      RoomGarbageDisposalRecord.createDoc(
                          widget.tempRoomInfoDocu!.reference);
                  await roomGarbageDisposalRecordReference
                      .set(createRoomGarbageDisposalRecordData(
                    trashLocationReview: valueOrDefault<double>(
                      _model.trashlocationbarValue,
                      0.0,
                    ),
                    trashSmellReview: valueOrDefault<double>(
                      _model.trashsmellbarValue,
                      0.0,
                    ),
                    avgGargageDisposalReview: valueOrDefault<double>(
                      functions.twoRatingSummary(_model.trashlocationbarValue,
                          _model.trashsmellbarValue),
                      0.0,
                    ),
                  ));
                  _model.garbageDisposalData =
                      RoomGarbageDisposalRecord.getDocumentFromData(
                          createRoomGarbageDisposalRecordData(
                            trashLocationReview: valueOrDefault<double>(
                              _model.trashlocationbarValue,
                              0.0,
                            ),
                            trashSmellReview: valueOrDefault<double>(
                              _model.trashsmellbarValue,
                              0.0,
                            ),
                            avgGargageDisposalReview: valueOrDefault<double>(
                              functions.twoRatingSummary(
                                  _model.trashlocationbarValue,
                                  _model.trashsmellbarValue),
                              0.0,
                            ),
                          ),
                          roomGarbageDisposalRecordReference);
                  // 6. GarbageDisposalUpdate
                  setState(() {
                    FFAppState().addToSwitchOnOffList(
                        FFAppState().sWitchGarbageDisposal);
                    FFAppState().addToPriorityLevelList(valueOrDefault<int>(
                      FFAppState().PriorityGarbageDisposal,
                      4,
                    ));
                    FFAppState().addToAvgReviewList(valueOrDefault<double>(
                      _model.garbageDisposalData?.avgGargageDisposalReview,
                      0.0,
                    ));
                  });
                }
                if (FFAppState().switchFloor) {
                  // 7. FloorData

                  var roomFloorRecordReference = RoomFloorRecord.createDoc(
                      widget.tempRoomInfoDocu!.reference);
                  await roomFloorRecordReference.set(createRoomFloorRecordData(
                    floorReview: valueOrDefault<double>(
                      _model.floorbarValue,
                      0.0,
                    ),
                    elevatorReview: valueOrDefault<double>(
                      _model.elevatorbarValue,
                      0.0,
                    ),
                    stairGoodReview: valueOrDefault<double>(
                      _model.stairgoodbarValue,
                      0.0,
                    ),
                    avgFloorReview: valueOrDefault<double>(
                      functions.threeRatingSummary(_model.floorbarValue,
                          _model.elevatorbarValue, _model.stairgoodbarValue),
                      0.0,
                    ),
                  ));
                  _model.floorData = RoomFloorRecord.getDocumentFromData(
                      createRoomFloorRecordData(
                        floorReview: valueOrDefault<double>(
                          _model.floorbarValue,
                          0.0,
                        ),
                        elevatorReview: valueOrDefault<double>(
                          _model.elevatorbarValue,
                          0.0,
                        ),
                        stairGoodReview: valueOrDefault<double>(
                          _model.stairgoodbarValue,
                          0.0,
                        ),
                        avgFloorReview: valueOrDefault<double>(
                          functions.threeRatingSummary(
                              _model.floorbarValue,
                              _model.elevatorbarValue,
                              _model.stairgoodbarValue),
                          0.0,
                        ),
                      ),
                      roomFloorRecordReference);
                  // 7. FloorUpdate
                  setState(() {
                    FFAppState().addToSwitchOnOffList(FFAppState().switchFloor);
                    FFAppState().addToPriorityLevelList(valueOrDefault<int>(
                      FFAppState().PriorityFloor,
                      4,
                    ));
                    FFAppState().addToAvgReviewList(valueOrDefault<double>(
                      _model.floorData?.avgFloorReview,
                      0.0,
                    ));
                  });
                }
                if (FFAppState().switchSecurity) {
                  // 8. SecurityData

                  var roomSecurityRecordReference =
                      RoomSecurityRecord.createDoc(
                          widget.tempRoomInfoDocu!.reference);
                  await roomSecurityRecordReference
                      .set(createRoomSecurityRecordData(
                    doorlockReview: valueOrDefault<double>(
                      _model.doorlockbarValue,
                      0.0,
                    ),
                    cctvReview: valueOrDefault<double>(
                      _model.cctvbarValue,
                      0.0,
                    ),
                    buildEntryControlReview: valueOrDefault<double>(
                      _model.buildentrycontolbarValue,
                      0.0,
                    ),
                    policeReview: valueOrDefault<double>(
                      _model.policebarValue,
                      0.0,
                    ),
                    avgSecurityReview: valueOrDefault<double>(
                      functions.fourRatingSummary(
                          _model.doorlockbarValue,
                          _model.cctvbarValue,
                          _model.buildentrycontolbarValue,
                          _model.policebarValue),
                      0.0,
                    ),
                  ));
                  _model.securityData = RoomSecurityRecord.getDocumentFromData(
                      createRoomSecurityRecordData(
                        doorlockReview: valueOrDefault<double>(
                          _model.doorlockbarValue,
                          0.0,
                        ),
                        cctvReview: valueOrDefault<double>(
                          _model.cctvbarValue,
                          0.0,
                        ),
                        buildEntryControlReview: valueOrDefault<double>(
                          _model.buildentrycontolbarValue,
                          0.0,
                        ),
                        policeReview: valueOrDefault<double>(
                          _model.policebarValue,
                          0.0,
                        ),
                        avgSecurityReview: valueOrDefault<double>(
                          functions.fourRatingSummary(
                              _model.doorlockbarValue,
                              _model.cctvbarValue,
                              _model.buildentrycontolbarValue,
                              _model.policebarValue),
                          0.0,
                        ),
                      ),
                      roomSecurityRecordReference);
                  // 8. SecurityUpdate
                  setState(() {
                    FFAppState()
                        .addToSwitchOnOffList(FFAppState().switchSecurity);
                    FFAppState().addToPriorityLevelList(valueOrDefault<int>(
                      FFAppState().PrioritySecurity,
                      4,
                    ));
                    FFAppState().addToAvgReviewList(valueOrDefault<double>(
                      _model.securityData?.avgSecurityReview,
                      0.0,
                    ));
                  });
                }
                if (FFAppState().switchwindows) {
                  // 9. WindowsData

                  var roomWindowsRecordReference = RoomWindowsRecord.createDoc(
                      widget.tempRoomInfoDocu!.reference);
                  await roomWindowsRecordReference
                      .set(createRoomWindowsRecordData(
                    windowNumReview: valueOrDefault<double>(
                      _model.windownumbarValue,
                      0.0,
                    ),
                    sunlightReview: valueOrDefault<double>(
                      _model.sunlightbarValue,
                      0.0,
                    ),
                    windGoodReview: valueOrDefault<double>(
                      _model.windgoodbarValue,
                      0.0,
                    ),
                    avgWindowsReview: valueOrDefault<double>(
                      functions.threeRatingSummary(_model.windownumbarValue,
                          _model.sunlightbarValue, _model.windgoodbarValue),
                      0.0,
                    ),
                  ));
                  _model.windowsData = RoomWindowsRecord.getDocumentFromData(
                      createRoomWindowsRecordData(
                        windowNumReview: valueOrDefault<double>(
                          _model.windownumbarValue,
                          0.0,
                        ),
                        sunlightReview: valueOrDefault<double>(
                          _model.sunlightbarValue,
                          0.0,
                        ),
                        windGoodReview: valueOrDefault<double>(
                          _model.windgoodbarValue,
                          0.0,
                        ),
                        avgWindowsReview: valueOrDefault<double>(
                          functions.threeRatingSummary(_model.windownumbarValue,
                              _model.sunlightbarValue, _model.windgoodbarValue),
                          0.0,
                        ),
                      ),
                      roomWindowsRecordReference);
                  // 9. WindowsUpdate
                  setState(() {
                    FFAppState()
                        .addToSwitchOnOffList(FFAppState().switchwindows);
                    FFAppState().addToPriorityLevelList(valueOrDefault<int>(
                      FFAppState().PriorityWindows,
                      4,
                    ));
                    FFAppState().addToAvgReviewList(valueOrDefault<double>(
                      _model.windowsData?.avgWindowsReview,
                      0.0,
                    ));
                  });
                }
                if (FFAppState().switchcleanliness) {
                  // 10. CleanlinessData

                  var roomCleanlinessRecordReference =
                      RoomCleanlinessRecord.createDoc(
                          widget.tempRoomInfoDocu!.reference);
                  await roomCleanlinessRecordReference
                      .set(createRoomCleanlinessRecordData(
                    floorStateReview: valueOrDefault<double>(
                      _model.floorstatebarValue,
                      0.0,
                    ),
                    wallStateReview: valueOrDefault<double>(
                      _model.wallstatebarValue,
                      0.0,
                    ),
                    kitchenCleanReview: valueOrDefault<double>(
                      _model.kitchencleanbarValue,
                      0.0,
                    ),
                    buildingCleanReview: valueOrDefault<double>(
                      _model.buildcleanbarValue,
                      0.0,
                    ),
                    avgCleanlinessReview: valueOrDefault<double>(
                      functions.fourRatingSummary(
                          _model.floorstatebarValue,
                          _model.wallstatebarValue,
                          _model.kitchencleanbarValue,
                          _model.buildcleanbarValue),
                      0.0,
                    ),
                  ));
                  _model.cleanlinessData =
                      RoomCleanlinessRecord.getDocumentFromData(
                          createRoomCleanlinessRecordData(
                            floorStateReview: valueOrDefault<double>(
                              _model.floorstatebarValue,
                              0.0,
                            ),
                            wallStateReview: valueOrDefault<double>(
                              _model.wallstatebarValue,
                              0.0,
                            ),
                            kitchenCleanReview: valueOrDefault<double>(
                              _model.kitchencleanbarValue,
                              0.0,
                            ),
                            buildingCleanReview: valueOrDefault<double>(
                              _model.buildcleanbarValue,
                              0.0,
                            ),
                            avgCleanlinessReview: valueOrDefault<double>(
                              functions.fourRatingSummary(
                                  _model.floorstatebarValue,
                                  _model.wallstatebarValue,
                                  _model.kitchencleanbarValue,
                                  _model.buildcleanbarValue),
                              0.0,
                            ),
                          ),
                          roomCleanlinessRecordReference);
                  // 10. CleanlinessUpdate
                  setState(() {
                    FFAppState()
                        .addToSwitchOnOffList(FFAppState().switchcleanliness);
                    FFAppState().addToPriorityLevelList(valueOrDefault<int>(
                      FFAppState().PriorityCleaness,
                      4,
                    ));
                    FFAppState().addToAvgReviewList(valueOrDefault<double>(
                      _model.cleanlinessData?.avgCleanlinessReview,
                      0.0,
                    ));
                  });
                }
                if (FFAppState().switchConvenience) {
                  // 11. ConvenienceData

                  var roomConvenienceRecordReference =
                      RoomConvenienceRecord.createDoc(
                          widget.tempRoomInfoDocu!.reference);
                  await roomConvenienceRecordReference
                      .set(createRoomConvenienceRecordData(
                    martReview: valueOrDefault<double>(
                      _model.martbarValue,
                      0.0,
                    ),
                    busReview: valueOrDefault<double>(
                      _model.busbarValue,
                      0.0,
                    ),
                    schoolReview: valueOrDefault<double>(
                      _model.schoolbarValue,
                      0.0,
                    ),
                    avgConvenienceReview: valueOrDefault<double>(
                      functions.threeRatingSummary(_model.martbarValue,
                          _model.busbarValue, _model.schoolbarValue),
                      0.0,
                    ),
                  ));
                  _model.convenienceData =
                      RoomConvenienceRecord.getDocumentFromData(
                          createRoomConvenienceRecordData(
                            martReview: valueOrDefault<double>(
                              _model.martbarValue,
                              0.0,
                            ),
                            busReview: valueOrDefault<double>(
                              _model.busbarValue,
                              0.0,
                            ),
                            schoolReview: valueOrDefault<double>(
                              _model.schoolbarValue,
                              0.0,
                            ),
                            avgConvenienceReview: valueOrDefault<double>(
                              functions.threeRatingSummary(_model.martbarValue,
                                  _model.busbarValue, _model.schoolbarValue),
                              0.0,
                            ),
                          ),
                          roomConvenienceRecordReference);
                  // 11. ConvenienceUpdate
                  setState(() {
                    FFAppState()
                        .addToSwitchOnOffList(FFAppState().switchConvenience);
                    FFAppState().addToPriorityLevelList(valueOrDefault<int>(
                      FFAppState().PriorityConvenience,
                      4,
                    ));
                    FFAppState().addToAvgReviewList(valueOrDefault<double>(
                      _model.convenienceData?.avgConvenienceReview,
                      0.0,
                    ));
                  });
                }
                if (FFAppState().switchSoundproofing) {
                  // 12. SoundProofingData

                  var roomSoundProofingRecordReference =
                      RoomSoundProofingRecord.createDoc(
                          widget.tempRoomInfoDocu!.reference);
                  await roomSoundProofingRecordReference
                      .set(createRoomSoundProofingRecordData(
                    wallSoundReview: valueOrDefault<double>(
                      _model.wallsoundbarValue,
                      0.0,
                    ),
                    outsideSoundReview: valueOrDefault<double>(
                      _model.outsidesoundbarValue,
                      0.0,
                    ),
                    avgSoundProofingReview: valueOrDefault<double>(
                      functions.twoRatingSummary(_model.wallsoundbarValue,
                          _model.outsidesoundbarValue),
                      0.0,
                    ),
                  ));
                  _model.soundProofingData =
                      RoomSoundProofingRecord.getDocumentFromData(
                          createRoomSoundProofingRecordData(
                            wallSoundReview: valueOrDefault<double>(
                              _model.wallsoundbarValue,
                              0.0,
                            ),
                            outsideSoundReview: valueOrDefault<double>(
                              _model.outsidesoundbarValue,
                              0.0,
                            ),
                            avgSoundProofingReview: valueOrDefault<double>(
                              functions.twoRatingSummary(
                                  _model.wallsoundbarValue,
                                  _model.outsidesoundbarValue),
                              0.0,
                            ),
                          ),
                          roomSoundProofingRecordReference);
                  // 12. SoundProofingUpdate
                  setState(() {
                    FFAppState()
                        .addToSwitchOnOffList(FFAppState().switchSoundproofing);
                    FFAppState().addToPriorityLevelList(valueOrDefault<int>(
                      FFAppState().PrioritySoundProofing,
                      4,
                    ));
                    FFAppState().addToAvgReviewList(valueOrDefault<double>(
                      _model.soundProofingData?.avgSoundProofingReview,
                      0.0,
                    ));
                  });
                }
                if (FFAppState().switchParkingArea) {
                  // 13. ParkingAreaData

                  var roomParkingAreaRecordReference =
                      RoomParkingAreaRecord.createDoc(
                          widget.tempRoomInfoDocu!.reference);
                  await roomParkingAreaRecordReference
                      .set(createRoomParkingAreaRecordData(
                    parkingSpaceReview: valueOrDefault<double>(
                      _model.parkingspacebarValue,
                      0.0,
                    ),
                    parkingCostReview: valueOrDefault<double>(
                      _model.parkingcostbarValue,
                      0.0,
                    ),
                    avgParkingAreaReview: valueOrDefault<double>(
                      functions.twoRatingSummary(_model.parkingspacebarValue,
                          _model.parkingcostbarValue),
                      0.0,
                    ),
                  ));
                  _model.parkingAreaData =
                      RoomParkingAreaRecord.getDocumentFromData(
                          createRoomParkingAreaRecordData(
                            parkingSpaceReview: valueOrDefault<double>(
                              _model.parkingspacebarValue,
                              0.0,
                            ),
                            parkingCostReview: valueOrDefault<double>(
                              _model.parkingcostbarValue,
                              0.0,
                            ),
                            avgParkingAreaReview: valueOrDefault<double>(
                              functions.twoRatingSummary(
                                  _model.parkingspacebarValue,
                                  _model.parkingcostbarValue),
                              0.0,
                            ),
                          ),
                          roomParkingAreaRecordReference);
                  // 13. ParkingAreaUpdate
                  setState(() {
                    FFAppState()
                        .addToSwitchOnOffList(FFAppState().switchParkingArea);
                    FFAppState().addToPriorityLevelList(valueOrDefault<int>(
                      FFAppState().PriorityParkingArea,
                      4,
                    ));
                    FFAppState().addToAvgReviewList(valueOrDefault<double>(
                      _model.parkingAreaData?.avgParkingAreaReview,
                      0.0,
                    ));
                  });
                }
                if (FFAppState().switchSmokingArea) {
                  // 14. SmokingAreaData

                  var roomSmokingAreaRecordReference =
                      RoomSmokingAreaRecord.createDoc(
                          widget.tempRoomInfoDocu!.reference);
                  await roomSmokingAreaRecordReference
                      .set(createRoomSmokingAreaRecordData(
                    smokingSpaceReview: valueOrDefault<double>(
                      _model.smokingspacebarValue,
                      0.0,
                    ),
                    smokingLocationReview: valueOrDefault<double>(
                      _model.smokinglocationbarValue,
                      0.0,
                    ),
                    smokingAreaCleanessReview: valueOrDefault<double>(
                      _model.smokingareacleanessbarValue,
                      0.0,
                    ),
                    avgSmokingAreaReview: valueOrDefault<double>(
                      functions.threeRatingSummary(
                          _model.smokingspacebarValue,
                          _model.smokinglocationbarValue,
                          _model.smokingareacleanessbarValue),
                      0.0,
                    ),
                  ));
                  _model.smokingAreaData =
                      RoomSmokingAreaRecord.getDocumentFromData(
                          createRoomSmokingAreaRecordData(
                            smokingSpaceReview: valueOrDefault<double>(
                              _model.smokingspacebarValue,
                              0.0,
                            ),
                            smokingLocationReview: valueOrDefault<double>(
                              _model.smokinglocationbarValue,
                              0.0,
                            ),
                            smokingAreaCleanessReview: valueOrDefault<double>(
                              _model.smokingareacleanessbarValue,
                              0.0,
                            ),
                            avgSmokingAreaReview: valueOrDefault<double>(
                              functions.threeRatingSummary(
                                  _model.smokingspacebarValue,
                                  _model.smokinglocationbarValue,
                                  _model.smokingareacleanessbarValue),
                              0.0,
                            ),
                          ),
                          roomSmokingAreaRecordReference);
                  // 14. SmokingAreaUpdate
                  setState(() {
                    FFAppState()
                        .addToSwitchOnOffList(FFAppState().switchSmokingArea);
                    FFAppState().addToPriorityLevelList(valueOrDefault<int>(
                      FFAppState().PrioritySmokingArea,
                      4,
                    ));
                    FFAppState().addToAvgReviewList(valueOrDefault<double>(
                      _model.smokingAreaData?.avgSmokingAreaReview,
                      0.0,
                    ));
                  });
                }
                // CalculateTotalAvg

                await widget.tempRoomInfoDocu!.reference
                    .update(createRoomInfoRecordData(
                  roomTotalReview: valueOrDefault<double>(
                    functions
                        .newCustomFunction(FFAppState().avgReviewList.toList()),
                    0.0,
                  ),
                  roomPriorityAvg: valueOrDefault<double>(
                    functions.newCustomFunction2(
                        FFAppState().switchOnOffList.toList(),
                        FFAppState().PriorityLevelList.toList(),
                        FFAppState().avgReviewList.toList()),
                    0.0,
                  ),
                ));
                // NavigateToHomepage

                context.pushNamed('homePage_MAIN');

                setState(() {});
              },
            ),
          ),
        ],
        centerTitle: false,
        elevation: 0.0,
      ),
      body: SafeArea(
        top: true,
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 12.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                '자신의 평가기준에 따른 적절한 평점을 입력해주세요.',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'NotoSansKR',
                                      color:
                                          FlutterFlowTheme.of(context).gray600,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w500,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey('NotoSansKR'),
                                    ),
                              ),
                            ],
                          ),
                        ),
                        ListView(
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          children: [
                            if (FFAppState().switchPrice)
                              Container(
                                decoration: BoxDecoration(),
                                child: Container(
                                  width: double.infinity,
                                  color: Colors.white,
                                  child: ExpandableNotifier(
                                    controller:
                                        _model.expandableExpandableController1,
                                    child: ExpandablePanel(
                                      header: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Align(
                                            alignment:
                                                AlignmentDirectional(0.0, 0.0),
                                            child: wrapWithModel(
                                              model: _model
                                                  .amenitityIndicatorModel1,
                                              updateCallback: () =>
                                                  setState(() {}),
                                              child: AmenitityIndicatorWidget(
                                                icon: Icon(
                                                  Icons.monetization_on,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .gray600,
                                                ),
                                                background:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                borderColor:
                                                    FlutterFlowTheme.of(context)
                                                        .lineGray,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    22.0, 8.0, 10.0, 8.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  '가격',
                                                  textAlign: TextAlign.center,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
                                                        fontSize: 18.0,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily),
                                                      ),
                                                ),
                                                Text(
                                                  'Price',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily),
                                                      ),
                                                ),
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          1.0, 0.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                1.0, 0.0),
                                                        child: Icon(
                                                          Icons.star_rounded,
                                                          color:
                                                              Color(0xFFFFA130),
                                                          size: 24.0,
                                                        ),
                                                      ),
                                                      Text(
                                                        valueOrDefault<String>(
                                                          formatNumber(
                                                            _model
                                                                .pricebarValue,
                                                            formatType:
                                                                FormatType
                                                                    .decimal,
                                                            decimalType:
                                                                DecimalType
                                                                    .automatic,
                                                          ),
                                                          '0',
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMediumFamily),
                                                                ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                1.0, 0.0),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      2.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Text(
                                                            '점',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodySmall
                                                                .override(
                                                                  fontFamily:
                                                                      'Lexend Deca',
                                                                  color: Color(
                                                                      0xFF8B97A2),
                                                                  fontSize:
                                                                      12.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          'Lexend Deca'),
                                                                ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      collapsed: Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                1.0,
                                        height: 0.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                        ),
                                      ),
                                      expanded: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 10.0, 0.0, 5.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          25.0, 0.0, 0.0, 0.0),
                                                  child: Text(
                                                    '1. 전세 / 월세 / 매매',
                                                    style: TextStyle(
                                                      color: Color(0x8A000000),
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontSize: 17.0,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    40.0, 10.0, 40.0, 5.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                FFButtonWidget(
                                                  onPressed: () async {
                                                    if (FFAppState()
                                                        .buttonJeonseBool) {
                                                      setState(() {
                                                        FFAppState()
                                                                .buttonJeonseBool =
                                                            false;
                                                      });
                                                      setState(() {
                                                        FFAppState()
                                                                .ColorButtonBorderJeonse =
                                                            Colors.transparent;
                                                      });
                                                      setState(() {
                                                        FFAppState()
                                                            .livingTypeInt = 0;
                                                      });
                                                    } else {
                                                      setState(() {
                                                        FFAppState()
                                                                .buttonJeonseBool =
                                                            true;
                                                        FFAppState()
                                                                .buttonWolseBool =
                                                            false;
                                                        FFAppState()
                                                                .buttonMaeMaeBool =
                                                            false;
                                                      });
                                                      setState(() {
                                                        FFAppState()
                                                                .ColorButtonBorderJeonse =
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary;
                                                        FFAppState()
                                                                .ColorButtonBorderWolse =
                                                            Colors.transparent;
                                                        FFAppState()
                                                                .ColorButtonBorderMaeMae =
                                                            Colors.transparent;
                                                      });
                                                      setState(() {
                                                        FFAppState()
                                                            .livingTypeInt = 1;
                                                      });
                                                    }
                                                  },
                                                  text: '전세',
                                                  options: FFButtonOptions(
                                                    height: 40.0,
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(24.0, 0.0,
                                                                24.0, 0.0),
                                                    iconPadding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 0.0),
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .tertiary,
                                                    textStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleSmallFamily,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmallFamily),
                                                        ),
                                                    elevation: 3.0,
                                                    borderSide: BorderSide(
                                                      color: FFAppState()
                                                          .ColorButtonBorderJeonse,
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                ),
                                                FFButtonWidget(
                                                  onPressed: () async {
                                                    if (FFAppState()
                                                        .buttonWolseBool) {
                                                      setState(() {
                                                        FFAppState()
                                                                .buttonWolseBool =
                                                            false;
                                                      });
                                                      setState(() {
                                                        FFAppState()
                                                                .ColorButtonBorderWolse =
                                                            Colors.transparent;
                                                      });
                                                      setState(() {
                                                        FFAppState()
                                                            .livingTypeInt = 0;
                                                      });
                                                      setState(() {
                                                        _model
                                                            .wolseTextfieldTextController
                                                            ?.text = '0';
                                                      });
                                                    } else {
                                                      setState(() {
                                                        FFAppState()
                                                                .buttonWolseBool =
                                                            true;
                                                        FFAppState()
                                                                .buttonJeonseBool =
                                                            false;
                                                        FFAppState()
                                                                .buttonMaeMaeBool =
                                                            false;
                                                      });
                                                      setState(() {
                                                        FFAppState()
                                                                .ColorButtonBorderWolse =
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary;
                                                        FFAppState()
                                                                .ColorButtonBorderJeonse =
                                                            Colors.transparent;
                                                        FFAppState()
                                                                .ColorButtonBorderMaeMae =
                                                            Colors.transparent;
                                                      });
                                                      setState(() {
                                                        FFAppState()
                                                            .livingTypeInt = 2;
                                                      });
                                                    }
                                                  },
                                                  text: '월세',
                                                  options: FFButtonOptions(
                                                    height: 40.0,
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(24.0, 0.0,
                                                                24.0, 0.0),
                                                    iconPadding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 0.0),
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .tertiary,
                                                    textStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleSmallFamily,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmallFamily),
                                                        ),
                                                    elevation: 3.0,
                                                    borderSide: BorderSide(
                                                      color: FFAppState()
                                                          .ColorButtonBorderWolse,
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                ),
                                                FFButtonWidget(
                                                  onPressed: () async {
                                                    if (FFAppState()
                                                        .buttonMaeMaeBool) {
                                                      setState(() {
                                                        FFAppState()
                                                                .buttonMaeMaeBool =
                                                            false;
                                                      });
                                                      setState(() {
                                                        FFAppState()
                                                                .ColorButtonBorderMaeMae =
                                                            Colors.transparent;
                                                      });
                                                      setState(() {
                                                        FFAppState()
                                                            .livingTypeInt = 0;
                                                      });
                                                    } else {
                                                      setState(() {
                                                        FFAppState()
                                                                .buttonWolseBool =
                                                            false;
                                                        FFAppState()
                                                                .buttonJeonseBool =
                                                            false;
                                                        FFAppState()
                                                                .buttonMaeMaeBool =
                                                            true;
                                                      });
                                                      setState(() {
                                                        FFAppState()
                                                                .ColorButtonBorderWolse =
                                                            Colors.transparent;
                                                        FFAppState()
                                                                .ColorButtonBorderJeonse =
                                                            Colors.transparent;
                                                        FFAppState()
                                                                .ColorButtonBorderMaeMae =
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary;
                                                      });
                                                      setState(() {
                                                        FFAppState()
                                                            .livingTypeInt = 3;
                                                      });
                                                    }
                                                  },
                                                  text: '매매',
                                                  options: FFButtonOptions(
                                                    height: 40.0,
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(24.0, 0.0,
                                                                24.0, 0.0),
                                                    iconPadding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 0.0),
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .tertiary,
                                                    textStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleSmallFamily,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmallFamily),
                                                        ),
                                                    elevation: 3.0,
                                                    borderSide: BorderSide(
                                                      color: FFAppState()
                                                          .ColorButtonBorderMaeMae,
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          if (FFAppState().buttonWolseBool)
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 5.0, 0.0, 5.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(40.0, 0.0,
                                                                0.0, 0.0),
                                                    child: Text(
                                                      '1-1. 월세                ',
                                                      style: TextStyle(
                                                        color:
                                                            Color(0x8A000000),
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontSize: 17.0,
                                                      ),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  8.0,
                                                                  0.0,
                                                                  3.0,
                                                                  0.0),
                                                      child: TextFormField(
                                                        controller: _model
                                                            .wolseTextfieldTextController,
                                                        focusNode: _model
                                                            .wolseTextfieldFocusNode,
                                                        autofocus: true,
                                                        obscureText: false,
                                                        decoration:
                                                            InputDecoration(
                                                          labelStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        FlutterFlowTheme.of(context)
                                                                            .labelMediumFamily,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    useGoogleFonts: GoogleFonts
                                                                            .asMap()
                                                                        .containsKey(
                                                                            FlutterFlowTheme.of(context).labelMediumFamily),
                                                                  ),
                                                          hintText: '금액을 입력하세요',
                                                          hintStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelSmall
                                                                  .override(
                                                                    fontFamily:
                                                                        FlutterFlowTheme.of(context)
                                                                            .labelSmallFamily,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    useGoogleFonts: GoogleFonts
                                                                            .asMap()
                                                                        .containsKey(
                                                                            FlutterFlowTheme.of(context).labelSmallFamily),
                                                                  ),
                                                          enabledBorder:
                                                              UnderlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: Color(
                                                                  0xFF989898),
                                                              width: 2.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        4.0),
                                                          ),
                                                          focusedBorder:
                                                              UnderlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primary,
                                                              width: 2.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        4.0),
                                                          ),
                                                          errorBorder:
                                                              UnderlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .error,
                                                              width: 2.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        4.0),
                                                          ),
                                                          focusedErrorBorder:
                                                              UnderlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .error,
                                                              width: 2.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        4.0),
                                                          ),
                                                          filled: true,
                                                          fillColor:
                                                              Color(0x59F2F2F2),
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMediumFamily),
                                                                ),
                                                        textAlign:
                                                            TextAlign.end,
                                                        validator: _model
                                                            .wolseTextfieldTextControllerValidator
                                                            .asValidator(
                                                                context),
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(5.0, 0.0,
                                                                10.0, 0.0),
                                                    child: Text(
                                                      '만 원',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily),
                                                              ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 5.0, 0.0, 5.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          25.0, 0.0, 0.0, 0.0),
                                                  child: Text(
                                                    '2. 보증금                  ',
                                                    style: TextStyle(
                                                      color: Color(0x8A000000),
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontSize: 17.0,
                                                    ),
                                                  ),
                                                ),
                                                Expanded(
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(8.0, 0.0,
                                                                3.0, 0.0),
                                                    child: TextFormField(
                                                      controller: _model
                                                          .depositTextfieldTextController,
                                                      focusNode: _model
                                                          .depositTextfieldFocusNode,
                                                      autofocus: true,
                                                      obscureText: false,
                                                      decoration:
                                                          InputDecoration(
                                                        labelStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMediumFamily,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .labelMediumFamily),
                                                                ),
                                                        hintText: '금액을 입력하세요',
                                                        hintStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelSmall
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelSmallFamily,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .labelSmallFamily),
                                                                ),
                                                        enabledBorder:
                                                            UnderlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0xFF989898),
                                                            width: 2.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      4.0),
                                                        ),
                                                        focusedBorder:
                                                            UnderlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primary,
                                                            width: 2.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      4.0),
                                                        ),
                                                        errorBorder:
                                                            UnderlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .error,
                                                            width: 2.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      4.0),
                                                        ),
                                                        focusedErrorBorder:
                                                            UnderlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .error,
                                                            width: 2.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      4.0),
                                                        ),
                                                        filled: true,
                                                        fillColor:
                                                            Color(0x59F2F2F2),
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily),
                                                              ),
                                                      textAlign: TextAlign.end,
                                                      validator: _model
                                                          .depositTextfieldTextControllerValidator
                                                          .asValidator(context),
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          5.0, 0.0, 10.0, 0.0),
                                                  child: Text(
                                                    '만 원',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily),
                                                        ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 5.0, 0.0, 5.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          25.0, 0.0, 0.0, 0.0),
                                                  child: Text(
                                                    '3. 관리비                  ',
                                                    style: TextStyle(
                                                      color: Color(0x8A000000),
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontSize: 17.0,
                                                    ),
                                                  ),
                                                ),
                                                Expanded(
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(8.0, 0.0,
                                                                3.0, 0.0),
                                                    child: TextFormField(
                                                      controller: _model
                                                          .adminTextfieldTextController,
                                                      focusNode: _model
                                                          .adminTextfieldFocusNode,
                                                      autofocus: true,
                                                      obscureText: false,
                                                      decoration:
                                                          InputDecoration(
                                                        labelStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMediumFamily,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .labelMediumFamily),
                                                                ),
                                                        hintText: '금액을 입력하세요',
                                                        hintStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelSmall
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelSmallFamily,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .labelSmallFamily),
                                                                ),
                                                        enabledBorder:
                                                            UnderlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0xFF989898),
                                                            width: 2.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      4.0),
                                                        ),
                                                        focusedBorder:
                                                            UnderlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primary,
                                                            width: 2.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      4.0),
                                                        ),
                                                        errorBorder:
                                                            UnderlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .error,
                                                            width: 2.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      4.0),
                                                        ),
                                                        focusedErrorBorder:
                                                            UnderlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .error,
                                                            width: 2.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      4.0),
                                                        ),
                                                        filled: true,
                                                        fillColor:
                                                            Color(0x59F2F2F2),
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily),
                                                              ),
                                                      textAlign: TextAlign.end,
                                                      validator: _model
                                                          .adminTextfieldTextControllerValidator
                                                          .asValidator(context),
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          5.0, 0.0, 10.0, 0.0),
                                                  child: Text(
                                                    '만 원',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily),
                                                        ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 5.0, 0.0, 5.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          25.0, 0.0, 0.0, 0.0),
                                                  child: Text(
                                                    '4. 주차비                  ',
                                                    style: TextStyle(
                                                      color: Color(0x8A000000),
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontSize: 17.0,
                                                    ),
                                                  ),
                                                ),
                                                Expanded(
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(8.0, 0.0,
                                                                3.0, 0.0),
                                                    child: TextFormField(
                                                      controller: _model
                                                          .parkingTextfieldTextController,
                                                      focusNode: _model
                                                          .parkingTextfieldFocusNode,
                                                      autofocus: true,
                                                      obscureText: false,
                                                      decoration:
                                                          InputDecoration(
                                                        labelStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMediumFamily,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .labelMediumFamily),
                                                                ),
                                                        hintText: '금액을 입력하세요',
                                                        hintStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelSmall
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelSmallFamily,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .labelSmallFamily),
                                                                ),
                                                        enabledBorder:
                                                            UnderlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0xFF989898),
                                                            width: 2.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      4.0),
                                                        ),
                                                        focusedBorder:
                                                            UnderlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primary,
                                                            width: 2.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      4.0),
                                                        ),
                                                        errorBorder:
                                                            UnderlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .error,
                                                            width: 2.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      4.0),
                                                        ),
                                                        focusedErrorBorder:
                                                            UnderlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .error,
                                                            width: 2.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      4.0),
                                                        ),
                                                        filled: true,
                                                        fillColor:
                                                            Color(0x59F2F2F2),
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily),
                                                              ),
                                                      textAlign: TextAlign.end,
                                                      validator: _model
                                                          .parkingTextfieldTextControllerValidator
                                                          .asValidator(context),
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          5.0, 0.0, 10.0, 0.0),
                                                  child: Text(
                                                    '만 원',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily),
                                                        ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 5.0, 0.0, 5.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          25.0, 0.0, 0.0, 0.0),
                                                  child: Text(
                                                    '5. 인터넷 비용          ',
                                                    style: TextStyle(
                                                      color: Color(0x8A000000),
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontSize: 17.0,
                                                    ),
                                                  ),
                                                ),
                                                Expanded(
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(8.0, 0.0,
                                                                3.0, 0.0),
                                                    child: TextFormField(
                                                      controller: _model
                                                          .internetTextfieldTextController,
                                                      focusNode: _model
                                                          .internetTextfieldFocusNode,
                                                      autofocus: true,
                                                      obscureText: false,
                                                      decoration:
                                                          InputDecoration(
                                                        labelStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMediumFamily,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .labelMediumFamily),
                                                                ),
                                                        hintText: '금액을 입력하세요',
                                                        hintStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelSmall
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelSmallFamily,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .labelSmallFamily),
                                                                ),
                                                        enabledBorder:
                                                            UnderlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0xFF989898),
                                                            width: 2.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      4.0),
                                                        ),
                                                        focusedBorder:
                                                            UnderlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primary,
                                                            width: 2.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      4.0),
                                                        ),
                                                        errorBorder:
                                                            UnderlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .error,
                                                            width: 2.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      4.0),
                                                        ),
                                                        focusedErrorBorder:
                                                            UnderlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .error,
                                                            width: 2.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      4.0),
                                                        ),
                                                        filled: true,
                                                        fillColor:
                                                            Color(0x59F2F2F2),
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily),
                                                              ),
                                                      textAlign: TextAlign.end,
                                                      validator: _model
                                                          .internetTextfieldTextControllerValidator
                                                          .asValidator(context),
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          5.0, 0.0, 10.0, 0.0),
                                                  child: Text(
                                                    '만 원',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily),
                                                        ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 5.0, 0.0, 10.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          25.0, 0.0, 0.0, 0.0),
                                                  child: Text(
                                                    '6. 전기세 및 수도세  ',
                                                    style: TextStyle(
                                                      color: Color(0x8A000000),
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontSize: 17.0,
                                                    ),
                                                  ),
                                                ),
                                                Expanded(
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(8.0, 0.0,
                                                                3.0, 0.0),
                                                    child: TextFormField(
                                                      controller: _model
                                                          .elecAndWaterTextfieldTextController,
                                                      focusNode: _model
                                                          .elecAndWaterTextfieldFocusNode,
                                                      autofocus: true,
                                                      obscureText: false,
                                                      decoration:
                                                          InputDecoration(
                                                        labelStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMediumFamily,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .labelMediumFamily),
                                                                ),
                                                        hintText: '금액을 입력하세요',
                                                        hintStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelSmall
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelSmallFamily,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .labelSmallFamily),
                                                                ),
                                                        enabledBorder:
                                                            UnderlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0xFF989898),
                                                            width: 2.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      4.0),
                                                        ),
                                                        focusedBorder:
                                                            UnderlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primary,
                                                            width: 2.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      4.0),
                                                        ),
                                                        errorBorder:
                                                            UnderlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .error,
                                                            width: 2.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      4.0),
                                                        ),
                                                        focusedErrorBorder:
                                                            UnderlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .error,
                                                            width: 2.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      4.0),
                                                        ),
                                                        filled: true,
                                                        fillColor:
                                                            Color(0x59F2F2F2),
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily),
                                                              ),
                                                      textAlign: TextAlign.end,
                                                      validator: _model
                                                          .elecAndWaterTextfieldTextControllerValidator
                                                          .asValidator(context),
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          5.0, 0.0, 10.0, 0.0),
                                                  child: Text(
                                                    '만 원',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily),
                                                        ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            width: 340.0,
                                            child: Divider(
                                              thickness: 2.0,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .accent4,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 10.0, 0.0, 5.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          25.0, 0.0, 0.0, 0.0),
                                                  child: Text(
                                                    '* 한 달 예상 지출    ',
                                                    style: TextStyle(
                                                      color: Color(0x8A000000),
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontSize: 17.0,
                                                    ),
                                                  ),
                                                ),
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Text(
                                                      valueOrDefault<String>(
                                                        formatNumber(
                                                          valueOrDefault<
                                                                  double>(
                                                                double.tryParse(
                                                                    _model
                                                                        .adminTextfieldTextController
                                                                        .text),
                                                                0.0,
                                                              ) +
                                                              valueOrDefault<
                                                                  double>(
                                                                double.tryParse(
                                                                    _model
                                                                        .parkingTextfieldTextController
                                                                        .text),
                                                                0.0,
                                                              ) +
                                                              valueOrDefault<
                                                                  double>(
                                                                double.tryParse(
                                                                    _model
                                                                        .internetTextfieldTextController
                                                                        .text),
                                                                0.0,
                                                              ) +
                                                              valueOrDefault<
                                                                  double>(
                                                                double.tryParse(
                                                                    _model
                                                                        .elecAndWaterTextfieldTextController
                                                                        .text),
                                                                0.0,
                                                              ) +
                                                              valueOrDefault<
                                                                  double>(
                                                                double.tryParse(
                                                                    _model
                                                                        .wolseTextfieldTextController
                                                                        .text),
                                                                0.0,
                                                              ),
                                                          formatType: FormatType
                                                              .decimal,
                                                          decimalType:
                                                              DecimalType
                                                                  .automatic,
                                                        ),
                                                        '0',
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily),
                                                              ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  5.0,
                                                                  0.0,
                                                                  10.0,
                                                                  0.0),
                                                      child: Text(
                                                        '만 원',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMediumFamily),
                                                                ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 10.0, 0.0, 5.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          25.0, 0.0, 0.0, 0.0),
                                                  child: Text(
                                                    '* 총평',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          color:
                                                              Color(0x8A000000),
                                                          fontSize: 17.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily),
                                                        ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 25.0, 0.0),
                                                  child: RatingBar.builder(
                                                    onRatingUpdate: (newValue) =>
                                                        setState(() => _model
                                                                .pricebarValue =
                                                            newValue),
                                                    itemBuilder:
                                                        (context, index) =>
                                                            Icon(
                                                      Icons.star_rounded,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .starColor,
                                                    ),
                                                    direction: Axis.horizontal,
                                                    initialRating: _model
                                                        .pricebarValue ??= 0.0,
                                                    unratedColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .accent3,
                                                    itemCount: 5,
                                                    itemSize: 23.0,
                                                    glowColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .starColor,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      theme: ExpandableThemeData(
                                        tapHeaderToExpand: true,
                                        tapBodyToExpand: false,
                                        tapBodyToCollapse: false,
                                        headerAlignment:
                                            ExpandablePanelHeaderAlignment
                                                .center,
                                        hasIcon: true,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            if (FFAppState().switchRoomsize)
                              Container(
                                decoration: BoxDecoration(),
                                child: Container(
                                  width: double.infinity,
                                  color: Colors.white,
                                  child: ExpandableNotifier(
                                    controller:
                                        _model.expandableExpandableController2,
                                    child: ExpandablePanel(
                                      header: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Align(
                                            alignment:
                                                AlignmentDirectional(0.0, 0.0),
                                            child: wrapWithModel(
                                              model: _model
                                                  .amenitityIndicatorModel2,
                                              updateCallback: () =>
                                                  setState(() {}),
                                              child: AmenitityIndicatorWidget(
                                                icon: Icon(
                                                  Icons.photo_size_select_small,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .gray600,
                                                ),
                                                background:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                borderColor:
                                                    FlutterFlowTheme.of(context)
                                                        .lineGray,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    20.0, 8.0, 10.0, 8.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  '방 크기 및 구조',
                                                  textAlign: TextAlign.center,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
                                                        fontSize: 18.0,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily),
                                                      ),
                                                ),
                                                Text(
                                                  'Room Size',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily),
                                                      ),
                                                ),
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          1.0, 0.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                1.0, 0.0),
                                                        child: Icon(
                                                          Icons.star_rounded,
                                                          color:
                                                              Color(0xFFFFA130),
                                                          size: 24.0,
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                1.0, 0.0),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      4.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Text(
                                                            valueOrDefault<
                                                                String>(
                                                              formatNumber(
                                                                functions
                                                                    .fourRatingSummary(
                                                                        valueOrDefault<
                                                                            double>(
                                                                          _model
                                                                              .roomsizebarValue,
                                                                          0.0,
                                                                        ),
                                                                        valueOrDefault<
                                                                            double>(
                                                                          _model
                                                                              .roomshapebarValue,
                                                                          0.0,
                                                                        ),
                                                                        valueOrDefault<
                                                                            double>(
                                                                          _model
                                                                              .opensepartebarValue,
                                                                          0.0,
                                                                        ),
                                                                        valueOrDefault<
                                                                            double>(
                                                                          _model
                                                                              .easeofFurnitureArrangementbarValue,
                                                                          0.0,
                                                                        )),
                                                                formatType:
                                                                    FormatType
                                                                        .decimal,
                                                                decimalType:
                                                                    DecimalType
                                                                        .automatic,
                                                              ),
                                                              '0',
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodySmall
                                                                .override(
                                                                  fontFamily:
                                                                      'Lexend Deca',
                                                                  color: Color(
                                                                      0xFF8B97A2),
                                                                  fontSize:
                                                                      12.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          'Lexend Deca'),
                                                                ),
                                                          ),
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                1.0, 0.0),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      2.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Text(
                                                            '점',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodySmall
                                                                .override(
                                                                  fontFamily:
                                                                      'Lexend Deca',
                                                                  color: Color(
                                                                      0xFF8B97A2),
                                                                  fontSize:
                                                                      12.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          'Lexend Deca'),
                                                                ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      collapsed: Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                1.0,
                                        height: 0.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                        ),
                                      ),
                                      expanded: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 10.0, 0.0, 5.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          25.0, 0.0, 0.0, 0.0),
                                                  child: Text(
                                                    '1. 방의 크기 (㎡)   ',
                                                    style: TextStyle(
                                                      color: Color(0x8A000000),
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontSize: 17.0,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 25.0, 0.0),
                                                  child: RatingBar.builder(
                                                    onRatingUpdate: (newValue) =>
                                                        setState(() => _model
                                                                .roomsizebarValue =
                                                            newValue),
                                                    itemBuilder:
                                                        (context, index) =>
                                                            Icon(
                                                      Icons.star_rounded,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .starColor,
                                                    ),
                                                    direction: Axis.horizontal,
                                                    initialRating: _model
                                                            .roomsizebarValue ??=
                                                        0.0,
                                                    unratedColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .accent3,
                                                    itemCount: 5,
                                                    itemSize: 23.0,
                                                    glowColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .starColor,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 5.0, 0.0, 5.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  25.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Text(
                                                        '2. 방의 형태          ',
                                                        style: TextStyle(
                                                          color:
                                                              Color(0x8A000000),
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontSize: 17.0,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  40.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Text(
                                                        '* 네모, 직사각형, L자, 복층 등',
                                                        style: TextStyle(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .redApple,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontSize: 10.0,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 25.0, 0.0),
                                                  child: RatingBar.builder(
                                                    onRatingUpdate: (newValue) =>
                                                        setState(() => _model
                                                                .roomshapebarValue =
                                                            newValue),
                                                    itemBuilder:
                                                        (context, index) =>
                                                            Icon(
                                                      Icons.star_rounded,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .starColor,
                                                    ),
                                                    direction: Axis.horizontal,
                                                    initialRating: _model
                                                            .roomshapebarValue ??=
                                                        0.0,
                                                    unratedColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .accent3,
                                                    itemCount: 5,
                                                    itemSize: 23.0,
                                                    glowColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .starColor,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 5.0, 0.0, 5.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          25.0, 0.0, 0.0, 0.0),
                                                  child: Text(
                                                    '3. 오픈/분리형       ',
                                                    style: TextStyle(
                                                      color: Color(0x8A000000),
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontSize: 17.0,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 25.0, 0.0),
                                                  child: RatingBar.builder(
                                                    onRatingUpdate: (newValue) =>
                                                        setState(() => _model
                                                                .opensepartebarValue =
                                                            newValue),
                                                    itemBuilder:
                                                        (context, index) =>
                                                            Icon(
                                                      Icons.star_rounded,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .starColor,
                                                    ),
                                                    direction: Axis.horizontal,
                                                    initialRating: _model
                                                            .opensepartebarValue ??=
                                                        0.0,
                                                    unratedColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .accent3,
                                                    itemCount: 5,
                                                    itemSize: 23.0,
                                                    glowColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .starColor,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 5.0, 0.0, 5.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          25.0, 0.0, 0.0, 0.0),
                                                  child: Text(
                                                    '4. 가구 배치 용이성',
                                                    style: TextStyle(
                                                      color: Color(0x8A000000),
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontSize: 17.0,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 25.0, 0.0),
                                                  child: RatingBar.builder(
                                                    onRatingUpdate: (newValue) =>
                                                        setState(() => _model
                                                                .easeofFurnitureArrangementbarValue =
                                                            newValue),
                                                    itemBuilder:
                                                        (context, index) =>
                                                            Icon(
                                                      Icons.star_rounded,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .starColor,
                                                    ),
                                                    direction: Axis.horizontal,
                                                    initialRating: _model
                                                            .easeofFurnitureArrangementbarValue ??=
                                                        0.0,
                                                    unratedColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .accent3,
                                                    itemCount: 5,
                                                    itemSize: 23.0,
                                                    glowColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .starColor,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      theme: ExpandableThemeData(
                                        tapHeaderToExpand: true,
                                        tapBodyToExpand: false,
                                        tapBodyToCollapse: false,
                                        headerAlignment:
                                            ExpandablePanelHeaderAlignment
                                                .center,
                                        hasIcon: true,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            if (FFAppState().switchwaterdrain)
                              Container(
                                decoration: BoxDecoration(),
                                child: Container(
                                  width: double.infinity,
                                  color: Colors.white,
                                  child: ExpandableNotifier(
                                    controller:
                                        _model.expandableExpandableController3,
                                    child: ExpandablePanel(
                                      header: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Align(
                                            alignment:
                                                AlignmentDirectional(0.0, 0.0),
                                            child: wrapWithModel(
                                              model: _model
                                                  .amenitityIndicatorModel3,
                                              updateCallback: () =>
                                                  setState(() {}),
                                              child: AmenitityIndicatorWidget(
                                                icon: Icon(
                                                  Icons.water_drop,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .gray600,
                                                ),
                                                background:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                borderColor:
                                                    FlutterFlowTheme.of(context)
                                                        .lineGray,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    20.0, 8.0, 10.0, 8.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  '수도 및 배수',
                                                  textAlign: TextAlign.center,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
                                                        fontSize: 18.0,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily),
                                                      ),
                                                ),
                                                Text(
                                                  'Water Drainage',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily),
                                                      ),
                                                ),
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          1.0, 0.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                1.0, 0.0),
                                                        child: Icon(
                                                          Icons.star_rounded,
                                                          color:
                                                              Color(0xFFFFA130),
                                                          size: 24.0,
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                1.0, 0.0),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      4.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Text(
                                                            valueOrDefault<
                                                                String>(
                                                              formatNumber(
                                                                functions
                                                                    .fourRatingSummary(
                                                                        valueOrDefault<
                                                                            double>(
                                                                          _model
                                                                              .waterpressurebarValue,
                                                                          0.0,
                                                                        ),
                                                                        valueOrDefault<
                                                                            double>(
                                                                          _model
                                                                              .warmwaterpossiblebarValue,
                                                                          0.0,
                                                                        ),
                                                                        valueOrDefault<
                                                                            double>(
                                                                          _model
                                                                              .drainstatebarValue,
                                                                          0.0,
                                                                        ),
                                                                        valueOrDefault<
                                                                            double>(
                                                                          _model
                                                                              .waterpipesatusbarValue,
                                                                          0.0,
                                                                        )),
                                                                formatType:
                                                                    FormatType
                                                                        .decimal,
                                                                decimalType:
                                                                    DecimalType
                                                                        .automatic,
                                                              ),
                                                              '0',
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodySmall
                                                                .override(
                                                                  fontFamily:
                                                                      'Lexend Deca',
                                                                  color: Color(
                                                                      0xFF8B97A2),
                                                                  fontSize:
                                                                      12.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          'Lexend Deca'),
                                                                ),
                                                          ),
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                1.0, 0.0),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      2.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Text(
                                                            '점',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodySmall
                                                                .override(
                                                                  fontFamily:
                                                                      'Lexend Deca',
                                                                  color: Color(
                                                                      0xFF8B97A2),
                                                                  fontSize:
                                                                      12.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          'Lexend Deca'),
                                                                ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      collapsed: Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                1.0,
                                        height: 0.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                        ),
                                      ),
                                      expanded: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 10.0, 0.0, 5.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          25.0, 0.0, 0.0, 0.0),
                                                  child: Text(
                                                    '1. 수압                  ',
                                                    style: TextStyle(
                                                      color: Color(0x8A000000),
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontSize: 17.0,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 25.0, 0.0),
                                                  child: RatingBar.builder(
                                                    onRatingUpdate: (newValue) =>
                                                        setState(() => _model
                                                                .waterpressurebarValue =
                                                            newValue),
                                                    itemBuilder:
                                                        (context, index) =>
                                                            Icon(
                                                      Icons.star_rounded,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .starColor,
                                                    ),
                                                    direction: Axis.horizontal,
                                                    initialRating: _model
                                                            .waterpressurebarValue ??=
                                                        0.0,
                                                    unratedColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .accent3,
                                                    itemCount: 5,
                                                    itemSize: 23.0,
                                                    glowColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .starColor,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 5.0, 0.0, 5.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          25.0, 0.0, 0.0, 0.0),
                                                  child: Text(
                                                    '2. 온수 가능여부    ',
                                                    style: TextStyle(
                                                      color: Color(0x8A000000),
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontSize: 17.0,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 25.0, 0.0),
                                                  child: RatingBar.builder(
                                                    onRatingUpdate: (newValue) =>
                                                        setState(() => _model
                                                                .warmwaterpossiblebarValue =
                                                            newValue),
                                                    itemBuilder:
                                                        (context, index) =>
                                                            Icon(
                                                      Icons.star_rounded,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .starColor,
                                                    ),
                                                    direction: Axis.horizontal,
                                                    initialRating: _model
                                                            .warmwaterpossiblebarValue ??=
                                                        0.0,
                                                    unratedColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .accent3,
                                                    itemCount: 5,
                                                    itemSize: 23.0,
                                                    glowColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .starColor,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 5.0, 0.0, 5.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          25.0, 0.0, 0.0, 0.0),
                                                  child: Text(
                                                    '3. 배수구 상태       ',
                                                    style: TextStyle(
                                                      color: Color(0x8A000000),
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontSize: 17.0,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 25.0, 0.0),
                                                  child: RatingBar.builder(
                                                    onRatingUpdate: (newValue) =>
                                                        setState(() => _model
                                                                .drainstatebarValue =
                                                            newValue),
                                                    itemBuilder:
                                                        (context, index) =>
                                                            Icon(
                                                      Icons.star_rounded,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .starColor,
                                                    ),
                                                    direction: Axis.horizontal,
                                                    initialRating: _model
                                                            .drainstatebarValue ??=
                                                        0.0,
                                                    unratedColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .accent3,
                                                    itemCount: 5,
                                                    itemSize: 23.0,
                                                    glowColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .starColor,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 5.0, 0.0, 10.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                Text(
                                                  '4. 수도관 노후 여부',
                                                  style: TextStyle(
                                                    color: Color(0x8A000000),
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 17.0,
                                                  ),
                                                ),
                                                RatingBar.builder(
                                                  onRatingUpdate: (newValue) =>
                                                      setState(() => _model
                                                              .waterpipesatusbarValue =
                                                          newValue),
                                                  itemBuilder:
                                                      (context, index) => Icon(
                                                    Icons.star_rounded,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .starColor,
                                                  ),
                                                  direction: Axis.horizontal,
                                                  initialRating: _model
                                                          .waterpipesatusbarValue ??=
                                                      0.0,
                                                  unratedColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .accent3,
                                                  itemCount: 5,
                                                  itemSize: 23.0,
                                                  glowColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .starColor,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      theme: ExpandableThemeData(
                                        tapHeaderToExpand: true,
                                        tapBodyToExpand: false,
                                        tapBodyToCollapse: false,
                                        headerAlignment:
                                            ExpandablePanelHeaderAlignment
                                                .center,
                                        hasIcon: true,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            if (FFAppState().swtichbathroom)
                              Container(
                                decoration: BoxDecoration(),
                                child: Container(
                                  width: double.infinity,
                                  color: Colors.white,
                                  child: ExpandableNotifier(
                                    controller:
                                        _model.expandableExpandableController4,
                                    child: ExpandablePanel(
                                      header: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Align(
                                            alignment:
                                                AlignmentDirectional(0.0, 0.0),
                                            child: wrapWithModel(
                                              model: _model
                                                  .amenitityIndicatorModel4,
                                              updateCallback: () =>
                                                  setState(() {}),
                                              child: AmenitityIndicatorWidget(
                                                icon: Icon(
                                                  Icons.bathtub_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .gray600,
                                                ),
                                                background:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                borderColor:
                                                    FlutterFlowTheme.of(context)
                                                        .lineGray,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    20.0, 8.0, 10.0, 8.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  '화장실',
                                                  textAlign: TextAlign.center,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
                                                        fontSize: 18.0,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily),
                                                      ),
                                                ),
                                                Text(
                                                  'Bathroom',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily),
                                                      ),
                                                ),
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          1.0, 0.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                1.0, 0.0),
                                                        child: Icon(
                                                          Icons.star_rounded,
                                                          color:
                                                              Color(0xFFFFA130),
                                                          size: 24.0,
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                1.0, 0.0),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      4.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Text(
                                                            valueOrDefault<
                                                                String>(
                                                              formatNumber(
                                                                functions
                                                                    .fourRatingSummary(
                                                                        valueOrDefault<
                                                                            double>(
                                                                          _model
                                                                              .windowbarValue,
                                                                          0.0,
                                                                        ),
                                                                        valueOrDefault<
                                                                            double>(
                                                                          _model
                                                                              .drainsmellbarValue,
                                                                          0.0,
                                                                        ),
                                                                        valueOrDefault<
                                                                            double>(
                                                                          _model
                                                                              .showerboothbarValue,
                                                                          0.0,
                                                                        ),
                                                                        valueOrDefault<
                                                                            double>(
                                                                          _model
                                                                              .gompangyeebarValue,
                                                                          0.0,
                                                                        )),
                                                                formatType:
                                                                    FormatType
                                                                        .decimal,
                                                                decimalType:
                                                                    DecimalType
                                                                        .automatic,
                                                              ),
                                                              '0',
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodySmall
                                                                .override(
                                                                  fontFamily:
                                                                      'Lexend Deca',
                                                                  color: Color(
                                                                      0xFF8B97A2),
                                                                  fontSize:
                                                                      12.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          'Lexend Deca'),
                                                                ),
                                                          ),
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                1.0, 0.0),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      2.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Text(
                                                            '점',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodySmall
                                                                .override(
                                                                  fontFamily:
                                                                      'Lexend Deca',
                                                                  color: Color(
                                                                      0xFF8B97A2),
                                                                  fontSize:
                                                                      12.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          'Lexend Deca'),
                                                                ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      collapsed: Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                1.0,
                                        height: 0.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                        ),
                                      ),
                                      expanded: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 10.0, 0.0, 5.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          25.0, 0.0, 0.0, 0.0),
                                                  child: Text(
                                                    '1. 창문 여부           ',
                                                    style: TextStyle(
                                                      color: Color(0x8A000000),
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontSize: 17.0,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 25.0, 0.0),
                                                  child: RatingBar.builder(
                                                    onRatingUpdate: (newValue) =>
                                                        setState(() => _model
                                                                .windowbarValue =
                                                            newValue),
                                                    itemBuilder:
                                                        (context, index) =>
                                                            Icon(
                                                      Icons.star_rounded,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .starColor,
                                                    ),
                                                    direction: Axis.horizontal,
                                                    initialRating: _model
                                                        .windowbarValue ??= 0.0,
                                                    unratedColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .accent3,
                                                    itemCount: 5,
                                                    itemSize: 23.0,
                                                    glowColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .starColor,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 5.0, 0.0, 5.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          25.0, 0.0, 0.0, 0.0),
                                                  child: Text(
                                                    '2. 배수구 냄새       ',
                                                    style: TextStyle(
                                                      color: Color(0x8A000000),
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontSize: 17.0,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 25.0, 0.0),
                                                  child: RatingBar.builder(
                                                    onRatingUpdate: (newValue) =>
                                                        setState(() => _model
                                                                .drainsmellbarValue =
                                                            newValue),
                                                    itemBuilder:
                                                        (context, index) =>
                                                            Icon(
                                                      Icons.star_rounded,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .starColor,
                                                    ),
                                                    direction: Axis.horizontal,
                                                    initialRating: _model
                                                            .drainsmellbarValue ??=
                                                        0.0,
                                                    unratedColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .accent3,
                                                    itemCount: 5,
                                                    itemSize: 23.0,
                                                    glowColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .starColor,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 5.0, 0.0, 5.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          25.0, 0.0, 0.0, 0.0),
                                                  child: Text(
                                                    '3. 샤워 부스/욕조 여부  ',
                                                    style: TextStyle(
                                                      color: Color(0x8A000000),
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontSize: 17.0,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 25.0, 0.0),
                                                  child: RatingBar.builder(
                                                    onRatingUpdate: (newValue) =>
                                                        setState(() => _model
                                                                .showerboothbarValue =
                                                            newValue),
                                                    itemBuilder:
                                                        (context, index) =>
                                                            Icon(
                                                      Icons.star_rounded,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .starColor,
                                                    ),
                                                    direction: Axis.horizontal,
                                                    initialRating: _model
                                                            .showerboothbarValue ??=
                                                        0.0,
                                                    unratedColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .accent3,
                                                    itemCount: 5,
                                                    itemSize: 23.0,
                                                    glowColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .starColor,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 5.0, 0.0, 10.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          25.0, 0.0, 0.0, 0.0),
                                                  child: Text(
                                                    '4. 곰팡이 여부       ',
                                                    style: TextStyle(
                                                      color: Color(0x8A000000),
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontSize: 17.0,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 25.0, 0.0),
                                                  child: RatingBar.builder(
                                                    onRatingUpdate: (newValue) =>
                                                        setState(() => _model
                                                                .gompangyeebarValue =
                                                            newValue),
                                                    itemBuilder:
                                                        (context, index) =>
                                                            Icon(
                                                      Icons.star_rounded,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .starColor,
                                                    ),
                                                    direction: Axis.horizontal,
                                                    initialRating: _model
                                                            .gompangyeebarValue ??=
                                                        0.0,
                                                    unratedColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .accent3,
                                                    itemCount: 5,
                                                    itemSize: 23.0,
                                                    glowColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .starColor,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      theme: ExpandableThemeData(
                                        tapHeaderToExpand: true,
                                        tapBodyToExpand: false,
                                        tapBodyToCollapse: false,
                                        headerAlignment:
                                            ExpandablePanelHeaderAlignment
                                                .center,
                                        hasIcon: true,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            if (FFAppState().switchBasicOption)
                              Container(
                                decoration: BoxDecoration(),
                                child: Container(
                                  width: double.infinity,
                                  color: Colors.white,
                                  child: ExpandableNotifier(
                                    controller:
                                        _model.expandableExpandableController5,
                                    child: ExpandablePanel(
                                      header: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Align(
                                            alignment:
                                                AlignmentDirectional(0.0, 0.0),
                                            child: wrapWithModel(
                                              model: _model
                                                  .amenitityIndicatorModel5,
                                              updateCallback: () =>
                                                  setState(() {}),
                                              child: AmenitityIndicatorWidget(
                                                icon: Icon(
                                                  Icons.bed,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .gray600,
                                                ),
                                                background:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                borderColor:
                                                    FlutterFlowTheme.of(context)
                                                        .lineGray,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    20.0, 8.0, 10.0, 8.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  '기본 옵션',
                                                  textAlign: TextAlign.center,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
                                                        fontSize: 18.0,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily),
                                                      ),
                                                ),
                                                Text(
                                                  'Basic Option',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily),
                                                      ),
                                                ),
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          1.0, 0.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                1.0, 0.0),
                                                        child: Icon(
                                                          Icons.star_rounded,
                                                          color:
                                                              Color(0xFFFFA130),
                                                          size: 24.0,
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                1.0, 0.0),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      4.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Text(
                                                            valueOrDefault<
                                                                String>(
                                                              formatNumber(
                                                                functions
                                                                    .fourRatingSummary(
                                                                        valueOrDefault<
                                                                            double>(
                                                                          _model
                                                                              .refrigeratoroptionbarValue,
                                                                          0.0,
                                                                        ),
                                                                        valueOrDefault<
                                                                            double>(
                                                                          _model
                                                                              .washingmachineoptionsbarValue,
                                                                          0.0,
                                                                        ),
                                                                        valueOrDefault<
                                                                            double>(
                                                                          _model
                                                                              .gasstovebarValue,
                                                                          0.0,
                                                                        ),
                                                                        valueOrDefault<
                                                                            double>(
                                                                          _model
                                                                              .airconditionaloptionbarValue,
                                                                          0.0,
                                                                        )),
                                                                formatType:
                                                                    FormatType
                                                                        .decimal,
                                                                decimalType:
                                                                    DecimalType
                                                                        .automatic,
                                                              ),
                                                              '0',
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodySmall
                                                                .override(
                                                                  fontFamily:
                                                                      'Lexend Deca',
                                                                  color: Color(
                                                                      0xFF8B97A2),
                                                                  fontSize:
                                                                      12.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          'Lexend Deca'),
                                                                ),
                                                          ),
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                1.0, 0.0),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      2.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Text(
                                                            '점',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodySmall
                                                                .override(
                                                                  fontFamily:
                                                                      'Lexend Deca',
                                                                  color: Color(
                                                                      0xFF8B97A2),
                                                                  fontSize:
                                                                      12.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          'Lexend Deca'),
                                                                ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      collapsed: Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                1.0,
                                        height: 0.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                        ),
                                      ),
                                      expanded: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 10.0, 0.0, 5.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          25.0, 0.0, 0.0, 0.0),
                                                  child: Text(
                                                    '1. 냉장고 옵션 포함',
                                                    style: TextStyle(
                                                      color: Color(0x8A000000),
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontSize: 17.0,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 25.0, 0.0),
                                                  child: RatingBar.builder(
                                                    onRatingUpdate: (newValue) =>
                                                        setState(() => _model
                                                                .refrigeratoroptionbarValue =
                                                            newValue),
                                                    itemBuilder:
                                                        (context, index) =>
                                                            Icon(
                                                      Icons.star_rounded,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .starColor,
                                                    ),
                                                    direction: Axis.horizontal,
                                                    initialRating: _model
                                                            .refrigeratoroptionbarValue ??=
                                                        0.0,
                                                    unratedColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .accent3,
                                                    itemCount: 5,
                                                    itemSize: 23.0,
                                                    glowColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .starColor,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 5.0, 0.0, 5.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          25.0, 0.0, 0.0, 0.0),
                                                  child: Text(
                                                    '2. 세탁기 옵션 포함',
                                                    style: TextStyle(
                                                      color: Color(0x8A000000),
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontSize: 17.0,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 25.0, 0.0),
                                                  child: RatingBar.builder(
                                                    onRatingUpdate: (newValue) =>
                                                        setState(() => _model
                                                                .washingmachineoptionsbarValue =
                                                            newValue),
                                                    itemBuilder:
                                                        (context, index) =>
                                                            Icon(
                                                      Icons.star_rounded,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .starColor,
                                                    ),
                                                    direction: Axis.horizontal,
                                                    initialRating: _model
                                                            .washingmachineoptionsbarValue ??=
                                                        0.0,
                                                    unratedColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .accent3,
                                                    itemCount: 5,
                                                    itemSize: 23.0,
                                                    glowColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .starColor,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 5.0, 0.0, 5.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          25.0, 0.0, 0.0, 0.0),
                                                  child: Text(
                                                    '3. 가스레인지/인덕션    ',
                                                    style: TextStyle(
                                                      color: Color(0x8A000000),
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontSize: 17.0,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 25.0, 0.0),
                                                  child: RatingBar.builder(
                                                    onRatingUpdate: (newValue) =>
                                                        setState(() => _model
                                                                .gasstovebarValue =
                                                            newValue),
                                                    itemBuilder:
                                                        (context, index) =>
                                                            Icon(
                                                      Icons.star_rounded,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .starColor,
                                                    ),
                                                    direction: Axis.horizontal,
                                                    initialRating: _model
                                                            .gasstovebarValue ??=
                                                        0.0,
                                                    unratedColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .accent3,
                                                    itemCount: 5,
                                                    itemSize: 23.0,
                                                    glowColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .starColor,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 5.0, 0.0, 10.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          25.0, 0.0, 0.0, 0.0),
                                                  child: Text(
                                                    '4. 에어컨                ',
                                                    style: TextStyle(
                                                      color: Color(0x8A000000),
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontSize: 17.0,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 25.0, 0.0),
                                                  child: RatingBar.builder(
                                                    onRatingUpdate: (newValue) =>
                                                        setState(() => _model
                                                                .airconditionaloptionbarValue =
                                                            newValue),
                                                    itemBuilder:
                                                        (context, index) =>
                                                            Icon(
                                                      Icons.star_rounded,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .starColor,
                                                    ),
                                                    direction: Axis.horizontal,
                                                    initialRating: _model
                                                            .airconditionaloptionbarValue ??=
                                                        0.0,
                                                    unratedColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .accent3,
                                                    itemCount: 5,
                                                    itemSize: 23.0,
                                                    glowColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .starColor,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      theme: ExpandableThemeData(
                                        tapHeaderToExpand: true,
                                        tapBodyToExpand: false,
                                        tapBodyToCollapse: false,
                                        headerAlignment:
                                            ExpandablePanelHeaderAlignment
                                                .center,
                                        hasIcon: true,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            if (FFAppState().sWitchGarbageDisposal)
                              Container(
                                decoration: BoxDecoration(),
                                child: Container(
                                  width: double.infinity,
                                  color: Colors.white,
                                  child: ExpandableNotifier(
                                    controller:
                                        _model.expandableExpandableController6,
                                    child: ExpandablePanel(
                                      header: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Align(
                                            alignment:
                                                AlignmentDirectional(0.0, 0.0),
                                            child: wrapWithModel(
                                              model: _model
                                                  .amenitityIndicatorModel6,
                                              updateCallback: () =>
                                                  setState(() {}),
                                              child: AmenitityIndicatorWidget(
                                                icon: Icon(
                                                  Icons.restore_from_trash,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .gray600,
                                                ),
                                                background:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                borderColor:
                                                    FlutterFlowTheme.of(context)
                                                        .lineGray,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    20.0, 8.0, 10.0, 8.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  '쓰레기 처리',
                                                  textAlign: TextAlign.center,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
                                                        fontSize: 18.0,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily),
                                                      ),
                                                ),
                                                Text(
                                                  'Garbage Disposal',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily),
                                                      ),
                                                ),
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          1.0, 0.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                1.0, 0.0),
                                                        child: Icon(
                                                          Icons.star_rounded,
                                                          color:
                                                              Color(0xFFFFA130),
                                                          size: 24.0,
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                1.0, 0.0),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      4.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Text(
                                                            valueOrDefault<
                                                                String>(
                                                              formatNumber(
                                                                functions
                                                                    .twoRatingSummary(
                                                                        valueOrDefault<
                                                                            double>(
                                                                          _model
                                                                              .trashlocationbarValue,
                                                                          0.0,
                                                                        ),
                                                                        valueOrDefault<
                                                                            double>(
                                                                          _model
                                                                              .trashsmellbarValue,
                                                                          0.0,
                                                                        )),
                                                                formatType:
                                                                    FormatType
                                                                        .decimal,
                                                                decimalType:
                                                                    DecimalType
                                                                        .automatic,
                                                              ),
                                                              '0',
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodySmall
                                                                .override(
                                                                  fontFamily:
                                                                      'Lexend Deca',
                                                                  color: Color(
                                                                      0xFF8B97A2),
                                                                  fontSize:
                                                                      12.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          'Lexend Deca'),
                                                                ),
                                                          ),
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                1.0, 0.0),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      2.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Text(
                                                            '점',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodySmall
                                                                .override(
                                                                  fontFamily:
                                                                      'Lexend Deca',
                                                                  color: Color(
                                                                      0xFF8B97A2),
                                                                  fontSize:
                                                                      12.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          'Lexend Deca'),
                                                                ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      collapsed: Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                1.0,
                                        height: 0.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                        ),
                                      ),
                                      expanded: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 10.0, 0.0, 5.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          25.0, 0.0, 0.0, 0.0),
                                                  child: Text(
                                                    '1. 쓰레기 배출 위치',
                                                    style: TextStyle(
                                                      color: Color(0x8A000000),
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontSize: 17.0,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 25.0, 0.0),
                                                  child: RatingBar.builder(
                                                    onRatingUpdate: (newValue) =>
                                                        setState(() => _model
                                                                .trashlocationbarValue =
                                                            newValue),
                                                    itemBuilder:
                                                        (context, index) =>
                                                            Icon(
                                                      Icons.star_rounded,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .starColor,
                                                    ),
                                                    direction: Axis.horizontal,
                                                    initialRating: _model
                                                            .trashlocationbarValue ??=
                                                        0.0,
                                                    unratedColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .accent3,
                                                    itemCount: 5,
                                                    itemSize: 23.0,
                                                    glowColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .starColor,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 5.0, 0.0, 10.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          25.0, 0.0, 0.0, 0.0),
                                                  child: Text(
                                                    '2. 악취 여부           ',
                                                    style: TextStyle(
                                                      color: Color(0x8A000000),
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontSize: 17.0,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 25.0, 0.0),
                                                  child: RatingBar.builder(
                                                    onRatingUpdate: (newValue) =>
                                                        setState(() => _model
                                                                .trashsmellbarValue =
                                                            newValue),
                                                    itemBuilder:
                                                        (context, index) =>
                                                            Icon(
                                                      Icons.star_rounded,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .starColor,
                                                    ),
                                                    direction: Axis.horizontal,
                                                    initialRating: _model
                                                            .trashsmellbarValue ??=
                                                        0.0,
                                                    unratedColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .accent3,
                                                    itemCount: 5,
                                                    itemSize: 23.0,
                                                    glowColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .starColor,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      theme: ExpandableThemeData(
                                        tapHeaderToExpand: true,
                                        tapBodyToExpand: false,
                                        tapBodyToCollapse: false,
                                        headerAlignment:
                                            ExpandablePanelHeaderAlignment
                                                .center,
                                        hasIcon: true,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            if (FFAppState().switchFloor)
                              Container(
                                decoration: BoxDecoration(),
                                child: Container(
                                  width: double.infinity,
                                  color: Colors.white,
                                  child: ExpandableNotifier(
                                    controller:
                                        _model.expandableExpandableController7,
                                    child: ExpandablePanel(
                                      header: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Align(
                                            alignment:
                                                AlignmentDirectional(0.0, 0.0),
                                            child: wrapWithModel(
                                              model: _model
                                                  .amenitityIndicatorModel7,
                                              updateCallback: () =>
                                                  setState(() {}),
                                              child: AmenitityIndicatorWidget(
                                                icon: Icon(
                                                  Icons.apartment_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .gray600,
                                                ),
                                                background:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                borderColor:
                                                    FlutterFlowTheme.of(context)
                                                        .lineGray,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    20.0, 8.0, 10.0, 8.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  '층수',
                                                  textAlign: TextAlign.center,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
                                                        fontSize: 18.0,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily),
                                                      ),
                                                ),
                                                Text(
                                                  'Floor',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily),
                                                      ),
                                                ),
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          1.0, 0.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                1.0, 0.0),
                                                        child: Icon(
                                                          Icons.star_rounded,
                                                          color:
                                                              Color(0xFFFFA130),
                                                          size: 24.0,
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                1.0, 0.0),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      4.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Text(
                                                            valueOrDefault<
                                                                String>(
                                                              formatNumber(
                                                                functions
                                                                    .threeRatingSummary(
                                                                        valueOrDefault<
                                                                            double>(
                                                                          _model
                                                                              .floorbarValue,
                                                                          0.0,
                                                                        ),
                                                                        valueOrDefault<
                                                                            double>(
                                                                          _model
                                                                              .elevatorbarValue,
                                                                          0.0,
                                                                        ),
                                                                        valueOrDefault<
                                                                            double>(
                                                                          _model
                                                                              .stairgoodbarValue,
                                                                          0.0,
                                                                        )),
                                                                formatType:
                                                                    FormatType
                                                                        .decimal,
                                                                decimalType:
                                                                    DecimalType
                                                                        .automatic,
                                                              ),
                                                              '0',
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodySmall
                                                                .override(
                                                                  fontFamily:
                                                                      'Lexend Deca',
                                                                  color: Color(
                                                                      0xFF8B97A2),
                                                                  fontSize:
                                                                      12.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          'Lexend Deca'),
                                                                ),
                                                          ),
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                1.0, 0.0),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      2.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Text(
                                                            '점',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodySmall
                                                                .override(
                                                                  fontFamily:
                                                                      'Lexend Deca',
                                                                  color: Color(
                                                                      0xFF8B97A2),
                                                                  fontSize:
                                                                      12.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          'Lexend Deca'),
                                                                ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      collapsed: Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                1.0,
                                        height: 0.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                        ),
                                      ),
                                      expanded: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 10.0, 0.0, 5.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          25.0, 0.0, 0.0, 0.0),
                                                  child: Text(
                                                    '1. 건물 층수          ',
                                                    style: TextStyle(
                                                      color: Color(0x8A000000),
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontSize: 17.0,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 25.0, 0.0),
                                                  child: RatingBar.builder(
                                                    onRatingUpdate: (newValue) =>
                                                        setState(() => _model
                                                                .floorbarValue =
                                                            newValue),
                                                    itemBuilder:
                                                        (context, index) =>
                                                            Icon(
                                                      Icons.star_rounded,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .starColor,
                                                    ),
                                                    direction: Axis.horizontal,
                                                    initialRating: _model
                                                        .floorbarValue ??= 0.0,
                                                    unratedColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .accent3,
                                                    itemCount: 5,
                                                    itemSize: 23.0,
                                                    glowColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .starColor,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 5.0, 0.0, 5.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          25.0, 0.0, 0.0, 0.0),
                                                  child: Text(
                                                    '2. 엘레베이터 유무',
                                                    style: TextStyle(
                                                      color: Color(0x8A000000),
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontSize: 17.0,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 25.0, 0.0),
                                                  child: RatingBar.builder(
                                                    onRatingUpdate: (newValue) =>
                                                        setState(() => _model
                                                                .elevatorbarValue =
                                                            newValue),
                                                    itemBuilder:
                                                        (context, index) =>
                                                            Icon(
                                                      Icons.star_rounded,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .starColor,
                                                    ),
                                                    direction: Axis.horizontal,
                                                    initialRating: _model
                                                            .elevatorbarValue ??=
                                                        0.0,
                                                    unratedColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .accent3,
                                                    itemCount: 5,
                                                    itemSize: 23.0,
                                                    glowColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .starColor,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 5.0, 0.0, 10.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          25.0, 0.0, 0.0, 0.0),
                                                  child: Text(
                                                    '3. 계단 접근성       ',
                                                    style: TextStyle(
                                                      color: Color(0x8A000000),
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontSize: 17.0,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 25.0, 0.0),
                                                  child: RatingBar.builder(
                                                    onRatingUpdate: (newValue) =>
                                                        setState(() => _model
                                                                .stairgoodbarValue =
                                                            newValue),
                                                    itemBuilder:
                                                        (context, index) =>
                                                            Icon(
                                                      Icons.star_rounded,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .starColor,
                                                    ),
                                                    direction: Axis.horizontal,
                                                    initialRating: _model
                                                            .stairgoodbarValue ??=
                                                        0.0,
                                                    unratedColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .accent3,
                                                    itemCount: 5,
                                                    itemSize: 23.0,
                                                    glowColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .starColor,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      theme: ExpandableThemeData(
                                        tapHeaderToExpand: true,
                                        tapBodyToExpand: false,
                                        tapBodyToCollapse: false,
                                        headerAlignment:
                                            ExpandablePanelHeaderAlignment
                                                .center,
                                        hasIcon: true,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            if (FFAppState().switchSecurity)
                              Container(
                                decoration: BoxDecoration(),
                                child: Container(
                                  width: double.infinity,
                                  color: Colors.white,
                                  child: ExpandableNotifier(
                                    controller:
                                        _model.expandableExpandableController8,
                                    child: ExpandablePanel(
                                      header: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Align(
                                            alignment:
                                                AlignmentDirectional(0.0, 0.0),
                                            child: wrapWithModel(
                                              model: _model
                                                  .amenitityIndicatorModel8,
                                              updateCallback: () =>
                                                  setState(() {}),
                                              child: AmenitityIndicatorWidget(
                                                icon: Icon(
                                                  Icons.security_sharp,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .gray600,
                                                ),
                                                background:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                borderColor:
                                                    FlutterFlowTheme.of(context)
                                                        .lineGray,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    20.0, 8.0, 10.0, 8.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  '보안',
                                                  textAlign: TextAlign.center,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
                                                        fontSize: 18.0,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily),
                                                      ),
                                                ),
                                                Text(
                                                  'Security',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily),
                                                      ),
                                                ),
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          1.0, 0.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                1.0, 0.0),
                                                        child: Icon(
                                                          Icons.star_rounded,
                                                          color:
                                                              Color(0xFFFFA130),
                                                          size: 24.0,
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                1.0, 0.0),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      4.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Text(
                                                            valueOrDefault<
                                                                String>(
                                                              formatNumber(
                                                                functions
                                                                    .fourRatingSummary(
                                                                        valueOrDefault<
                                                                            double>(
                                                                          _model
                                                                              .doorlockbarValue,
                                                                          0.0,
                                                                        ),
                                                                        valueOrDefault<
                                                                            double>(
                                                                          _model
                                                                              .cctvbarValue,
                                                                          0.0,
                                                                        ),
                                                                        valueOrDefault<
                                                                            double>(
                                                                          _model
                                                                              .buildentrycontolbarValue,
                                                                          0.0,
                                                                        ),
                                                                        valueOrDefault<
                                                                            double>(
                                                                          _model
                                                                              .policebarValue,
                                                                          0.0,
                                                                        )),
                                                                formatType:
                                                                    FormatType
                                                                        .decimal,
                                                                decimalType:
                                                                    DecimalType
                                                                        .automatic,
                                                              ),
                                                              '0',
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodySmall
                                                                .override(
                                                                  fontFamily:
                                                                      'Lexend Deca',
                                                                  color: Color(
                                                                      0xFF8B97A2),
                                                                  fontSize:
                                                                      12.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          'Lexend Deca'),
                                                                ),
                                                          ),
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                1.0, 0.0),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      2.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Text(
                                                            '점',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodySmall
                                                                .override(
                                                                  fontFamily:
                                                                      'Lexend Deca',
                                                                  color: Color(
                                                                      0xFF8B97A2),
                                                                  fontSize:
                                                                      12.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          'Lexend Deca'),
                                                                ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      collapsed: Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                1.0,
                                        height: 0.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                        ),
                                      ),
                                      expanded: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 10.0, 0.0, 5.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          25.0, 0.0, 0.0, 0.0),
                                                  child: Text(
                                                    '1. 도어락 유형        ',
                                                    style: TextStyle(
                                                      color: Color(0x8A000000),
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontSize: 17.0,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 25.0, 0.0),
                                                  child: RatingBar.builder(
                                                    onRatingUpdate: (newValue) =>
                                                        setState(() => _model
                                                                .doorlockbarValue =
                                                            newValue),
                                                    itemBuilder:
                                                        (context, index) =>
                                                            Icon(
                                                      Icons.star_rounded,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .starColor,
                                                    ),
                                                    direction: Axis.horizontal,
                                                    initialRating: _model
                                                            .doorlockbarValue ??=
                                                        0.0,
                                                    unratedColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .accent3,
                                                    itemCount: 5,
                                                    itemSize: 23.0,
                                                    glowColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .starColor,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 5.0, 0.0, 5.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          25.0, 0.0, 0.0, 0.0),
                                                  child: Text(
                                                    '2. CCTV 설치 여부',
                                                    style: TextStyle(
                                                      color: Color(0x8A000000),
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontSize: 17.0,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 25.0, 0.0),
                                                  child: RatingBar.builder(
                                                    onRatingUpdate: (newValue) =>
                                                        setState(() => _model
                                                                .cctvbarValue =
                                                            newValue),
                                                    itemBuilder:
                                                        (context, index) =>
                                                            Icon(
                                                      Icons.star_rounded,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .starColor,
                                                    ),
                                                    direction: Axis.horizontal,
                                                    initialRating: _model
                                                        .cctvbarValue ??= 0.0,
                                                    unratedColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .accent3,
                                                    itemCount: 5,
                                                    itemSize: 23.0,
                                                    glowColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .starColor,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 5.0, 0.0, 5.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          25.0, 0.0, 0.0, 0.0),
                                                  child: Text(
                                                    '3. 건물 출입 통제 여부  ',
                                                    style: TextStyle(
                                                      color: Color(0x8A000000),
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontSize: 17.0,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 25.0, 0.0),
                                                  child: RatingBar.builder(
                                                    onRatingUpdate: (newValue) =>
                                                        setState(() => _model
                                                                .buildentrycontolbarValue =
                                                            newValue),
                                                    itemBuilder:
                                                        (context, index) =>
                                                            Icon(
                                                      Icons.star_rounded,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .starColor,
                                                    ),
                                                    direction: Axis.horizontal,
                                                    initialRating: _model
                                                            .buildentrycontolbarValue ??=
                                                        0.0,
                                                    unratedColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .accent3,
                                                    itemCount: 5,
                                                    itemSize: 23.0,
                                                    glowColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .starColor,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 5.0, 0.0, 10.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          25.0, 0.0, 0.0, 0.0),
                                                  child: Text(
                                                    '4. 주변 치안 상태   ',
                                                    style: TextStyle(
                                                      color: Color(0x8A000000),
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontSize: 17.0,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 25.0, 0.0),
                                                  child: RatingBar.builder(
                                                    onRatingUpdate: (newValue) =>
                                                        setState(() => _model
                                                                .policebarValue =
                                                            newValue),
                                                    itemBuilder:
                                                        (context, index) =>
                                                            Icon(
                                                      Icons.star_rounded,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .starColor,
                                                    ),
                                                    direction: Axis.horizontal,
                                                    initialRating: _model
                                                        .policebarValue ??= 0.0,
                                                    unratedColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .accent3,
                                                    itemCount: 5,
                                                    itemSize: 23.0,
                                                    glowColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .starColor,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      theme: ExpandableThemeData(
                                        tapHeaderToExpand: true,
                                        tapBodyToExpand: false,
                                        tapBodyToCollapse: false,
                                        headerAlignment:
                                            ExpandablePanelHeaderAlignment
                                                .center,
                                        hasIcon: true,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            if (FFAppState().switchwindows)
                              Container(
                                decoration: BoxDecoration(),
                                child: Container(
                                  width: double.infinity,
                                  color: Colors.white,
                                  child: ExpandableNotifier(
                                    controller:
                                        _model.expandableExpandableController9,
                                    child: ExpandablePanel(
                                      header: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Align(
                                            alignment:
                                                AlignmentDirectional(0.0, 0.0),
                                            child: wrapWithModel(
                                              model: _model
                                                  .amenitityIndicatorModel9,
                                              updateCallback: () =>
                                                  setState(() {}),
                                              child: AmenitityIndicatorWidget(
                                                icon: Icon(
                                                  Icons.window_outlined,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .gray600,
                                                ),
                                                background:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                borderColor:
                                                    FlutterFlowTheme.of(context)
                                                        .lineGray,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    20.0, 8.0, 10.0, 8.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  '창문 및 조향',
                                                  textAlign: TextAlign.center,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
                                                        fontSize: 18.0,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily),
                                                      ),
                                                ),
                                                Text(
                                                  'Windows',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily),
                                                      ),
                                                ),
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          1.0, 0.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                1.0, 0.0),
                                                        child: Icon(
                                                          Icons.star_rounded,
                                                          color:
                                                              Color(0xFFFFA130),
                                                          size: 24.0,
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                1.0, 0.0),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      4.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Text(
                                                            valueOrDefault<
                                                                String>(
                                                              formatNumber(
                                                                functions
                                                                    .threeRatingSummary(
                                                                        valueOrDefault<
                                                                            double>(
                                                                          _model
                                                                              .windownumbarValue,
                                                                          0.0,
                                                                        ),
                                                                        valueOrDefault<
                                                                            double>(
                                                                          _model
                                                                              .sunlightbarValue,
                                                                          0.0,
                                                                        ),
                                                                        valueOrDefault<
                                                                            double>(
                                                                          _model
                                                                              .windgoodbarValue,
                                                                          0.0,
                                                                        )),
                                                                formatType:
                                                                    FormatType
                                                                        .decimal,
                                                                decimalType:
                                                                    DecimalType
                                                                        .automatic,
                                                              ),
                                                              '0',
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodySmall
                                                                .override(
                                                                  fontFamily:
                                                                      'Lexend Deca',
                                                                  color: Color(
                                                                      0xFF8B97A2),
                                                                  fontSize:
                                                                      12.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          'Lexend Deca'),
                                                                ),
                                                          ),
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                1.0, 0.0),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      2.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Text(
                                                            '점',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodySmall
                                                                .override(
                                                                  fontFamily:
                                                                      'Lexend Deca',
                                                                  color: Color(
                                                                      0xFF8B97A2),
                                                                  fontSize:
                                                                      12.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          'Lexend Deca'),
                                                                ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      collapsed: Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                1.0,
                                        height: 0.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                        ),
                                      ),
                                      expanded: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 10.0, 0.0, 5.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          25.0, 0.0, 0.0, 0.0),
                                                  child: Text(
                                                    '1. 창문의 개수        ',
                                                    style: TextStyle(
                                                      color: Color(0x8A000000),
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontSize: 17.0,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 25.0, 0.0),
                                                  child: RatingBar.builder(
                                                    onRatingUpdate: (newValue) =>
                                                        setState(() => _model
                                                                .windownumbarValue =
                                                            newValue),
                                                    itemBuilder:
                                                        (context, index) =>
                                                            Icon(
                                                      Icons.star_rounded,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .starColor,
                                                    ),
                                                    direction: Axis.horizontal,
                                                    initialRating: _model
                                                            .windownumbarValue ??=
                                                        0.0,
                                                    unratedColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .accent3,
                                                    itemCount: 5,
                                                    itemSize: 23.0,
                                                    glowColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .starColor,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 5.0, 0.0, 5.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          25.0, 0.0, 0.0, 0.0),
                                                  child: Text(
                                                    '2. 채광 여부           ',
                                                    style: TextStyle(
                                                      color: Color(0x8A000000),
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontSize: 17.0,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 25.0, 0.0),
                                                  child: RatingBar.builder(
                                                    onRatingUpdate: (newValue) =>
                                                        setState(() => _model
                                                                .sunlightbarValue =
                                                            newValue),
                                                    itemBuilder:
                                                        (context, index) =>
                                                            Icon(
                                                      Icons.star_rounded,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .starColor,
                                                    ),
                                                    direction: Axis.horizontal,
                                                    initialRating: _model
                                                            .sunlightbarValue ??=
                                                        0.0,
                                                    unratedColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .accent3,
                                                    itemCount: 5,
                                                    itemSize: 23.0,
                                                    glowColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .starColor,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 5.0, 0.0, 10.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          25.0, 0.0, 0.0, 0.0),
                                                  child: Text(
                                                    '3. 환기 가능 여부    ',
                                                    style: TextStyle(
                                                      color: Color(0x8A000000),
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontSize: 17.0,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 25.0, 0.0),
                                                  child: RatingBar.builder(
                                                    onRatingUpdate: (newValue) =>
                                                        setState(() => _model
                                                                .windgoodbarValue =
                                                            newValue),
                                                    itemBuilder:
                                                        (context, index) =>
                                                            Icon(
                                                      Icons.star_rounded,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .starColor,
                                                    ),
                                                    direction: Axis.horizontal,
                                                    initialRating: _model
                                                            .windgoodbarValue ??=
                                                        0.0,
                                                    unratedColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .accent3,
                                                    itemCount: 5,
                                                    itemSize: 23.0,
                                                    glowColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .starColor,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      theme: ExpandableThemeData(
                                        tapHeaderToExpand: true,
                                        tapBodyToExpand: false,
                                        tapBodyToCollapse: false,
                                        headerAlignment:
                                            ExpandablePanelHeaderAlignment
                                                .center,
                                        hasIcon: true,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            if (FFAppState().switchcleanliness)
                              Container(
                                decoration: BoxDecoration(),
                                child: Container(
                                  width: double.infinity,
                                  color: Colors.white,
                                  child: ExpandableNotifier(
                                    controller:
                                        _model.expandableExpandableController10,
                                    child: ExpandablePanel(
                                      header: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Align(
                                            alignment:
                                                AlignmentDirectional(0.0, 0.0),
                                            child: wrapWithModel(
                                              model: _model
                                                  .amenitityIndicatorModel10,
                                              updateCallback: () =>
                                                  setState(() {}),
                                              child: AmenitityIndicatorWidget(
                                                icon: Icon(
                                                  Icons.cleaning_services,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .gray600,
                                                ),
                                                background:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                borderColor:
                                                    FlutterFlowTheme.of(context)
                                                        .lineGray,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    20.0, 8.0, 10.0, 8.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  '청결도',
                                                  textAlign: TextAlign.center,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
                                                        fontSize: 18.0,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily),
                                                      ),
                                                ),
                                                Text(
                                                  'Cleanliness',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily),
                                                      ),
                                                ),
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          1.0, 0.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                1.0, 0.0),
                                                        child: Icon(
                                                          Icons.star_rounded,
                                                          color:
                                                              Color(0xFFFFA130),
                                                          size: 24.0,
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                1.0, 0.0),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      4.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Text(
                                                            valueOrDefault<
                                                                String>(
                                                              formatNumber(
                                                                functions
                                                                    .fourRatingSummary(
                                                                        valueOrDefault<
                                                                            double>(
                                                                          _model
                                                                              .floorstatebarValue,
                                                                          0.0,
                                                                        ),
                                                                        valueOrDefault<
                                                                            double>(
                                                                          _model
                                                                              .wallstatebarValue,
                                                                          0.0,
                                                                        ),
                                                                        valueOrDefault<
                                                                            double>(
                                                                          _model
                                                                              .kitchencleanbarValue,
                                                                          0.0,
                                                                        ),
                                                                        valueOrDefault<
                                                                            double>(
                                                                          _model
                                                                              .buildcleanbarValue,
                                                                          0.0,
                                                                        )),
                                                                formatType:
                                                                    FormatType
                                                                        .decimal,
                                                                decimalType:
                                                                    DecimalType
                                                                        .automatic,
                                                              ),
                                                              '0',
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodySmall
                                                                .override(
                                                                  fontFamily:
                                                                      'Lexend Deca',
                                                                  color: Color(
                                                                      0xFF8B97A2),
                                                                  fontSize:
                                                                      12.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          'Lexend Deca'),
                                                                ),
                                                          ),
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                1.0, 0.0),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      2.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Text(
                                                            '점',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodySmall
                                                                .override(
                                                                  fontFamily:
                                                                      'Lexend Deca',
                                                                  color: Color(
                                                                      0xFF8B97A2),
                                                                  fontSize:
                                                                      12.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          'Lexend Deca'),
                                                                ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      collapsed: Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                1.0,
                                        height: 0.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                        ),
                                      ),
                                      expanded: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 10.0, 0.0, 5.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          -1.0, 1.0),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                20.0, 0.0),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      25.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Text(
                                                            '1. 바닥 상태 ',
                                                            style: TextStyle(
                                                              color: Color(
                                                                  0x8A000000),
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              fontSize: 17.0,
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      40.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Text(
                                                            '* 청소 및 얼룩, 찍힘 여부 등',
                                                            style: TextStyle(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .redApple,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              fontSize: 10.0,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 25.0, 0.0),
                                                  child: RatingBar.builder(
                                                    onRatingUpdate: (newValue) =>
                                                        setState(() => _model
                                                                .floorstatebarValue =
                                                            newValue),
                                                    itemBuilder:
                                                        (context, index) =>
                                                            Icon(
                                                      Icons.star_rounded,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .starColor,
                                                    ),
                                                    direction: Axis.horizontal,
                                                    initialRating: _model
                                                            .floorstatebarValue ??=
                                                        0.0,
                                                    unratedColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .accent3,
                                                    itemCount: 5,
                                                    itemSize: 23.0,
                                                    glowColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .starColor,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 5.0, 0.0, 5.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 40.0, 0.0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    25.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Text(
                                                          '2. 벽지 상태',
                                                          style: TextStyle(
                                                            color: Color(
                                                                0x8A000000),
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontSize: 17.0,
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    40.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Text(
                                                          '* 얼룩, 곰팡이 여부 등',
                                                          style: TextStyle(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .redApple,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            fontSize: 10.0,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 25.0, 0.0),
                                                  child: RatingBar.builder(
                                                    onRatingUpdate: (newValue) =>
                                                        setState(() => _model
                                                                .wallstatebarValue =
                                                            newValue),
                                                    itemBuilder:
                                                        (context, index) =>
                                                            Icon(
                                                      Icons.star_rounded,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .starColor,
                                                    ),
                                                    direction: Axis.horizontal,
                                                    initialRating: _model
                                                            .wallstatebarValue ??=
                                                        0.0,
                                                    unratedColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .accent3,
                                                    itemCount: 5,
                                                    itemSize: 23.0,
                                                    glowColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .starColor,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 5.0, 0.0, 5.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          25.0, 0.0, 0.0, 0.0),
                                                  child: Text(
                                                    '3. 주방 청결 상태  ',
                                                    style: TextStyle(
                                                      color: Color(0x8A000000),
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontSize: 17.0,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 25.0, 0.0),
                                                  child: RatingBar.builder(
                                                    onRatingUpdate: (newValue) =>
                                                        setState(() => _model
                                                                .kitchencleanbarValue =
                                                            newValue),
                                                    itemBuilder:
                                                        (context, index) =>
                                                            Icon(
                                                      Icons.star_rounded,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .starColor,
                                                    ),
                                                    direction: Axis.horizontal,
                                                    initialRating: _model
                                                            .kitchencleanbarValue ??=
                                                        0.0,
                                                    unratedColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .accent3,
                                                    itemCount: 5,
                                                    itemSize: 23.0,
                                                    glowColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .starColor,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 5.0, 0.0, 10.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          25.0, 0.0, 0.0, 0.0),
                                                  child: Text(
                                                    '4. 건물 청결 상태  ',
                                                    style: TextStyle(
                                                      color: Color(0x8A000000),
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontSize: 17.0,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 25.0, 0.0),
                                                  child: RatingBar.builder(
                                                    onRatingUpdate: (newValue) =>
                                                        setState(() => _model
                                                                .buildcleanbarValue =
                                                            newValue),
                                                    itemBuilder:
                                                        (context, index) =>
                                                            Icon(
                                                      Icons.star_rounded,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .starColor,
                                                    ),
                                                    direction: Axis.horizontal,
                                                    initialRating: _model
                                                            .buildcleanbarValue ??=
                                                        0.0,
                                                    unratedColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .accent3,
                                                    itemCount: 5,
                                                    itemSize: 23.0,
                                                    glowColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .starColor,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      theme: ExpandableThemeData(
                                        tapHeaderToExpand: true,
                                        tapBodyToExpand: false,
                                        tapBodyToCollapse: false,
                                        headerAlignment:
                                            ExpandablePanelHeaderAlignment
                                                .center,
                                        hasIcon: true,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            if (FFAppState().switchConvenience)
                              Container(
                                decoration: BoxDecoration(),
                                child: Container(
                                  width: double.infinity,
                                  color: Colors.white,
                                  child: ExpandableNotifier(
                                    controller:
                                        _model.expandableExpandableController11,
                                    child: ExpandablePanel(
                                      header: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Align(
                                            alignment:
                                                AlignmentDirectional(0.0, 0.0),
                                            child: wrapWithModel(
                                              model: _model
                                                  .amenitityIndicatorModel11,
                                              updateCallback: () =>
                                                  setState(() {}),
                                              child: AmenitityIndicatorWidget(
                                                icon: Icon(
                                                  Icons
                                                      .local_convenience_store_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .gray600,
                                                ),
                                                background:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                borderColor:
                                                    FlutterFlowTheme.of(context)
                                                        .lineGray,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    20.0, 8.0, 10.0, 8.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  '편의시설',
                                                  textAlign: TextAlign.center,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
                                                        fontSize: 18.0,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily),
                                                      ),
                                                ),
                                                Text(
                                                  'Convenience',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily),
                                                      ),
                                                ),
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          1.0, 0.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                1.0, 0.0),
                                                        child: Icon(
                                                          Icons.star_rounded,
                                                          color:
                                                              Color(0xFFFFA130),
                                                          size: 24.0,
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                1.0, 0.0),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      4.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Text(
                                                            valueOrDefault<
                                                                String>(
                                                              formatNumber(
                                                                functions
                                                                    .threeRatingSummary(
                                                                        valueOrDefault<
                                                                            double>(
                                                                          _model
                                                                              .martbarValue,
                                                                          0.0,
                                                                        ),
                                                                        valueOrDefault<
                                                                            double>(
                                                                          _model
                                                                              .busbarValue,
                                                                          0.0,
                                                                        ),
                                                                        valueOrDefault<
                                                                            double>(
                                                                          _model
                                                                              .schoolbarValue,
                                                                          0.0,
                                                                        )),
                                                                formatType:
                                                                    FormatType
                                                                        .decimal,
                                                                decimalType:
                                                                    DecimalType
                                                                        .automatic,
                                                              ),
                                                              '0',
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodySmall
                                                                .override(
                                                                  fontFamily:
                                                                      'Lexend Deca',
                                                                  color: Color(
                                                                      0xFF8B97A2),
                                                                  fontSize:
                                                                      12.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          'Lexend Deca'),
                                                                ),
                                                          ),
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                1.0, 0.0),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      2.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Text(
                                                            '점',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodySmall
                                                                .override(
                                                                  fontFamily:
                                                                      'Lexend Deca',
                                                                  color: Color(
                                                                      0xFF8B97A2),
                                                                  fontSize:
                                                                      12.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          'Lexend Deca'),
                                                                ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      collapsed: Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                1.0,
                                        height: 0.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                        ),
                                      ),
                                      expanded: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 10.0, 0.0, 5.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          25.0, 0.0, 0.0, 0.0),
                                                  child: Text(
                                                    '1. 가까운 편의점 / 마트 ',
                                                    style: TextStyle(
                                                      color: Color(0x8A000000),
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontSize: 17.0,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 25.0, 0.0),
                                                  child: RatingBar.builder(
                                                    onRatingUpdate: (newValue) =>
                                                        setState(() => _model
                                                                .martbarValue =
                                                            newValue),
                                                    itemBuilder:
                                                        (context, index) =>
                                                            Icon(
                                                      Icons.star_rounded,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .starColor,
                                                    ),
                                                    direction: Axis.horizontal,
                                                    initialRating: _model
                                                        .martbarValue ??= 0.0,
                                                    unratedColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .accent3,
                                                    itemCount: 5,
                                                    itemSize: 23.0,
                                                    glowColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .starColor,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 5.0, 0.0, 5.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          25.0, 0.0, 0.0, 0.0),
                                                  child: Text(
                                                    '2. 대중교통 접근성 ',
                                                    style: TextStyle(
                                                      color: Color(0x8A000000),
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontSize: 17.0,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 25.0, 0.0),
                                                  child: RatingBar.builder(
                                                    onRatingUpdate: (newValue) =>
                                                        setState(() =>
                                                            _model.busbarValue =
                                                                newValue),
                                                    itemBuilder:
                                                        (context, index) =>
                                                            Icon(
                                                      Icons.star_rounded,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .starColor,
                                                    ),
                                                    direction: Axis.horizontal,
                                                    initialRating: _model
                                                        .busbarValue ??= 0.0,
                                                    unratedColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .accent3,
                                                    itemCount: 5,
                                                    itemSize: 23.0,
                                                    glowColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .starColor,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 5.0, 0.0, 10.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          25.0, 0.0, 0.0, 0.0),
                                                  child: Text(
                                                    '3. 학교 / 직장 거리 ',
                                                    style: TextStyle(
                                                      color: Color(0x8A000000),
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontSize: 17.0,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 25.0, 0.0),
                                                  child: RatingBar.builder(
                                                    onRatingUpdate: (newValue) =>
                                                        setState(() => _model
                                                                .schoolbarValue =
                                                            newValue),
                                                    itemBuilder:
                                                        (context, index) =>
                                                            Icon(
                                                      Icons.star_rounded,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .starColor,
                                                    ),
                                                    direction: Axis.horizontal,
                                                    initialRating: _model
                                                        .schoolbarValue ??= 0.0,
                                                    unratedColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .accent3,
                                                    itemCount: 5,
                                                    itemSize: 23.0,
                                                    glowColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .starColor,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      theme: ExpandableThemeData(
                                        tapHeaderToExpand: true,
                                        tapBodyToExpand: false,
                                        tapBodyToCollapse: false,
                                        headerAlignment:
                                            ExpandablePanelHeaderAlignment
                                                .center,
                                        hasIcon: true,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            if (FFAppState().switchSoundproofing)
                              Container(
                                decoration: BoxDecoration(),
                                child: Container(
                                  width: double.infinity,
                                  color: Colors.white,
                                  child: ExpandableNotifier(
                                    controller:
                                        _model.expandableExpandableController12,
                                    child: ExpandablePanel(
                                      header: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Align(
                                            alignment:
                                                AlignmentDirectional(0.0, 0.0),
                                            child: wrapWithModel(
                                              model: _model
                                                  .amenitityIndicatorModel12,
                                              updateCallback: () =>
                                                  setState(() {}),
                                              child: AmenitityIndicatorWidget(
                                                icon: Icon(
                                                  Icons.voice_over_off,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .gray600,
                                                ),
                                                background:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                borderColor:
                                                    FlutterFlowTheme.of(context)
                                                        .lineGray,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    20.0, 8.0, 10.0, 8.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  '방음',
                                                  textAlign: TextAlign.center,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
                                                        fontSize: 18.0,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily),
                                                      ),
                                                ),
                                                Text(
                                                  'Soundproofing',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily),
                                                      ),
                                                ),
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          1.0, 0.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                1.0, 0.0),
                                                        child: Icon(
                                                          Icons.star_rounded,
                                                          color:
                                                              Color(0xFFFFA130),
                                                          size: 24.0,
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                1.0, 0.0),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      4.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Text(
                                                            valueOrDefault<
                                                                String>(
                                                              formatNumber(
                                                                functions
                                                                    .twoRatingSummary(
                                                                        valueOrDefault<
                                                                            double>(
                                                                          _model
                                                                              .wallsoundbarValue,
                                                                          0.0,
                                                                        ),
                                                                        valueOrDefault<
                                                                            double>(
                                                                          _model
                                                                              .outsidesoundbarValue,
                                                                          0.0,
                                                                        )),
                                                                formatType:
                                                                    FormatType
                                                                        .decimal,
                                                                decimalType:
                                                                    DecimalType
                                                                        .automatic,
                                                              ),
                                                              '0',
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodySmall
                                                                .override(
                                                                  fontFamily:
                                                                      'Lexend Deca',
                                                                  color: Color(
                                                                      0xFF8B97A2),
                                                                  fontSize:
                                                                      12.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          'Lexend Deca'),
                                                                ),
                                                          ),
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                1.0, 0.0),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      2.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Text(
                                                            '점',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodySmall
                                                                .override(
                                                                  fontFamily:
                                                                      'Lexend Deca',
                                                                  color: Color(
                                                                      0xFF8B97A2),
                                                                  fontSize:
                                                                      12.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          'Lexend Deca'),
                                                                ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      collapsed: Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                1.0,
                                        height: 0.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                        ),
                                      ),
                                      expanded: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 10.0, 0.0, 5.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          25.0, 0.0, 0.0, 0.0),
                                                  child: Text(
                                                    '1. 벽의 방음상태    ',
                                                    style: TextStyle(
                                                      color: Color(0x8A000000),
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontSize: 17.0,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 25.0, 0.0),
                                                  child: RatingBar.builder(
                                                    onRatingUpdate: (newValue) =>
                                                        setState(() => _model
                                                                .wallsoundbarValue =
                                                            newValue),
                                                    itemBuilder:
                                                        (context, index) =>
                                                            Icon(
                                                      Icons.star_rounded,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .starColor,
                                                    ),
                                                    direction: Axis.horizontal,
                                                    initialRating: _model
                                                            .wallsoundbarValue ??=
                                                        0.0,
                                                    unratedColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .accent3,
                                                    itemCount: 5,
                                                    itemSize: 23.0,
                                                    glowColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .starColor,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 5.0, 0.0, 10.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 3.0, 0.0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    25.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Text(
                                                          '2. 외부 소음',
                                                          style: TextStyle(
                                                            color: Color(
                                                                0x8A000000),
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontSize: 17.0,
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    40.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Text(
                                                          '* 도로 및 주변 상가 등 주변 소음',
                                                          style: TextStyle(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .redApple,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            fontSize: 10.0,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 25.0, 0.0),
                                                  child: RatingBar.builder(
                                                    onRatingUpdate: (newValue) =>
                                                        setState(() => _model
                                                                .outsidesoundbarValue =
                                                            newValue),
                                                    itemBuilder:
                                                        (context, index) =>
                                                            Icon(
                                                      Icons.star_rounded,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .starColor,
                                                    ),
                                                    direction: Axis.horizontal,
                                                    initialRating: _model
                                                            .outsidesoundbarValue ??=
                                                        0.0,
                                                    unratedColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .accent3,
                                                    itemCount: 5,
                                                    itemSize: 23.0,
                                                    glowColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .starColor,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      theme: ExpandableThemeData(
                                        tapHeaderToExpand: true,
                                        tapBodyToExpand: false,
                                        tapBodyToCollapse: false,
                                        headerAlignment:
                                            ExpandablePanelHeaderAlignment
                                                .center,
                                        hasIcon: true,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            if (FFAppState().switchParkingArea)
                              Container(
                                decoration: BoxDecoration(),
                                child: Container(
                                  width: double.infinity,
                                  color: Colors.white,
                                  child: ExpandableNotifier(
                                    controller:
                                        _model.expandableExpandableController13,
                                    child: ExpandablePanel(
                                      header: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Align(
                                            alignment:
                                                AlignmentDirectional(0.0, 0.0),
                                            child: wrapWithModel(
                                              model: _model
                                                  .amenitityIndicatorModel13,
                                              updateCallback: () =>
                                                  setState(() {}),
                                              child: AmenitityIndicatorWidget(
                                                icon: Icon(
                                                  Icons.local_parking,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .gray600,
                                                ),
                                                background:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                borderColor:
                                                    FlutterFlowTheme.of(context)
                                                        .lineGray,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    20.0, 8.0, 10.0, 8.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  '주차공간',
                                                  textAlign: TextAlign.center,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
                                                        fontSize: 18.0,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily),
                                                      ),
                                                ),
                                                Text(
                                                  'Parking Area',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily),
                                                      ),
                                                ),
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          1.0, 0.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                1.0, 0.0),
                                                        child: Icon(
                                                          Icons.star_rounded,
                                                          color:
                                                              Color(0xFFFFA130),
                                                          size: 24.0,
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                1.0, 0.0),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      4.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Text(
                                                            valueOrDefault<
                                                                String>(
                                                              formatNumber(
                                                                functions
                                                                    .twoRatingSummary(
                                                                        valueOrDefault<
                                                                            double>(
                                                                          _model
                                                                              .parkingspacebarValue,
                                                                          0.0,
                                                                        ),
                                                                        valueOrDefault<
                                                                            double>(
                                                                          _model
                                                                              .parkingcostbarValue,
                                                                          0.0,
                                                                        )),
                                                                formatType:
                                                                    FormatType
                                                                        .decimal,
                                                                decimalType:
                                                                    DecimalType
                                                                        .automatic,
                                                              ),
                                                              '0',
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodySmall
                                                                .override(
                                                                  fontFamily:
                                                                      'Lexend Deca',
                                                                  color: Color(
                                                                      0xFF8B97A2),
                                                                  fontSize:
                                                                      12.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          'Lexend Deca'),
                                                                ),
                                                          ),
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                1.0, 0.0),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      2.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Text(
                                                            '점',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodySmall
                                                                .override(
                                                                  fontFamily:
                                                                      'Lexend Deca',
                                                                  color: Color(
                                                                      0xFF8B97A2),
                                                                  fontSize:
                                                                      12.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          'Lexend Deca'),
                                                                ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      collapsed: Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                1.0,
                                        height: 0.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                        ),
                                      ),
                                      expanded: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 10.0, 0.0, 5.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          25.0, 0.0, 0.0, 0.0),
                                                  child: Text(
                                                    '1. 주차 공간 유무   ',
                                                    style: TextStyle(
                                                      color: Color(0x8A000000),
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontSize: 17.0,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 25.0, 0.0),
                                                  child: RatingBar.builder(
                                                    onRatingUpdate: (newValue) =>
                                                        setState(() => _model
                                                                .parkingspacebarValue =
                                                            newValue),
                                                    itemBuilder:
                                                        (context, index) =>
                                                            Icon(
                                                      Icons.star_rounded,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .starColor,
                                                    ),
                                                    direction: Axis.horizontal,
                                                    initialRating: _model
                                                            .parkingspacebarValue ??=
                                                        0.0,
                                                    unratedColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .accent3,
                                                    itemCount: 5,
                                                    itemSize: 23.0,
                                                    glowColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .starColor,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 5.0, 0.0, 10.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          25.0, 0.0, 0.0, 0.0),
                                                  child: Text(
                                                    '2. 주차 비용          ',
                                                    style: TextStyle(
                                                      color: Color(0x8A000000),
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontSize: 17.0,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 25.0, 0.0),
                                                  child: RatingBar.builder(
                                                    onRatingUpdate: (newValue) =>
                                                        setState(() => _model
                                                                .parkingcostbarValue =
                                                            newValue),
                                                    itemBuilder:
                                                        (context, index) =>
                                                            Icon(
                                                      Icons.star_rounded,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .starColor,
                                                    ),
                                                    direction: Axis.horizontal,
                                                    initialRating: _model
                                                            .parkingcostbarValue ??=
                                                        0.0,
                                                    unratedColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .accent3,
                                                    itemCount: 5,
                                                    itemSize: 23.0,
                                                    glowColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .starColor,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      theme: ExpandableThemeData(
                                        tapHeaderToExpand: true,
                                        tapBodyToExpand: false,
                                        tapBodyToCollapse: false,
                                        headerAlignment:
                                            ExpandablePanelHeaderAlignment
                                                .center,
                                        hasIcon: true,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            if (FFAppState().switchSmokingArea)
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 10.0),
                                child: Container(
                                  decoration: BoxDecoration(),
                                  child: Container(
                                    width: double.infinity,
                                    color: Colors.white,
                                    child: ExpandableNotifier(
                                      controller: _model
                                          .expandableExpandableController14,
                                      child: ExpandablePanel(
                                        header: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: wrapWithModel(
                                                model: _model
                                                    .amenitityIndicatorModel14,
                                                updateCallback: () =>
                                                    setState(() {}),
                                                child: AmenitityIndicatorWidget(
                                                  icon: Icon(
                                                    Icons.smoking_rooms,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .gray600,
                                                  ),
                                                  background:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryBackground,
                                                  borderColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .lineGray,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      20.0, 8.0, 10.0, 8.0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    '흡연 구역',
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          fontSize: 18.0,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily),
                                                        ),
                                                  ),
                                                  Text(
                                                    'Smoking Area',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily),
                                                        ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            1.0, 0.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  1.0, 0.0),
                                                          child: Icon(
                                                            Icons.star_rounded,
                                                            color: Color(
                                                                0xFFFFA130),
                                                            size: 24.0,
                                                          ),
                                                        ),
                                                        Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  1.0, 0.0),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        4.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Text(
                                                              valueOrDefault<
                                                                  String>(
                                                                formatNumber(
                                                                  functions.threeRatingSummary(
                                                                      valueOrDefault<double>(
                                                                        _model
                                                                            .smokingspacebarValue,
                                                                        0.0,
                                                                      ),
                                                                      valueOrDefault<double>(
                                                                        _model
                                                                            .smokinglocationbarValue,
                                                                        0.0,
                                                                      ),
                                                                      valueOrDefault<double>(
                                                                        _model
                                                                            .smokingareacleanessbarValue,
                                                                        0.0,
                                                                      )),
                                                                  formatType:
                                                                      FormatType
                                                                          .decimal,
                                                                  decimalType:
                                                                      DecimalType
                                                                          .automatic,
                                                                ),
                                                                '0',
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodySmall
                                                                  .override(
                                                                    fontFamily:
                                                                        'Lexend Deca',
                                                                    color: Color(
                                                                        0xFF8B97A2),
                                                                    fontSize:
                                                                        12.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .normal,
                                                                    useGoogleFonts: GoogleFonts
                                                                            .asMap()
                                                                        .containsKey(
                                                                            'Lexend Deca'),
                                                                  ),
                                                            ),
                                                          ),
                                                        ),
                                                        Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  1.0, 0.0),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        2.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Text(
                                                              '점',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodySmall
                                                                  .override(
                                                                    fontFamily:
                                                                        'Lexend Deca',
                                                                    color: Color(
                                                                        0xFF8B97A2),
                                                                    fontSize:
                                                                        12.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .normal,
                                                                    useGoogleFonts: GoogleFonts
                                                                            .asMap()
                                                                        .containsKey(
                                                                            'Lexend Deca'),
                                                                  ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        collapsed: Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  1.0,
                                          height: 0.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                          ),
                                        ),
                                        expanded: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 10.0, 0.0, 5.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(25.0, 0.0,
                                                                0.0, 0.0),
                                                    child: Text(
                                                      '1. 흡연 구역 유무   ',
                                                      style: TextStyle(
                                                        color:
                                                            Color(0x8A000000),
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontSize: 17.0,
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                25.0, 0.0),
                                                    child: RatingBar.builder(
                                                      onRatingUpdate: (newValue) =>
                                                          setState(() => _model
                                                                  .smokingspacebarValue =
                                                              newValue),
                                                      itemBuilder:
                                                          (context, index) =>
                                                              Icon(
                                                        Icons.star_rounded,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .starColor,
                                                      ),
                                                      direction:
                                                          Axis.horizontal,
                                                      initialRating: _model
                                                              .smokingspacebarValue ??=
                                                          0.0,
                                                      unratedColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .accent3,
                                                      itemCount: 5,
                                                      itemSize: 23.0,
                                                      glowColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .starColor,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 5.0, 0.0, 5.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(25.0, 0.0,
                                                                0.0, 0.0),
                                                    child: Text(
                                                      '2. 흡연 구역 위치  ',
                                                      style: TextStyle(
                                                        color:
                                                            Color(0x8A000000),
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontSize: 17.0,
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                25.0, 0.0),
                                                    child: RatingBar.builder(
                                                      onRatingUpdate: (newValue) =>
                                                          setState(() => _model
                                                                  .smokinglocationbarValue =
                                                              newValue),
                                                      itemBuilder:
                                                          (context, index) =>
                                                              Icon(
                                                        Icons.star_rounded,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .starColor,
                                                      ),
                                                      direction:
                                                          Axis.horizontal,
                                                      initialRating: _model
                                                              .smokinglocationbarValue ??=
                                                          0.0,
                                                      unratedColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .accent3,
                                                      itemCount: 5,
                                                      itemSize: 23.0,
                                                      glowColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .starColor,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 5.0, 0.0, 10.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(25.0, 0.0,
                                                                0.0, 0.0),
                                                    child: Text(
                                                      '3. 흡연 구역 청결 상태  ',
                                                      style: TextStyle(
                                                        color:
                                                            Color(0x8A000000),
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontSize: 17.0,
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                25.0, 0.0),
                                                    child: RatingBar.builder(
                                                      onRatingUpdate: (newValue) =>
                                                          setState(() => _model
                                                                  .smokingareacleanessbarValue =
                                                              newValue),
                                                      itemBuilder:
                                                          (context, index) =>
                                                              Icon(
                                                        Icons.star_rounded,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .starColor,
                                                      ),
                                                      direction:
                                                          Axis.horizontal,
                                                      initialRating: _model
                                                              .smokingareacleanessbarValue ??=
                                                          0.0,
                                                      unratedColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .accent3,
                                                      itemCount: 5,
                                                      itemSize: 23.0,
                                                      glowColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .starColor,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        theme: ExpandableThemeData(
                                          tapHeaderToExpand: true,
                                          tapBodyToExpand: false,
                                          tapBodyToCollapse: false,
                                          headerAlignment:
                                              ExpandablePanelHeaderAlignment
                                                  .center,
                                          hasIcon: true,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
