import '/flutter_flow/flutter_flow_util.dart';
import 'setor6303_cachoeirada_sorte_widget.dart'
    show Setor6303CachoeiradaSorteWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class Setor6303CachoeiradaSorteModel
    extends FlutterFlowModel<Setor6303CachoeiradaSorteWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Expandable widget.
  late ExpandableController expandableController;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    expandableController.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
