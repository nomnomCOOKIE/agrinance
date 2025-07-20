import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'sign_up_widget.dart' show SignUpWidget;
import 'package:flutter/material.dart';

class SignUpModel extends FlutterFlowModel<SignUpWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for EmailSignUp widget.
  final emailSignUpKey = GlobalKey();
  FocusNode? emailSignUpFocusNode;
  TextEditingController? emailSignUpTextController;
  String? emailSignUpSelectedOption;
  String? Function(BuildContext, String?)? emailSignUpTextControllerValidator;
  // State field(s) for PasswordSignUp widget.
  final passwordSignUpKey = GlobalKey();
  FocusNode? passwordSignUpFocusNode;
  TextEditingController? passwordSignUpTextController;
  String? passwordSignUpSelectedOption;
  late bool passwordSignUpVisibility;
  String? Function(BuildContext, String?)?
      passwordSignUpTextControllerValidator;
  // State field(s) for ConfirmPasswordSignUp widget.
  final confirmPasswordSignUpKey = GlobalKey();
  FocusNode? confirmPasswordSignUpFocusNode;
  TextEditingController? confirmPasswordSignUpTextController;
  String? confirmPasswordSignUpSelectedOption;
  late bool confirmPasswordSignUpVisibility;
  String? Function(BuildContext, String?)?
      confirmPasswordSignUpTextControllerValidator;

  @override
  void initState(BuildContext context) {
    passwordSignUpVisibility = false;
    confirmPasswordSignUpVisibility = false;
  }

  @override
  void dispose() {
    emailSignUpFocusNode?.dispose();

    passwordSignUpFocusNode?.dispose();

    confirmPasswordSignUpFocusNode?.dispose();
  }
}
