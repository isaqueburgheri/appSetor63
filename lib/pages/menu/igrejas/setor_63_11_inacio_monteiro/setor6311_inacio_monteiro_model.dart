import '/flutter_flow/flutter_flow_util.dart';
import 'setor6311_inacio_monteiro_widget.dart'
    show Setor6311InacioMonteiroWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class Setor6311InacioMonteiroModel
    extends FlutterFlowModel<Setor6311InacioMonteiroWidget> {
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
