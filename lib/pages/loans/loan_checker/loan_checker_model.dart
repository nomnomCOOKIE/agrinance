import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/navbar/nav_bar/nav_bar_widget.dart';
import '/index.dart';
import 'loan_checker_widget.dart' show LoanCheckerWidget;
import 'package:flutter/material.dart';

class LoanCheckerModel extends FlutterFlowModel<LoanCheckerWidget> {
  ///  Local state fields for this page.

  bool navbarvisible = false;

  ///  State fields for stateful widgets in this page.

  // Model for navBar component.
  late NavBarModel navBarModel;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController1;
  String? get choiceChipsValue1 =>
      choiceChipsValueController1?.value?.firstOrNull;
  set choiceChipsValue1(String? val) =>
      choiceChipsValueController1?.value = val != null ? [val] : [];
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController2;
  String? get choiceChipsValue2 =>
      choiceChipsValueController2?.value?.firstOrNull;
  set choiceChipsValue2(String? val) =>
      choiceChipsValueController2?.value = val != null ? [val] : [];
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController3;
  String? get choiceChipsValue3 =>
      choiceChipsValueController3?.value?.firstOrNull;
  set choiceChipsValue3(String? val) =>
      choiceChipsValueController3?.value = val != null ? [val] : [];
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController4;
  String? get choiceChipsValue4 =>
      choiceChipsValueController4?.value?.firstOrNull;
  set choiceChipsValue4(String? val) =>
      choiceChipsValueController4?.value = val != null ? [val] : [];
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController5;
  String? get choiceChipsValue5 =>
      choiceChipsValueController5?.value?.firstOrNull;
  set choiceChipsValue5(String? val) =>
      choiceChipsValueController5?.value = val != null ? [val] : [];
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController6;
  String? get choiceChipsValue6 =>
      choiceChipsValueController6?.value?.firstOrNull;
  set choiceChipsValue6(String? val) =>
      choiceChipsValueController6?.value = val != null ? [val] : [];
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController7;
  String? get choiceChipsValue7 =>
      choiceChipsValueController7?.value?.firstOrNull;
  set choiceChipsValue7(String? val) =>
      choiceChipsValueController7?.value = val != null ? [val] : [];
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController8;
  String? get choiceChipsValue8 =>
      choiceChipsValueController8?.value?.firstOrNull;
  set choiceChipsValue8(String? val) =>
      choiceChipsValueController8?.value = val != null ? [val] : [];

  @override
  void initState(BuildContext context) {
    navBarModel = createModel(context, () => NavBarModel());
  }

  @override
  void dispose() {
    navBarModel.dispose();
  }
}
