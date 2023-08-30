import '/components/side_nav_main_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MainMembersModel extends FlutterFlowModel {
  ///  Local state fields for this page.

  int selectedPage = 2;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for sideNav_Main component.
  late SideNavMainModel sideNavMainModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    sideNavMainModel = createModel(context, () => SideNavMainModel());
  }

  void dispose() {
    unfocusNode.dispose();
    sideNavMainModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
