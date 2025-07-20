import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'expense_record_add_widget.dart' show ExpenseRecordAddWidget;
import 'package:flutter/material.dart';

class ExpenseRecordAddModel extends FlutterFlowModel<ExpenseRecordAddWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for ExpenseType widget.
  FocusNode? expenseTypeFocusNode;
  TextEditingController? expenseTypeTextController;
  String? Function(BuildContext, String?)? expenseTypeTextControllerValidator;
  String? _expenseTypeTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Enter expense type is required';
    }

    return null;
  }

  // State field(s) for ExpenseCategory widget.
  String? expenseCategoryValue;
  FormFieldController<String>? expenseCategoryValueController;
  // State field(s) for UnitCost widget.
  FocusNode? unitCostFocusNode;
  TextEditingController? unitCostTextController;
  String? Function(BuildContext, String?)? unitCostTextControllerValidator;
  String? _unitCostTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Enter amount is required';
    }

    return null;
  }

  DateTime? datePicked;
  // Stores action output result for [Validate Form] action in Button widget.
  bool? validForm;

  @override
  void initState(BuildContext context) {
    expenseTypeTextControllerValidator = _expenseTypeTextControllerValidator;
    unitCostTextControllerValidator = _unitCostTextControllerValidator;
  }

  @override
  void dispose() {
    expenseTypeFocusNode?.dispose();
    expenseTypeTextController?.dispose();

    unitCostFocusNode?.dispose();
    unitCostTextController?.dispose();
  }
}
