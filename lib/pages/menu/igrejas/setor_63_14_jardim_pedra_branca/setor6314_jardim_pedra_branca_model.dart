import '/flutter_flow/flutter_flow_util.dart';
import 'setor6314_jardim_pedra_branca_widget.dart'
    show Setor6314JardimPedraBrancaWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class Setor6314JardimPedraBrancaModel
    extends FlutterFlowModel<Setor6314JardimPedraBrancaWidget> {
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
