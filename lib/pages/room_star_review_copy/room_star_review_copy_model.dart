import '/backend/backend.dart';
import '/components/amenitity_indicator/amenitity_indicator_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'room_star_review_copy_widget.dart' show RoomStarReviewCopyWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class RoomStarReviewCopyModel
    extends FlutterFlowModel<RoomStarReviewCopyWidget> {
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

  // Model for amenitityIndicator component.
  late AmenitityIndicatorModel amenitityIndicatorModel1;
  // Model for amenitityIndicator component.
  late AmenitityIndicatorModel amenitityIndicatorModel2;
  // Model for amenitityIndicator component.
  late AmenitityIndicatorModel amenitityIndicatorModel3;
  // Model for amenitityIndicator component.
  late AmenitityIndicatorModel amenitityIndicatorModel4;
  // Model for amenitityIndicator component.
  late AmenitityIndicatorModel amenitityIndicatorModel5;
  // Model for amenitityIndicator component.
  late AmenitityIndicatorModel amenitityIndicatorModel6;
  // Model for amenitityIndicator component.
  late AmenitityIndicatorModel amenitityIndicatorModel7;
  // Model for amenitityIndicator component.
  late AmenitityIndicatorModel amenitityIndicatorModel8;
  // Model for amenitityIndicator component.
  late AmenitityIndicatorModel amenitityIndicatorModel9;
  // Model for amenitityIndicator component.
  late AmenitityIndicatorModel amenitityIndicatorModel10;
  // Model for amenitityIndicator component.
  late AmenitityIndicatorModel amenitityIndicatorModel11;
  // Model for amenitityIndicator component.
  late AmenitityIndicatorModel amenitityIndicatorModel12;
  // Model for amenitityIndicator component.
  late AmenitityIndicatorModel amenitityIndicatorModel13;
  // Model for amenitityIndicator component.
  late AmenitityIndicatorModel amenitityIndicatorModel14;

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
    amenitityIndicatorModel1.dispose();
    amenitityIndicatorModel2.dispose();
    amenitityIndicatorModel3.dispose();
    amenitityIndicatorModel4.dispose();
    amenitityIndicatorModel5.dispose();
    amenitityIndicatorModel6.dispose();
    amenitityIndicatorModel7.dispose();
    amenitityIndicatorModel8.dispose();
    amenitityIndicatorModel9.dispose();
    amenitityIndicatorModel10.dispose();
    amenitityIndicatorModel11.dispose();
    amenitityIndicatorModel12.dispose();
    amenitityIndicatorModel13.dispose();
    amenitityIndicatorModel14.dispose();
  }
}
