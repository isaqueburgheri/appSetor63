import '/flutter_flow/flutter_flow_util.dart';
import 'l_g_p_d_form_widget.dart' show LGPDFormWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class LGPDFormModel extends FlutterFlowModel<LGPDFormWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for LGPDnome widget.
  FocusNode? lGPDnomeFocusNode;
  TextEditingController? lGPDnomeController;
  String? Function(BuildContext, String?)? lGPDnomeControllerValidator;
  String? _lGPDnomeControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }

    return null;
  }

  // State field(s) for LGPDigreja widget.
  FocusNode? lGPDigrejaFocusNode;
  TextEditingController? lGPDigrejaController;
  String? Function(BuildContext, String?)? lGPDigrejaControllerValidator;
  // State field(s) for LGPDmsg widget.
  FocusNode? lGPDmsgFocusNode;
  TextEditingController? lGPDmsgController;
  String? Function(BuildContext, String?)? lGPDmsgControllerValidator;
  String? _lGPDmsgControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório.';
    }

    return null;
  }

  // State field(s) for Expandable widget.
  late ExpandableController expandableController;

  @override
  void initState(BuildContext context) {
    lGPDnomeControllerValidator = _lGPDnomeControllerValidator;
    lGPDmsgControllerValidator = _lGPDmsgControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    lGPDnomeFocusNode?.dispose();
    lGPDnomeController?.dispose();

    lGPDigrejaFocusNode?.dispose();
    lGPDigrejaController?.dispose();

    lGPDmsgFocusNode?.dispose();
    lGPDmsgController?.dispose();

    expandableController.dispose();
  }
}
