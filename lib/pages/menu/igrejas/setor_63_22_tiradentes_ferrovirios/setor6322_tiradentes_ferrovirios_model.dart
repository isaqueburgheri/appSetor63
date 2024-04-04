import '/flutter_flow/flutter_flow_util.dart';
import 'setor6322_tiradentes_ferrovirios_widget.dart'
    show Setor6322TiradentesFerroviriosWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class Setor6322TiradentesFerroviriosModel
    extends FlutterFlowModel<Setor6322TiradentesFerroviriosWidget> {
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
