import '/flutter_flow/flutter_flow_util.dart';
import 'envio_testemunhos_widget.dart' show EnvioTestemunhosWidget;
import 'package:flutter/material.dart';

class EnvioTestemunhosModel extends FlutterFlowModel<EnvioTestemunhosWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for TextFieldEmail widget.
  FocusNode? textFieldEmailFocusNode;
  TextEditingController? textFieldEmailController;
  String? Function(BuildContext, String?)? textFieldEmailControllerValidator;
  String? _textFieldEmailControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório !';
    }

    return null;
  }

  // State field(s) for TextFieldNome widget.
  FocusNode? textFieldNomeFocusNode;
  TextEditingController? textFieldNomeController;
  String? Function(BuildContext, String?)? textFieldNomeControllerValidator;
  // State field(s) for TextIgreja widget.
  FocusNode? textIgrejaFocusNode;
  TextEditingController? textIgrejaController;
  String? Function(BuildContext, String?)? textIgrejaControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    textFieldEmailControllerValidator = _textFieldEmailControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldEmailFocusNode?.dispose();
    textFieldEmailController?.dispose();

    textFieldNomeFocusNode?.dispose();
    textFieldNomeController?.dispose();

    textIgrejaFocusNode?.dispose();
    textIgrejaController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
