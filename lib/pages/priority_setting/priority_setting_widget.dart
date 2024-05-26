import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'priority_setting_model.dart';
export 'priority_setting_model.dart';

class PrioritySettingWidget extends StatefulWidget {
  const PrioritySettingWidget({super.key});

  @override
  State<PrioritySettingWidget> createState() => _PrioritySettingWidgetState();
}

class _PrioritySettingWidgetState extends State<PrioritySettingWidget> {
  late PrioritySettingModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PrioritySettingModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          automaticallyImplyLeading: false,
          title: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
            child: Text(
              '우선순위 설정',
              style: FlutterFlowTheme.of(context).displaySmall.override(
                    fontFamily: FlutterFlowTheme.of(context).displaySmallFamily,
                    letterSpacing: 0.0,
                    useGoogleFonts: GoogleFonts.asMap().containsKey(
                        FlutterFlowTheme.of(context).displaySmallFamily),
                  ),
            ),
          ),
          actions: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 16.0, 0.0),
              child: FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30.0,
                borderWidth: 1.0,
                buttonSize: 50.0,
                fillColor: FlutterFlowTheme.of(context).primaryBackground,
                icon: Icon(
                  Icons.close_rounded,
                  color: FlutterFlowTheme.of(context).secondaryText,
                  size: 30.0,
                ),
                onPressed: () async {
                  context.safePop();
                },
              ),
            ),
          ],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Divider(
                thickness: 1.0,
                color: FlutterFlowTheme.of(context).accent4,
              ),
              Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(12.0, 20.0, 12.0, 15.0),
                  child: Text(
                    '아이콘 터치를 통해 방을 구할 때의\n주요한 고려사항을 설정해보세요.\n사용자 맞춤으로 방을 평가해줍니다.',
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).bodyMediumFamily,
                          fontSize: 16.0,
                          letterSpacing: 0.0,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).bodyMediumFamily),
                        ),
                  ),
                ),
              ),
              Divider(
                thickness: 1.0,
                color: FlutterFlowTheme.of(context).accent4,
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 5.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        if (FFAppState().PriorityPrice == 3) {
                          setState(() {
                            FFAppState().ColorIconPrice =
                                FlutterFlowTheme.of(context).prioritySecond;
                          });
                          setState(() {
                            FFAppState().StringPriorityPrice = '중요';
                          });
                          setState(() {
                            FFAppState().PriorityPrice = 2;
                          });
                        } else if (FFAppState().PriorityPrice == 1) {
                          setState(() {
                            FFAppState().ColorIconPrice =
                                FlutterFlowTheme.of(context).secondaryText;
                          });
                          setState(() {
                            FFAppState().StringPriorityPrice = '중요하지 않음';
                          });
                          setState(() {
                            FFAppState().PriorityPrice = 4;
                          });
                        } else if (FFAppState().PriorityPrice == 2) {
                          setState(() {
                            FFAppState().ColorIconPrice =
                                FlutterFlowTheme.of(context).prioirtyFirst;
                          });
                          setState(() {
                            FFAppState().StringPriorityPrice = '매우 중요';
                          });
                          setState(() {
                            FFAppState().PriorityPrice = 1;
                          });
                        } else {
                          setState(() {
                            FFAppState().ColorIconPrice =
                                FlutterFlowTheme.of(context).priorityThrid;
                          });
                          setState(() {
                            FFAppState().StringPriorityPrice = '중요하지 않음';
                          });
                          setState(() {
                            FFAppState().PriorityPrice = 3;
                          });
                        }
                      },
                      child: Container(
                        width: 150.0,
                        height: 60.0,
                        decoration: BoxDecoration(),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            FlutterFlowIconButton(
                              buttonSize: 60.0,
                              icon: Icon(
                                Icons.monetization_on,
                                color: FlutterFlowTheme.of(context).primary,
                                size: 30.0,
                              ),
                              onPressed: () {
                                print('IconButton pressed ...');
                              },
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '가격',
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
                                Text(
                                  FFAppState().StringPriorityPrice,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodyMediumFamily,
                                        color: FFAppState().ColorIconPrice,
                                        letterSpacing: 0.0,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily),
                                      ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        if (FFAppState().PriorityRoomSize == 3) {
                          FFAppState().ColorIconRoomSize =
                              FlutterFlowTheme.of(context).prioritySecond;
                          FFAppState().StringPriorityRoomSize = '중요';
                          setState(() {
                            FFAppState().PriorityRoomSize = 2;
                          });
                        } else if (FFAppState().PriorityRoomSize == 1) {
                          FFAppState().ColorIconRoomSize =
                              FlutterFlowTheme.of(context).secondaryText;
                          FFAppState().StringPriorityRoomSize = '중요하지 않음';
                          setState(() {
                            FFAppState().PriorityRoomSize = 4;
                          });
                        } else if (FFAppState().PriorityRoomSize == 2) {
                          FFAppState().ColorIconRoomSize =
                              FlutterFlowTheme.of(context).prioirtyFirst;
                          FFAppState().StringPriorityRoomSize = '매우 중요';
                          setState(() {
                            FFAppState().PriorityRoomSize = 1;
                          });
                        } else {
                          FFAppState().ColorIconRoomSize =
                              FlutterFlowTheme.of(context).priorityThrid;
                          FFAppState().StringPriorityRoomSize = '보통';
                          setState(() {
                            FFAppState().PriorityRoomSize = 3;
                          });
                        }
                      },
                      child: Container(
                        width: 150.0,
                        height: 60.0,
                        decoration: BoxDecoration(),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            FlutterFlowIconButton(
                              buttonSize: 60.0,
                              icon: Icon(
                                Icons.photo_size_select_small_outlined,
                                color: FlutterFlowTheme.of(context).primary,
                                size: 30.0,
                              ),
                              onPressed: () {
                                print('IconButton pressed ...');
                              },
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '방 크기 및 구조',
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
                                Text(
                                  FFAppState().StringPriorityRoomSize,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodyMediumFamily,
                                        color: FFAppState().ColorIconRoomSize,
                                        letterSpacing: 0.0,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily),
                                      ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 5.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        if (FFAppState().PriorityWaterDrainage == 3) {
                          FFAppState().ColorIconWaterDrainage =
                              FlutterFlowTheme.of(context).prioritySecond;
                          FFAppState().StringPriorityWaterDrainage = '중요';
                          setState(() {
                            FFAppState().PriorityWaterDrainage = 2;
                          });
                        } else if (FFAppState().PriorityWaterDrainage == 1) {
                          FFAppState().ColorIconWaterDrainage =
                              FlutterFlowTheme.of(context).secondaryText;
                          FFAppState().StringPriorityWaterDrainage = '중요하지 않음';
                          setState(() {
                            FFAppState().PriorityWaterDrainage = 4;
                          });
                        } else if (FFAppState().PriorityWaterDrainage == 2) {
                          FFAppState().ColorIconWaterDrainage =
                              FlutterFlowTheme.of(context).prioirtyFirst;
                          FFAppState().StringPriorityWaterDrainage = '매우 중요';
                          setState(() {
                            FFAppState().PriorityWaterDrainage = 1;
                          });
                        } else {
                          FFAppState().ColorIconWaterDrainage =
                              FlutterFlowTheme.of(context).priorityThrid;
                          FFAppState().StringPriorityWaterDrainage = '보통';
                          setState(() {
                            FFAppState().PriorityWaterDrainage = 3;
                          });
                        }
                      },
                      child: Container(
                        width: 150.0,
                        height: 60.0,
                        decoration: BoxDecoration(),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            FlutterFlowIconButton(
                              buttonSize: 60.0,
                              icon: Icon(
                                Icons.water_drop,
                                color: FlutterFlowTheme.of(context).primary,
                                size: 30.0,
                              ),
                              onPressed: () {
                                print('IconButton pressed ...');
                              },
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '수도 및 배수',
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
                                Text(
                                  FFAppState().StringPriorityWaterDrainage,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodyMediumFamily,
                                        color:
                                            FFAppState().ColorIconWaterDrainage,
                                        letterSpacing: 0.0,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily),
                                      ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        if (FFAppState().PriorityBathroom == 3) {
                          FFAppState().ColorIconBathroom =
                              FlutterFlowTheme.of(context).prioritySecond;
                          FFAppState().StringPriorityBathroom = '중요';
                          setState(() {
                            FFAppState().PriorityBathroom = 2;
                          });
                        } else if (FFAppState().PriorityBathroom == 2) {
                          FFAppState().ColorIconBathroom =
                              FlutterFlowTheme.of(context).prioirtyFirst;
                          FFAppState().StringPriorityBathroom = '매우 중요';
                          setState(() {
                            FFAppState().PriorityBathroom = 1;
                          });
                        } else if (FFAppState().PriorityBathroom == 1) {
                          FFAppState().ColorIconBathroom =
                              FlutterFlowTheme.of(context).secondaryText;
                          FFAppState().StringPriorityBathroom = '중요하지 않음';
                          setState(() {
                            FFAppState().PriorityBathroom = 4;
                          });
                        } else {
                          FFAppState().ColorIconBathroom =
                              FlutterFlowTheme.of(context).priorityThrid;
                          FFAppState().StringPriorityBathroom = '보통';
                          setState(() {
                            FFAppState().PriorityBathroom = 3;
                          });
                        }
                      },
                      child: Container(
                        width: 150.0,
                        height: 60.0,
                        decoration: BoxDecoration(),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            FlutterFlowIconButton(
                              buttonSize: 60.0,
                              icon: Icon(
                                Icons.bathtub_rounded,
                                color: FlutterFlowTheme.of(context).primary,
                                size: 30.0,
                              ),
                              onPressed: () {
                                print('IconButton pressed ...');
                              },
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '화장실',
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
                                Text(
                                  FFAppState().StringPriorityBathroom,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodyMediumFamily,
                                        color: FFAppState().ColorIconBathroom,
                                        letterSpacing: 0.0,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily),
                                      ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 5.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        if (FFAppState().PriorityBasicOption == 3) {
                          FFAppState().ColorIconBasicOption =
                              FlutterFlowTheme.of(context).prioritySecond;
                          FFAppState().StringPriorityBasicOption = '중요';
                          setState(() {
                            FFAppState().PriorityBasicOption = 2;
                          });
                        } else if (FFAppState().PriorityBasicOption == 2) {
                          FFAppState().ColorIconBasicOption =
                              FlutterFlowTheme.of(context).prioirtyFirst;
                          FFAppState().StringPriorityBasicOption = '매우 중요';
                          setState(() {
                            FFAppState().PriorityBasicOption = 1;
                          });
                        } else if (FFAppState().PriorityBasicOption == 1) {
                          FFAppState().ColorIconBasicOption =
                              FlutterFlowTheme.of(context).secondaryText;
                          FFAppState().StringPriorityBasicOption = '중요하지 않음';
                          setState(() {
                            FFAppState().PriorityBasicOption = 4;
                          });
                        } else {
                          FFAppState().ColorIconBasicOption =
                              FlutterFlowTheme.of(context).priorityThrid;
                          FFAppState().StringPriorityBasicOption = '보통';
                          setState(() {
                            FFAppState().PriorityBasicOption = 3;
                          });
                        }
                      },
                      child: Container(
                        width: 150.0,
                        height: 60.0,
                        decoration: BoxDecoration(),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            FlutterFlowIconButton(
                              borderColor: Colors.transparent,
                              borderRadius: 30.0,
                              buttonSize: 60.0,
                              icon: Icon(
                                Icons.bed,
                                color: FlutterFlowTheme.of(context).primary,
                                size: 30.0,
                              ),
                              onPressed: () {
                                print('IconButton pressed ...');
                              },
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '기본 옵션',
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
                                Text(
                                  FFAppState().StringPriorityBasicOption,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodyMediumFamily,
                                        color:
                                            FFAppState().ColorIconBasicOption,
                                        letterSpacing: 0.0,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily),
                                      ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        if (FFAppState().PriorityGarbageDisposal == 3) {
                          FFAppState().ColorIconGarbageDisposal =
                              FlutterFlowTheme.of(context).prioritySecond;
                          FFAppState().StringPriorityGarbageDisPosal = '중요';
                          setState(() {
                            FFAppState().PriorityGarbageDisposal = 2;
                          });
                        } else if (FFAppState().PriorityGarbageDisposal == 2) {
                          FFAppState().ColorIconGarbageDisposal =
                              FlutterFlowTheme.of(context).prioirtyFirst;
                          FFAppState().StringPriorityGarbageDisPosal = '매우 중요';
                          setState(() {
                            FFAppState().PriorityGarbageDisposal = 1;
                          });
                        } else if (FFAppState().PriorityGarbageDisposal == 1) {
                          FFAppState().ColorIconGarbageDisposal =
                              FlutterFlowTheme.of(context).secondaryText;
                          FFAppState().StringPriorityGarbageDisPosal =
                              '중요하지 않음';
                          setState(() {
                            FFAppState().PriorityGarbageDisposal = 4;
                          });
                        } else {
                          FFAppState().ColorIconGarbageDisposal =
                              FlutterFlowTheme.of(context).priorityThrid;
                          FFAppState().StringPriorityGarbageDisPosal = '보통';
                          setState(() {
                            FFAppState().PriorityGarbageDisposal = 3;
                          });
                        }
                      },
                      child: Container(
                        width: 150.0,
                        height: 60.0,
                        decoration: BoxDecoration(),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            FlutterFlowIconButton(
                              borderColor: Colors.transparent,
                              borderRadius: 30.0,
                              buttonSize: 60.0,
                              icon: Icon(
                                Icons.restore_from_trash,
                                color: FlutterFlowTheme.of(context).primary,
                                size: 30.0,
                              ),
                              onPressed: () {
                                print('IconButton pressed ...');
                              },
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '쓰레기 처리',
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
                                Text(
                                  FFAppState().StringPriorityGarbageDisPosal,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodyMediumFamily,
                                        color: FFAppState()
                                            .ColorIconGarbageDisposal,
                                        letterSpacing: 0.0,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily),
                                      ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 5.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        if (FFAppState().PriorityFloor == 3) {
                          FFAppState().ColorIconFloor =
                              FlutterFlowTheme.of(context).prioritySecond;
                          FFAppState().StringPriorityFloor = '중요';
                          setState(() {
                            FFAppState().PriorityFloor = 2;
                          });
                        } else if (FFAppState().PriorityFloor == 2) {
                          FFAppState().ColorIconFloor =
                              FlutterFlowTheme.of(context).prioirtyFirst;
                          FFAppState().StringPriorityFloor = '매우 중요';
                          setState(() {
                            FFAppState().PriorityFloor = 1;
                          });
                        } else if (FFAppState().PriorityFloor == 1) {
                          FFAppState().ColorIconFloor =
                              FlutterFlowTheme.of(context).secondaryText;
                          FFAppState().StringPriorityFloor = '중요하지 않음';
                          setState(() {
                            FFAppState().PriorityFloor = 4;
                          });
                        } else {
                          FFAppState().ColorIconFloor =
                              FlutterFlowTheme.of(context).priorityThrid;
                          FFAppState().StringPriorityFloor = '보통';
                          setState(() {
                            FFAppState().PriorityFloor = 3;
                          });
                        }
                      },
                      child: Container(
                        width: 150.0,
                        height: 60.0,
                        decoration: BoxDecoration(),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            FlutterFlowIconButton(
                              borderColor: Colors.transparent,
                              borderRadius: 30.0,
                              buttonSize: 60.0,
                              icon: Icon(
                                Icons.apartment_rounded,
                                color: FlutterFlowTheme.of(context).primary,
                                size: 30.0,
                              ),
                              onPressed: () {
                                print('IconButton pressed ...');
                              },
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '층수',
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
                                Text(
                                  FFAppState().StringPriorityFloor,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodyMediumFamily,
                                        color: FFAppState().ColorIconFloor,
                                        letterSpacing: 0.0,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily),
                                      ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        if (FFAppState().PrioritySecurity == 3) {
                          FFAppState().ColoriconSecurity =
                              FlutterFlowTheme.of(context).prioritySecond;
                          FFAppState().StringPrioritySecurity = '중요';
                          setState(() {
                            FFAppState().PrioritySecurity = 2;
                          });
                        } else if (FFAppState().PrioritySecurity == 2) {
                          FFAppState().ColoriconSecurity =
                              FlutterFlowTheme.of(context).prioirtyFirst;
                          FFAppState().StringPrioritySecurity = '매우 중요';
                          setState(() {
                            FFAppState().PrioritySecurity = 1;
                          });
                        } else if (FFAppState().PrioritySecurity == 1) {
                          FFAppState().ColoriconSecurity =
                              FlutterFlowTheme.of(context).secondaryText;
                          FFAppState().StringPrioritySecurity = '중요하지 않음';
                          setState(() {
                            FFAppState().PrioritySecurity = 4;
                          });
                        } else {
                          FFAppState().ColoriconSecurity =
                              FlutterFlowTheme.of(context).priorityThrid;
                          FFAppState().StringPrioritySecurity = '보통';
                          setState(() {
                            FFAppState().PrioritySecurity = 3;
                          });
                        }
                      },
                      child: Container(
                        width: 150.0,
                        height: 60.0,
                        decoration: BoxDecoration(),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            FlutterFlowIconButton(
                              borderColor: Colors.transparent,
                              borderRadius: 30.0,
                              buttonSize: 60.0,
                              icon: Icon(
                                Icons.security,
                                color: FlutterFlowTheme.of(context).primary,
                                size: 30.0,
                              ),
                              onPressed: () {
                                print('IconButton pressed ...');
                              },
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '보안',
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
                                Text(
                                  FFAppState().StringPrioritySecurity,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodyMediumFamily,
                                        color: FFAppState().ColoriconSecurity,
                                        letterSpacing: 0.0,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily),
                                      ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 5.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        if (FFAppState().PriorityWindows == 3) {
                          FFAppState().ColorIconWindows =
                              FlutterFlowTheme.of(context).prioritySecond;
                          FFAppState().StringPriorityWindows = '중요';
                          setState(() {
                            FFAppState().PriorityWindows = 2;
                          });
                        } else if (FFAppState().PriorityWindows == 2) {
                          FFAppState().ColorIconWindows =
                              FlutterFlowTheme.of(context).prioirtyFirst;
                          FFAppState().StringPriorityWindows = '매우 중요';
                          setState(() {
                            FFAppState().PriorityWindows = 1;
                          });
                        } else if (FFAppState().PrioritySecurity == 1) {
                          FFAppState().ColorIconWindows =
                              FlutterFlowTheme.of(context).secondaryText;
                          FFAppState().StringPriorityWindows = '중요하지 않음';
                          setState(() {
                            FFAppState().PriorityWindows = 4;
                          });
                        } else {
                          FFAppState().ColorIconWindows =
                              FlutterFlowTheme.of(context).priorityThrid;
                          FFAppState().StringPriorityWindows = '보통';
                          setState(() {
                            FFAppState().PriorityWindows = 3;
                          });
                        }
                      },
                      child: Container(
                        width: 150.0,
                        height: 60.0,
                        decoration: BoxDecoration(),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            FlutterFlowIconButton(
                              borderColor: Colors.transparent,
                              borderRadius: 30.0,
                              buttonSize: 60.0,
                              icon: Icon(
                                Icons.window_outlined,
                                color: FlutterFlowTheme.of(context).primary,
                                size: 30.0,
                              ),
                              onPressed: () {
                                print('IconButton pressed ...');
                              },
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '창문 및 조향',
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
                                Text(
                                  FFAppState().StringPriorityWindows,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodyMediumFamily,
                                        color: FFAppState().ColorIconWindows,
                                        letterSpacing: 0.0,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily),
                                      ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        if (FFAppState().PriorityCleaness == 3) {
                          FFAppState().ColorIconCleanliness =
                              FlutterFlowTheme.of(context).prioritySecond;
                          FFAppState().StringPriorityCleaness = '중요';
                          setState(() {
                            FFAppState().PriorityCleaness = 2;
                          });
                        } else if (FFAppState().PriorityCleaness == 2) {
                          FFAppState().ColorIconCleanliness =
                              FlutterFlowTheme.of(context).prioirtyFirst;
                          FFAppState().StringPriorityCleaness = '매우 중요';
                          setState(() {
                            FFAppState().PriorityCleaness = 1;
                          });
                        } else if (FFAppState().PriorityCleaness == 1) {
                          FFAppState().ColorIconCleanliness =
                              FlutterFlowTheme.of(context).secondaryText;
                          FFAppState().StringPriorityCleaness = '중요하지 않음';
                          setState(() {
                            FFAppState().PriorityCleaness = 4;
                          });
                        } else {
                          FFAppState().ColorIconCleanliness =
                              FlutterFlowTheme.of(context).priorityThrid;
                          FFAppState().StringPriorityCleaness = '보통';
                          setState(() {
                            FFAppState().PriorityCleaness = 3;
                          });
                        }
                      },
                      child: Container(
                        width: 150.0,
                        height: 60.0,
                        decoration: BoxDecoration(),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            FlutterFlowIconButton(
                              borderColor: Colors.transparent,
                              borderRadius: 30.0,
                              buttonSize: 60.0,
                              icon: Icon(
                                Icons.cleaning_services_outlined,
                                color: FlutterFlowTheme.of(context).primary,
                                size: 30.0,
                              ),
                              onPressed: () {
                                print('IconButton pressed ...');
                              },
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '청결도',
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
                                Text(
                                  FFAppState().StringPriorityCleaness,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodyMediumFamily,
                                        color:
                                            FFAppState().ColorIconCleanliness,
                                        letterSpacing: 0.0,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily),
                                      ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 5.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        if (FFAppState().PriorityConvenience == 3) {
                          FFAppState().ColorIconConvenience =
                              FlutterFlowTheme.of(context).prioritySecond;
                          FFAppState().StringPriorityConvenience = '중요';
                          setState(() {
                            FFAppState().PriorityConvenience = 2;
                          });
                        } else if (FFAppState().PriorityConvenience == 2) {
                          FFAppState().ColorIconConvenience =
                              FlutterFlowTheme.of(context).prioirtyFirst;
                          FFAppState().StringPriorityConvenience = '매우 중요';
                          setState(() {
                            FFAppState().PriorityConvenience = 1;
                          });
                        } else if (FFAppState().PriorityConvenience == 1) {
                          FFAppState().ColorIconConvenience =
                              FlutterFlowTheme.of(context).secondaryText;
                          FFAppState().StringPriorityConvenience = '중요하지 않음';
                          setState(() {
                            FFAppState().PriorityConvenience = 4;
                          });
                        } else {
                          FFAppState().ColorIconConvenience =
                              FlutterFlowTheme.of(context).priorityThrid;
                          FFAppState().StringPriorityConvenience = '보통';
                          setState(() {
                            FFAppState().PriorityConvenience = 3;
                          });
                        }
                      },
                      child: Container(
                        width: 150.0,
                        height: 60.0,
                        decoration: BoxDecoration(),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            FlutterFlowIconButton(
                              borderColor: Colors.transparent,
                              borderRadius: 30.0,
                              buttonSize: 60.0,
                              icon: Icon(
                                Icons.local_convenience_store_rounded,
                                color: FlutterFlowTheme.of(context).primary,
                                size: 30.0,
                              ),
                              onPressed: () {
                                print('IconButton pressed ...');
                              },
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '편의시설',
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
                                Text(
                                  FFAppState().StringPriorityConvenience,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodyMediumFamily,
                                        color:
                                            FFAppState().ColorIconConvenience,
                                        letterSpacing: 0.0,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily),
                                      ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        if (FFAppState().PrioritySoundProofing == 3) {
                          FFAppState().ColorIconSoundProofing =
                              FlutterFlowTheme.of(context).prioritySecond;
                          FFAppState().StringPrioritySoundProofing = '중요';
                          setState(() {
                            FFAppState().PrioritySoundProofing = 2;
                          });
                        } else if (FFAppState().PrioritySoundProofing == 2) {
                          FFAppState().ColorIconSoundProofing =
                              FlutterFlowTheme.of(context).prioirtyFirst;
                          FFAppState().StringPrioritySoundProofing = '매우 중요';
                          setState(() {
                            FFAppState().PrioritySoundProofing = 1;
                          });
                        } else if (FFAppState().PrioritySoundProofing == 1) {
                          FFAppState().ColorIconSoundProofing =
                              FlutterFlowTheme.of(context).secondaryText;
                          FFAppState().StringPrioritySoundProofing = '중요하지 않음';
                          setState(() {
                            FFAppState().PrioritySoundProofing = 4;
                          });
                        } else {
                          FFAppState().ColorIconSoundProofing =
                              FlutterFlowTheme.of(context).priorityThrid;
                          FFAppState().StringPrioritySoundProofing = '보통';
                          setState(() {
                            FFAppState().PrioritySoundProofing = 3;
                          });
                        }
                      },
                      child: Container(
                        width: 150.0,
                        height: 60.0,
                        decoration: BoxDecoration(),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            FlutterFlowIconButton(
                              borderColor: Colors.transparent,
                              borderRadius: 30.0,
                              buttonSize: 60.0,
                              icon: Icon(
                                Icons.voice_over_off,
                                color: FlutterFlowTheme.of(context).primary,
                                size: 30.0,
                              ),
                              onPressed: () {
                                print('IconButton pressed ...');
                              },
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '방음',
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
                                Text(
                                  FFAppState().StringPrioritySoundProofing,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodyMediumFamily,
                                        color:
                                            FFAppState().ColorIconSoundProofing,
                                        letterSpacing: 0.0,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily),
                                      ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 5.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        if (FFAppState().PriorityParkingArea == 3) {
                          FFAppState().ColorIconParkingArea =
                              FlutterFlowTheme.of(context).prioritySecond;
                          FFAppState().StringPriorityParkingArea = '중요';
                          setState(() {
                            FFAppState().PriorityParkingArea = 2;
                          });
                        } else if (FFAppState().PriorityParkingArea == 2) {
                          FFAppState().ColorIconParkingArea =
                              FlutterFlowTheme.of(context).prioirtyFirst;
                          FFAppState().StringPriorityParkingArea = '매우 중요';
                          setState(() {
                            FFAppState().PriorityParkingArea = 1;
                          });
                        } else if (FFAppState().PriorityParkingArea == 1) {
                          FFAppState().ColorIconParkingArea =
                              FlutterFlowTheme.of(context).secondaryText;
                          FFAppState().StringPriorityParkingArea = '중요하지 않음';
                          setState(() {
                            FFAppState().PriorityParkingArea = 4;
                          });
                        } else {
                          FFAppState().ColorIconParkingArea =
                              FlutterFlowTheme.of(context).priorityThrid;
                          FFAppState().StringPriorityParkingArea = '보통';
                          setState(() {
                            FFAppState().PriorityParkingArea = 3;
                          });
                        }
                      },
                      child: Container(
                        width: 150.0,
                        height: 60.0,
                        decoration: BoxDecoration(),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            FlutterFlowIconButton(
                              borderColor: Colors.transparent,
                              borderRadius: 30.0,
                              buttonSize: 60.0,
                              icon: Icon(
                                Icons.local_parking,
                                color: FlutterFlowTheme.of(context).primary,
                                size: 30.0,
                              ),
                              onPressed: () {
                                print('IconButton pressed ...');
                              },
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '주차공간',
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
                                Text(
                                  FFAppState().StringPriorityParkingArea,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodyMediumFamily,
                                        color:
                                            FFAppState().ColorIconParkingArea,
                                        letterSpacing: 0.0,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily),
                                      ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        if (FFAppState().PrioritySmokingArea == 3) {
                          FFAppState().ColorIconSmokingArea =
                              FlutterFlowTheme.of(context).prioritySecond;
                          FFAppState().StringPrioritySmokingArea = '중요';
                          setState(() {
                            FFAppState().PrioritySmokingArea = 2;
                          });
                        } else if (FFAppState().PrioritySmokingArea == 2) {
                          FFAppState().ColorIconSmokingArea =
                              FlutterFlowTheme.of(context).prioirtyFirst;
                          FFAppState().StringPrioritySmokingArea = '매우 중요';
                          setState(() {
                            FFAppState().PrioritySmokingArea = 1;
                          });
                        } else if (FFAppState().PrioritySmokingArea == 1) {
                          FFAppState().ColorIconSmokingArea =
                              FlutterFlowTheme.of(context).secondaryText;
                          FFAppState().StringPrioritySmokingArea = '중요하지 않음';
                          setState(() {
                            FFAppState().PrioritySmokingArea = 4;
                          });
                        } else {
                          FFAppState().ColorIconSmokingArea =
                              FlutterFlowTheme.of(context).priorityThrid;
                          FFAppState().StringPrioritySmokingArea = '보통';
                          setState(() {
                            FFAppState().PrioritySmokingArea = 3;
                          });
                        }
                      },
                      child: Container(
                        width: 150.0,
                        height: 60.0,
                        decoration: BoxDecoration(),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            FlutterFlowIconButton(
                              borderColor: Colors.transparent,
                              borderRadius: 30.0,
                              buttonSize: 60.0,
                              icon: Icon(
                                Icons.smoking_rooms,
                                color: FlutterFlowTheme.of(context).primary,
                                size: 30.0,
                              ),
                              onPressed: () {
                                print('IconButton pressed ...');
                              },
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '흡연 구역',
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
                                Text(
                                  FFAppState().StringPrioritySmokingArea,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodyMediumFamily,
                                        color:
                                            FFAppState().ColorIconSmokingArea,
                                        letterSpacing: 0.0,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily),
                                      ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                child: FFButtonWidget(
                  onPressed: () async {
                    context.pushNamed('homePage_MAIN');
                  },
                  text: '선택 완료',
                  options: FFButtonOptions(
                    width: 200.0,
                    height: 50.0,
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).primary,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).titleSmallFamily,
                          color: Colors.white,
                          letterSpacing: 0.0,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).titleSmallFamily),
                        ),
                    elevation: 2.0,
                    borderRadius: BorderRadius.circular(12.0),
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
