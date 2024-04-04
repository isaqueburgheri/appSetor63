import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_web_view.dart';
import 'package:flutter/material.dart';
import 'y01_culto_milagres_model.dart';
export 'y01_culto_milagres_model.dart';

class Y01CultoMilagresWidget extends StatefulWidget {
  const Y01CultoMilagresWidget({super.key});

  @override
  State<Y01CultoMilagresWidget> createState() => _Y01CultoMilagresWidgetState();
}

class _Y01CultoMilagresWidgetState extends State<Y01CultoMilagresWidget> {
  late Y01CultoMilagresModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Y01CultoMilagresModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
      appBar: responsiveVisibility(
        context: context,
        tabletLandscape: false,
        desktop: false,
      )
          ? AppBar(
              backgroundColor: Colors.black,
              automaticallyImplyLeading: false,
              leading: FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30.0,
                borderWidth: 1.0,
                buttonSize: 60.0,
                icon: const Icon(
                  Icons.arrow_back_rounded,
                  color: Colors.white,
                  size: 30.0,
                ),
                onPressed: () async {
                  context.pushNamed('midia_menu');
                },
              ),
              title: Text(
                ' AD Belém - Setor 63',
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      fontFamily: 'Outfit',
                      color: Colors.white,
                      fontSize: 22.0,
                      letterSpacing: 0.0,
                    ),
              ),
              actions: const [],
              centerTitle: true,
              elevation: 2.0,
            )
          : null,
      body: const SafeArea(
        top: true,
        child: Stack(
          children: [
            Align(
              alignment: AlignmentDirectional(0.0, 0.0),
              child: FlutterFlowWebView(
                content:
                    'https://adbelemsetor63.blogspot.com/2023/09/culto-dos-milagres.html',
                height: 824.0,
                verticalScroll: true,
                horizontalScroll: false,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
