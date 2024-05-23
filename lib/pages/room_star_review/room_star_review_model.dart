import '/backend/backend.dart';
import '/components/amenitity_indicator/amenitity_indicator_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'room_star_review_widget.dart' show RoomStarReviewWidget;
import 'package:collection/collection.dart';
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

  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController1;

  // Model for amenitityIndicator component.
  late AmenitityIndicatorModel amenitityIndicatorModel1;
  // State field(s) for JeonsaeBar widget.
  double? jeonsaeBarValue;
  List<RoomPriceRecord>? jeonsaeBarPreviousSnapshot;
  // State field(s) for DepositBar widget.
  double? depositBarValue;
  // State field(s) for mangagmentbar widget.
  double? mangagmentbarValue;
  // State field(s) for ParkingBar widget.
  double? parkingBarValue;
  // State field(s) for InternetFeeBar widget.
  double? internetFeeBarValue;
  // State field(s) for ElectricFeeBar widget.
  double? electricFeeBarValue;
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
