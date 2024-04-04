import '/flutter_flow/flutter_flow_util.dart';
import 'setor6307_cohab_etelvina_widget.dart' show Setor6307CohabEtelvinaWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class Setor6307CohabEtelvinaModel
    extends FlutterFlowModel<Setor6307CohabEtelvinaWidget> {
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
