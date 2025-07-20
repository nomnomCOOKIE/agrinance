import '/flutter_flow/flutter_flow_util.dart';
import '/navbar/nav_bar/nav_bar_widget.dart';
import '/index.dart';
import 'govt_scheme_explainer_a_i_widget.dart' show GovtSchemeExplainerAIWidget;
import 'package:flutter/material.dart';

class GovtSchemeExplainerAIModel
    extends FlutterFlowModel<GovtSchemeExplainerAIWidget> {
  ///  Local state fields for this page.

  String? aiResponse;

  bool navBarVisible = false;

  ///  State fields for stateful widgets in this page.

  // Model for navBar component.
  late NavBarModel navBarModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [AI Agent - Send Message to aiSchemeExplainer] action in Button widget.
  String? outputfield;

  @override
  void initState(BuildContext context) {
    navBarModel = createModel(context, () => NavBarModel());
  }

  @override
  void dispose() {
    navBarModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
