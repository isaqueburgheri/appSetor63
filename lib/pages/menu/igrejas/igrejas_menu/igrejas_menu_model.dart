import '/flutter_flow/flutter_flow_util.dart';
import 'igrejas_menu_widget.dart' show IgrejasMenuWidget;
import 'package:flutter/material.dart';

class IgrejasMenuModel extends FlutterFlowModel<IgrejasMenuWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
