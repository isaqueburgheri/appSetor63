import '/flutter_flow/flutter_flow_util.dart';
import 'setor6308_conj_prestes_maia_widget.dart'
    show Setor6308ConjPrestesMaiaWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class Setor6308ConjPrestesMaiaModel
    extends FlutterFlowModel<Setor6308ConjPrestesMaiaWidget> {
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
