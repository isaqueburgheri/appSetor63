import '/flutter_flow/flutter_flow_util.dart';
import 'setor6315_jardim_perola_widget.dart' show Setor6315JardimPerolaWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class Setor6315JardimPerolaModel
    extends FlutterFlowModel<Setor6315JardimPerolaWidget> {
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
