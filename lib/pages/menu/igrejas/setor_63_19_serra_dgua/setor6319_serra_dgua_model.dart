import '/flutter_flow/flutter_flow_util.dart';
import 'setor6319_serra_dgua_widget.dart' show Setor6319SerraDguaWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class Setor6319SerraDguaModel
    extends FlutterFlowModel<Setor6319SerraDguaWidget> {
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
