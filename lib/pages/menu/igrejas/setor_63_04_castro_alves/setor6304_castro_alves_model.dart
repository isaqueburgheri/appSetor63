import '/flutter_flow/flutter_flow_util.dart';
import 'setor6304_castro_alves_widget.dart' show Setor6304CastroAlvesWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class Setor6304CastroAlvesModel
    extends FlutterFlowModel<Setor6304CastroAlvesWidget> {
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
