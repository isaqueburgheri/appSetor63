import '/flutter_flow/flutter_flow_util.dart';
import 'setor6317_jardim_vitoria_widget.dart' show Setor6317JardimVitoriaWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class Setor6317JardimVitoriaModel
    extends FlutterFlowModel<Setor6317JardimVitoriaWidget> {
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
