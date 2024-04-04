import '/flutter_flow/flutter_flow_util.dart';
import 'setor6324_fonte_nova_widget.dart' show Setor6324FonteNovaWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class Setor6324FonteNovaModel
    extends FlutterFlowModel<Setor6324FonteNovaWidget> {
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
