import '/flutter_flow/flutter_flow_util.dart';
import 'livro01_widget.dart' show Livro01Widget;
import 'package:flutter/material.dart';

class Livro01Model extends FlutterFlowModel<Livro01Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
