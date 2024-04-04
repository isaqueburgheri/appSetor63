import '/flutter_flow/flutter_flow_util.dart';
import 'bibliehome_widget.dart' show BibliehomeWidget;
import 'package:flutter/material.dart';

class BibliehomeModel extends FlutterFlowModel<BibliehomeWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
