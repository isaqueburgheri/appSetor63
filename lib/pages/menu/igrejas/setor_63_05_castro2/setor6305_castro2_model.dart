import '/flutter_flow/flutter_flow_util.dart';
import 'setor6305_castro2_widget.dart' show Setor6305Castro2Widget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class Setor6305Castro2Model extends FlutterFlowModel<Setor6305Castro2Widget> {
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
