import '/flutter_flow/flutter_flow_util.dart';
import 'setor6321_tiradentes_d_g_widget.dart' show Setor6321TiradentesDGWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class Setor6321TiradentesDGModel
    extends FlutterFlowModel<Setor6321TiradentesDGWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Expandable widget.
  late ExpandableController expandableController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    expandableController.dispose();
  }
}
