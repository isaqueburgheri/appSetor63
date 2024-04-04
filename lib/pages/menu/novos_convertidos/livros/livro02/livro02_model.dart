import '/flutter_flow/flutter_flow_util.dart';
import 'livro02_widget.dart' show Livro02Widget;
import 'package:flutter/material.dart';

class Livro02Model extends FlutterFlowModel<Livro02Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
