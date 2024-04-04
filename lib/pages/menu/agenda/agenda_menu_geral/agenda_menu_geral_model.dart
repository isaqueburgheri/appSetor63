import '/flutter_flow/flutter_flow_util.dart';
import 'agenda_menu_geral_widget.dart' show AgendaMenuGeralWidget;
import 'package:flutter/material.dart';

class AgendaMenuGeralModel extends FlutterFlowModel<AgendaMenuGeralWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
