import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'login_page_widget.dart' show LoginPageWidget;
import 'package:flutter/material.dart';

class LoginPageModel extends FlutterFlowModel<LoginPageWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for Email widget.
  final emailKey = GlobalKey();
  FocusNode? emailFocusNode;
  TextEditingController? emailTextController;
  String? emailSelectedOption;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
  // State field(s) for Pass widget.
  final passKey = GlobalKey();
  FocusNode? passFocusNode;
  TextEditingController? passTextController;
  String? passSelectedOption;
  late bool passVisibility;
  String? Function(BuildContext, String?)? passTextControllerValidator;

  @override
  void initState(BuildContext context) {
    passVisibility = false;
  }

  @override
  void dispose() {
    emailFocusNode?.dispose();

    passFocusNode?.dispose();
  }
}
