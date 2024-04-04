import '/flutter_flow/flutter_flow_util.dart';
import 'setor6323_vila1de_maio_widget.dart' show Setor6323Vila1deMaioWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class Setor6323Vila1deMaioModel
    extends FlutterFlowModel<Setor6323Vila1deMaioWidget> {
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
