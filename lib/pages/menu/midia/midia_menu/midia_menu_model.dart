import '/flutter_flow/flutter_flow_util.dart';
import 'midia_menu_widget.dart' show MidiaMenuWidget;
import 'package:flutter/material.dart';

class MidiaMenuModel extends FlutterFlowModel<MidiaMenuWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
