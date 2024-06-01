import '/components/amenitity_indicator/amenitity_indicator_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'list_reflect_priority_model.dart';
export 'list_reflect_priority_model.dart';

class ListReflectPriorityWidget extends StatefulWidget {
  const ListReflectPriorityWidget({super.key});

  @override
  State<ListReflectPriorityWidget> createState() =>
      _ListReflectPriorityWidgetState();
}

class _ListReflectPriorityWidgetState extends State<ListReflectPriorityWidget> {
  late ListReflectPriorityModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ListReflectPriorityModel());
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
          '우선순위 반영 목록',
          style: FlutterFlowTheme.of(context).headlineSmall.override(
                fontFamily: 'NotoSansKR',
                letterSpacing: 0.0,
                useGoogleFonts: GoogleFonts.asMap().containsKey('NotoSansKR'),
              ),
        ),
        actions: [],
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
                                '자취방 평가 기준에 적용시킬 목록을 설정해주세요',
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
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Stack(
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: wrapWithModel(
                                    model: _model.amenitityIndicatorModel1,
                                    updateCallback: () => setState(() {}),
                                    child: AmenitityIndicatorWidget(
                                      icon: Icon(
                                        Icons.monetization_on,
                                        color: FlutterFlowTheme.of(context)
                                            .gray600,
                                      ),
                                      background: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderColor:
                                          FlutterFlowTheme.of(context).lineGray,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Expanded(
                              child: SwitchListTile.adaptive(
                                value: _model.amenityPoolValue1 ??=
                                    FFAppState().switchPrice,
                                onChanged: (newValue) async {
                                  setState(() =>
                                      _model.amenityPoolValue1 = newValue!);
                                  if (newValue!) {
                                    FFAppState().switchPrice = true;
                                  } else {
                                    FFAppState().switchPrice = false;
                                  }
                                },
                                title: Text(
                                  '가격',
                                  style: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .override(
                                        fontFamily: 'NotoSansKR',
                                        letterSpacing: 0.0,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey('NotoSansKR'),
                                      ),
                                ),
                                subtitle: Text(
                                  FFAppState().StringPriorityPrice,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodyMediumFamily,
                                        letterSpacing: 0.0,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily),
                                      ),
                                ),
                                tileColor: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                activeColor:
                                    FlutterFlowTheme.of(context).primary,
                                activeTrackColor: Color(0xFF392BBA),
                                dense: false,
                                controlAffinity:
                                    ListTileControlAffinity.trailing,
                                contentPadding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 8.0, 0.0, 8.0),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Stack(
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: wrapWithModel(
                                    model: _model.amenitityIndicatorModel2,
                                    updateCallback: () => setState(() {}),
                                    child: AmenitityIndicatorWidget(
                                      icon: Icon(
                                        Icons.photo_size_select_small,
                                        color: FlutterFlowTheme.of(context)
                                            .gray600,
                                      ),
                                      background: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderColor:
                                          FlutterFlowTheme.of(context).lineGray,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Expanded(
                              child: SwitchListTile.adaptive(
                                value: _model.amenityEVChargingValue ??=
                                    FFAppState().switchRoomsize,
                                onChanged: (newValue) async {
                                  setState(() => _model.amenityEVChargingValue =
                                      newValue!);
                                  if (newValue!) {
                                    FFAppState().switchRoomsize = true;
                                  } else {
                                    FFAppState().switchRoomsize = false;
                                  }
                                },
                                title: Text(
                                  '방 크기 및 구조',
                                  style: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .titleMediumFamily,
                                        letterSpacing: 0.0,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .titleMediumFamily),
                                      ),
                                ),
                                subtitle: Text(
                                  FFAppState().StringPriorityRoomSize,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodyMediumFamily,
                                        letterSpacing: 0.0,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily),
                                      ),
                                ),
                                tileColor: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                activeColor:
                                    FlutterFlowTheme.of(context).primary,
                                activeTrackColor: Color(0xFF392BBA),
                                dense: false,
                                controlAffinity:
                                    ListTileControlAffinity.trailing,
                                contentPadding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 8.0, 0.0, 8.0),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Stack(
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: wrapWithModel(
                                    model: _model.amenitityIndicatorModel3,
                                    updateCallback: () => setState(() {}),
                                    child: AmenitityIndicatorWidget(
                                      icon: Icon(
                                        Icons.water_drop,
                                        color: FlutterFlowTheme.of(context)
                                            .gray600,
                                      ),
                                      background: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderColor:
                                          FlutterFlowTheme.of(context).lineGray,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Expanded(
                              child: SwitchListTile.adaptive(
                                value: _model.amenityExtraOutletsValue ??=
                                    FFAppState().switchwaterdrain,
                                onChanged: (newValue) async {
                                  setState(() => _model
                                      .amenityExtraOutletsValue = newValue!);
                                  if (newValue!) {
                                    FFAppState().switchwaterdrain = true;
                                    setState(() {});
                                  } else {
                                    FFAppState().switchwaterdrain = false;
                                    setState(() {});
                                  }
                                },
                                title: Text(
                                  '수도 및 배수',
                                  style: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .titleMediumFamily,
                                        letterSpacing: 0.0,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .titleMediumFamily),
                                      ),
                                ),
                                subtitle: Text(
                                  FFAppState().StringPriorityWaterDrainage,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodyMediumFamily,
                                        letterSpacing: 0.0,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily),
                                      ),
                                ),
                                tileColor: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                activeColor:
                                    FlutterFlowTheme.of(context).primary,
                                activeTrackColor: Color(0xFF392BBA),
                                dense: false,
                                controlAffinity:
                                    ListTileControlAffinity.trailing,
                                contentPadding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 8.0, 0.0, 8.0),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Stack(
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: wrapWithModel(
                                    model: _model.amenitityIndicatorModel4,
                                    updateCallback: () => setState(() {}),
                                    child: AmenitityIndicatorWidget(
                                      icon: Icon(
                                        Icons.bathtub_rounded,
                                        color: FlutterFlowTheme.of(context)
                                            .gray600,
                                      ),
                                      background: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderColor:
                                          FlutterFlowTheme.of(context).lineGray,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Expanded(
                              child: SwitchListTile.adaptive(
                                value: _model.amenityACValue ??=
                                    FFAppState().swtichbathroom,
                                onChanged: (newValue) async {
                                  setState(
                                      () => _model.amenityACValue = newValue!);
                                  if (newValue!) {
                                    FFAppState().swtichbathroom = true;
                                    setState(() {});
                                  } else {
                                    FFAppState().swtichbathroom = false;
                                    setState(() {});
                                  }
                                },
                                title: Text(
                                  '화장실',
                                  style: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .titleMediumFamily,
                                        letterSpacing: 0.0,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .titleMediumFamily),
                                      ),
                                ),
                                subtitle: Text(
                                  FFAppState().StringPriorityBathroom,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodyMediumFamily,
                                        letterSpacing: 0.0,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily),
                                      ),
                                ),
                                tileColor: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                activeColor:
                                    FlutterFlowTheme.of(context).primary,
                                activeTrackColor: Color(0xFF392BBA),
                                dense: false,
                                controlAffinity:
                                    ListTileControlAffinity.trailing,
                                contentPadding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 8.0, 0.0, 8.0),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Stack(
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: wrapWithModel(
                                    model: _model.amenitityIndicatorModel5,
                                    updateCallback: () => setState(() {}),
                                    child: AmenitityIndicatorWidget(
                                      icon: Icon(
                                        Icons.bed,
                                        color: FlutterFlowTheme.of(context)
                                            .gray600,
                                      ),
                                      background: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderColor:
                                          FlutterFlowTheme.of(context).lineGray,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Expanded(
                              child: SwitchListTile.adaptive(
                                value: _model.amenityHeatingValue ??=
                                    FFAppState().switchBasicOption,
                                onChanged: (newValue) async {
                                  setState(() =>
                                      _model.amenityHeatingValue = newValue!);
                                  if (newValue!) {
                                    FFAppState().switchBasicOption = true;
                                    setState(() {});
                                  } else {
                                    FFAppState().switchBasicOption = false;
                                    setState(() {});
                                  }
                                },
                                title: Text(
                                  '기본 옵션',
                                  style: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .titleMediumFamily,
                                        letterSpacing: 0.0,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .titleMediumFamily),
                                      ),
                                ),
                                subtitle: Text(
                                  FFAppState().StringPriorityBasicOption,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodyMediumFamily,
                                        letterSpacing: 0.0,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily),
                                      ),
                                ),
                                tileColor: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                activeColor:
                                    FlutterFlowTheme.of(context).primary,
                                activeTrackColor: Color(0xFF392BBA),
                                dense: false,
                                controlAffinity:
                                    ListTileControlAffinity.trailing,
                                contentPadding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 8.0, 0.0, 8.0),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Stack(
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: wrapWithModel(
                                    model: _model.amenitityIndicatorModel6,
                                    updateCallback: () => setState(() {}),
                                    child: AmenitityIndicatorWidget(
                                      icon: Icon(
                                        Icons.restore_from_trash,
                                        color: FlutterFlowTheme.of(context)
                                            .gray600,
                                      ),
                                      background: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderColor:
                                          FlutterFlowTheme.of(context).lineGray,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Expanded(
                              child: SwitchListTile.adaptive(
                                value: _model.amenityWasherValue ??=
                                    FFAppState().sWitchGarbageDisposal,
                                onChanged: (newValue) async {
                                  setState(() =>
                                      _model.amenityWasherValue = newValue!);
                                  if (newValue!) {
                                    FFAppState().sWitchGarbageDisposal = true;
                                    setState(() {});
                                  } else {
                                    FFAppState().sWitchGarbageDisposal = false;
                                    setState(() {});
                                  }
                                },
                                title: Text(
                                  '쓰레기 처리',
                                  style: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .titleMediumFamily,
                                        letterSpacing: 0.0,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .titleMediumFamily),
                                      ),
                                ),
                                subtitle: Text(
                                  FFAppState().StringPriorityGarbageDisPosal,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodyMediumFamily,
                                        letterSpacing: 0.0,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily),
                                      ),
                                ),
                                tileColor: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                activeColor:
                                    FlutterFlowTheme.of(context).primary,
                                activeTrackColor: Color(0xFF392BBA),
                                dense: false,
                                controlAffinity:
                                    ListTileControlAffinity.trailing,
                                contentPadding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 8.0, 0.0, 8.0),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Stack(
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: wrapWithModel(
                                    model: _model.amenitityIndicatorModel7,
                                    updateCallback: () => setState(() {}),
                                    child: AmenitityIndicatorWidget(
                                      icon: Icon(
                                        Icons.apartment_rounded,
                                        color: FlutterFlowTheme.of(context)
                                            .gray600,
                                      ),
                                      background: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderColor:
                                          FlutterFlowTheme.of(context).lineGray,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Expanded(
                              child: SwitchListTile.adaptive(
                                value: _model.amenityDryerValue ??=
                                    FFAppState().switchFloor,
                                onChanged: (newValue) async {
                                  setState(() =>
                                      _model.amenityDryerValue = newValue!);
                                  if (newValue!) {
                                    FFAppState().switchFloor = true;
                                    setState(() {});
                                  } else {
                                    FFAppState().switchFloor = false;
                                    setState(() {});
                                  }
                                },
                                title: Text(
                                  '층수',
                                  style: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .titleMediumFamily,
                                        letterSpacing: 0.0,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .titleMediumFamily),
                                      ),
                                ),
                                subtitle: Text(
                                  FFAppState().StringPriorityFloor,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodyMediumFamily,
                                        letterSpacing: 0.0,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily),
                                      ),
                                ),
                                tileColor: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                activeColor:
                                    FlutterFlowTheme.of(context).primary,
                                activeTrackColor: Color(0xFF392BBA),
                                dense: false,
                                controlAffinity:
                                    ListTileControlAffinity.trailing,
                                contentPadding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 8.0, 0.0, 8.0),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Stack(
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: wrapWithModel(
                                    model: _model.amenitityIndicatorModel8,
                                    updateCallback: () => setState(() {}),
                                    child: AmenitityIndicatorWidget(
                                      icon: Icon(
                                        Icons.security_sharp,
                                        color: FlutterFlowTheme.of(context)
                                            .gray600,
                                      ),
                                      background: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderColor:
                                          FlutterFlowTheme.of(context).lineGray,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Expanded(
                              child: SwitchListTile.adaptive(
                                value: _model.amenityPetsValue ??=
                                    FFAppState().switchSecurity,
                                onChanged: (newValue) async {
                                  setState(() =>
                                      _model.amenityPetsValue = newValue!);
                                  if (newValue!) {
                                    FFAppState().switchSecurity = true;
                                    setState(() {});
                                  } else {
                                    FFAppState().switchSecurity = false;
                                    setState(() {});
                                  }
                                },
                                title: Text(
                                  '보안',
                                  style: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .titleMediumFamily,
                                        letterSpacing: 0.0,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .titleMediumFamily),
                                      ),
                                ),
                                subtitle: Text(
                                  FFAppState().StringPrioritySecurity,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodyMediumFamily,
                                        letterSpacing: 0.0,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily),
                                      ),
                                ),
                                tileColor: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                activeColor:
                                    FlutterFlowTheme.of(context).primary,
                                activeTrackColor: Color(0xFF392BBA),
                                dense: false,
                                controlAffinity:
                                    ListTileControlAffinity.trailing,
                                contentPadding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 8.0, 0.0, 8.0),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Stack(
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: wrapWithModel(
                                    model: _model.amenitityIndicatorModel9,
                                    updateCallback: () => setState(() {}),
                                    child: AmenitityIndicatorWidget(
                                      icon: Icon(
                                        Icons.window_outlined,
                                        color: FlutterFlowTheme.of(context)
                                            .gray600,
                                      ),
                                      background: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderColor:
                                          FlutterFlowTheme.of(context).lineGray,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Expanded(
                              child: SwitchListTile.adaptive(
                                value: _model.amenityWorkoutValue ??=
                                    FFAppState().switchwindows,
                                onChanged: (newValue) async {
                                  setState(() =>
                                      _model.amenityWorkoutValue = newValue!);
                                  if (newValue!) {
                                    FFAppState().switchwindows = true;
                                    setState(() {});
                                  } else {
                                    FFAppState().switchwindows = false;
                                    setState(() {});
                                  }
                                },
                                title: Text(
                                  '창문 및 조향',
                                  style: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .titleMediumFamily,
                                        letterSpacing: 0.0,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .titleMediumFamily),
                                      ),
                                ),
                                subtitle: Text(
                                  FFAppState().StringPriorityWindows,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodyMediumFamily,
                                        letterSpacing: 0.0,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily),
                                      ),
                                ),
                                tileColor: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                activeColor:
                                    FlutterFlowTheme.of(context).primary,
                                activeTrackColor: Color(0xFF392BBA),
                                dense: false,
                                controlAffinity:
                                    ListTileControlAffinity.trailing,
                                contentPadding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 8.0, 0.0, 8.0),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Stack(
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: wrapWithModel(
                                    model: _model.amenitityIndicatorModel10,
                                    updateCallback: () => setState(() {}),
                                    child: AmenitityIndicatorWidget(
                                      icon: Icon(
                                        Icons.cleaning_services,
                                        color: FlutterFlowTheme.of(context)
                                            .gray600,
                                      ),
                                      background: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderColor:
                                          FlutterFlowTheme.of(context).lineGray,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Expanded(
                              child: SwitchListTile.adaptive(
                                value: _model.amenityPoolValue2 ??=
                                    FFAppState().switchcleanliness,
                                onChanged: (newValue) async {
                                  setState(() =>
                                      _model.amenityPoolValue2 = newValue!);
                                  if (newValue!) {
                                    FFAppState().switchcleanliness = true;
                                    setState(() {});
                                  } else {
                                    FFAppState().switchcleanliness = false;
                                    setState(() {});
                                  }
                                },
                                title: Text(
                                  '청결도',
                                  style: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .titleMediumFamily,
                                        letterSpacing: 0.0,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .titleMediumFamily),
                                      ),
                                ),
                                subtitle: Text(
                                  FFAppState().StringPriorityCleaness,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodyMediumFamily,
                                        letterSpacing: 0.0,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily),
                                      ),
                                ),
                                tileColor: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                activeColor:
                                    FlutterFlowTheme.of(context).primary,
                                activeTrackColor: Color(0xFF392BBA),
                                dense: false,
                                controlAffinity:
                                    ListTileControlAffinity.trailing,
                                contentPadding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 8.0, 0.0, 8.0),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Stack(
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: wrapWithModel(
                                    model: _model.amenitityIndicatorModel11,
                                    updateCallback: () => setState(() {}),
                                    child: AmenitityIndicatorWidget(
                                      icon: Icon(
                                        Icons.local_convenience_store_rounded,
                                        color: FlutterFlowTheme.of(context)
                                            .gray600,
                                      ),
                                      background: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderColor:
                                          FlutterFlowTheme.of(context).lineGray,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Expanded(
                              child: SwitchListTile.adaptive(
                                value: _model.amenityPoolValue3 ??=
                                    FFAppState().switchConvenience,
                                onChanged: (newValue) async {
                                  setState(() =>
                                      _model.amenityPoolValue3 = newValue!);
                                  if (newValue!) {
                                    FFAppState().switchConvenience = true;
                                    setState(() {});
                                  } else {
                                    FFAppState().switchConvenience = false;
                                    setState(() {});
                                  }
                                },
                                title: Text(
                                  '편의시설',
                                  style: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .titleMediumFamily,
                                        letterSpacing: 0.0,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .titleMediumFamily),
                                      ),
                                ),
                                subtitle: Text(
                                  FFAppState().StringPriorityConvenience,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodyMediumFamily,
                                        letterSpacing: 0.0,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily),
                                      ),
                                ),
                                tileColor: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                activeColor:
                                    FlutterFlowTheme.of(context).primary,
                                activeTrackColor: Color(0xFF392BBA),
                                dense: false,
                                controlAffinity:
                                    ListTileControlAffinity.trailing,
                                contentPadding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 8.0, 0.0, 8.0),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Stack(
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: wrapWithModel(
                                    model: _model.amenitityIndicatorModel12,
                                    updateCallback: () => setState(() {}),
                                    child: AmenitityIndicatorWidget(
                                      icon: Icon(
                                        Icons.voice_over_off,
                                        color: FlutterFlowTheme.of(context)
                                            .gray600,
                                      ),
                                      background: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderColor:
                                          FlutterFlowTheme.of(context).lineGray,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Expanded(
                              child: SwitchListTile.adaptive(
                                value: _model.amenityPoolValue4 ??=
                                    FFAppState().switchSoundproofing,
                                onChanged: (newValue) async {
                                  setState(() =>
                                      _model.amenityPoolValue4 = newValue!);
                                  if (newValue!) {
                                    FFAppState().switchSoundproofing = true;
                                    setState(() {});
                                  } else {
                                    FFAppState().switchSoundproofing = false;
                                    setState(() {});
                                  }
                                },
                                title: Text(
                                  '방음',
                                  style: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .titleMediumFamily,
                                        letterSpacing: 0.0,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .titleMediumFamily),
                                      ),
                                ),
                                subtitle: Text(
                                  FFAppState().StringPrioritySoundProofing,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodyMediumFamily,
                                        letterSpacing: 0.0,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily),
                                      ),
                                ),
                                tileColor: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                activeColor:
                                    FlutterFlowTheme.of(context).primary,
                                activeTrackColor: Color(0xFF392BBA),
                                dense: false,
                                controlAffinity:
                                    ListTileControlAffinity.trailing,
                                contentPadding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 8.0, 0.0, 8.0),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Stack(
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: wrapWithModel(
                                    model: _model.amenitityIndicatorModel13,
                                    updateCallback: () => setState(() {}),
                                    child: AmenitityIndicatorWidget(
                                      icon: Icon(
                                        Icons.local_parking,
                                        color: FlutterFlowTheme.of(context)
                                            .gray600,
                                      ),
                                      background: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderColor:
                                          FlutterFlowTheme.of(context).lineGray,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Expanded(
                              child: SwitchListTile.adaptive(
                                value: _model.amenityPoolValue5 ??=
                                    FFAppState().switchParkingArea,
                                onChanged: (newValue) async {
                                  setState(() =>
                                      _model.amenityPoolValue5 = newValue!);
                                  if (newValue!) {
                                    FFAppState().switchParkingArea = true;
                                    setState(() {});
                                  } else {
                                    FFAppState().switchParkingArea = false;
                                    setState(() {});
                                  }
                                },
                                title: Text(
                                  '주차공간',
                                  style: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .titleMediumFamily,
                                        letterSpacing: 0.0,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .titleMediumFamily),
                                      ),
                                ),
                                subtitle: Text(
                                  FFAppState().StringPriorityParkingArea,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodyMediumFamily,
                                        letterSpacing: 0.0,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily),
                                      ),
                                ),
                                tileColor: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                activeColor:
                                    FlutterFlowTheme.of(context).primary,
                                activeTrackColor: Color(0xFF392BBA),
                                dense: false,
                                controlAffinity:
                                    ListTileControlAffinity.trailing,
                                contentPadding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 8.0, 0.0, 8.0),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 12.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Stack(
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: wrapWithModel(
                                      model: _model.amenitityIndicatorModel14,
                                      updateCallback: () => setState(() {}),
                                      child: AmenitityIndicatorWidget(
                                        icon: Icon(
                                          Icons.smoking_rooms,
                                          color: FlutterFlowTheme.of(context)
                                              .gray600,
                                        ),
                                        background: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        borderColor:
                                            FlutterFlowTheme.of(context)
                                                .lineGray,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Expanded(
                                child: SwitchListTile.adaptive(
                                  value: _model.amenityPoolValue6 ??=
                                      FFAppState().switchSmokingArea,
                                  onChanged: (newValue) async {
                                    setState(() =>
                                        _model.amenityPoolValue6 = newValue!);
                                    if (newValue!) {
                                      FFAppState().switchSmokingArea = true;
                                      setState(() {});
                                    } else {
                                      FFAppState().switchSmokingArea = false;
                                      setState(() {});
                                    }
                                  },
                                  title: Text(
                                    '흡연 구역',
                                    style: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .titleMediumFamily,
                                          letterSpacing: 0.0,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterFlowTheme.of(context)
                                                      .titleMediumFamily),
                                        ),
                                  ),
                                  subtitle: Text(
                                    FFAppState().StringPrioritySmokingArea,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily,
                                          letterSpacing: 0.0,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily),
                                        ),
                                  ),
                                  tileColor: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  activeColor:
                                      FlutterFlowTheme.of(context).primary,
                                  activeTrackColor: Color(0xFF392BBA),
                                  dense: false,
                                  controlAffinity:
                                      ListTileControlAffinity.trailing,
                                  contentPadding:
                                      EdgeInsetsDirectional.fromSTEB(
                                          16.0, 8.0, 0.0, 8.0),
                                ),
                              ),
                            ],
                          ),
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
