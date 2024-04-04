import '/flutter_flow/flutter_flow_util.dart';
import 'setor6310_ferreirada_rocha_widget.dart'
    show Setor6310FerreiradaRochaWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class Setor6310FerreiradaRochaModel
    extends FlutterFlowModel<Setor6310FerreiradaRochaWidget> {
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
