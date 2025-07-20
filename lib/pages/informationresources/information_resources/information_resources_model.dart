import '/flutter_flow/flutter_flow_util.dart';
import '/navbar/nav_bar/nav_bar_widget.dart';
import '/index.dart';
import 'information_resources_widget.dart' show InformationResourcesWidget;
import 'package:flutter/material.dart';

class InformationResourcesModel
    extends FlutterFlowModel<InformationResourcesWidget> {
  ///  Local state fields for this page.

  bool navBarVisible = false;

  ///  State fields for stateful widgets in this page.

  // Model for navBar component.
  late NavBarModel navBarModel;

  @override
  void initState(BuildContext context) {
    navBarModel = createModel(context, () => NavBarModel());
  }

  @override
  void dispose() {
    navBarModel.dispose();
  }
}
