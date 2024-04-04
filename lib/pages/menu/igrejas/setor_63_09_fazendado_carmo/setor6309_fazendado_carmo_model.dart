import '/flutter_flow/flutter_flow_util.dart';
import 'setor6309_fazendado_carmo_widget.dart'
    show Setor6309FazendadoCarmoWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class Setor6309FazendadoCarmoModel
    extends FlutterFlowModel<Setor6309FazendadoCarmoWidget> {
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
