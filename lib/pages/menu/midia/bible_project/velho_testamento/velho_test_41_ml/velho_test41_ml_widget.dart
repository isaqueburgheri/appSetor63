import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_youtube_player.dart';
import 'package:flutter/material.dart';
import 'velho_test41_ml_model.dart';
export 'velho_test41_ml_model.dart';

class VelhoTest41MlWidget extends StatefulWidget {
  const VelhoTest41MlWidget({super.key});

  @override
  State<VelhoTest41MlWidget> createState() => _VelhoTest41MlWidgetState();
}

class _VelhoTest41MlWidgetState extends State<VelhoTest41MlWidget> {
  late VelhoTest41MlModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => VelhoTest41MlModel());
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
      backgroundColor: Colors.white,
      appBar: responsiveVisibility(
        context: context,
        tabletLandscape: false,
        desktop: false,
      )
          ? AppBar(
              backgroundColor: Colors.white,
              automaticallyImplyLeading: false,
              leading: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  context.pushNamed('velhoTest_00');
                },
                child: const Icon(
                  Icons.chevron_left_rounded,
                  color: Color(0xFF0F1113),
                  size: 32.0,
                ),
              ),
              title: Text(
                'BibleProject - Português',
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      fontFamily: 'Outfit',
                      color: const Color(0xFF0F1113),
                      fontSize: 24.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w500,
                    ),
              ),
              actions: const [],
              centerTitle: false,
              elevation: 0.0,
            )
          : null,
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const FlutterFlowYoutubePlayer(
              url: 'https://youtu.be/-HEQoeS1NtM?si=kI9S6CGgEqqjaBYl',
              autoPlay: false,
              looping: false,
              mute: false,
              showControls: true,
              showFullScreen: false,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: Text(
                      'Malaquias ',
                      textAlign: TextAlign.start,
                      style:
                          FlutterFlowTheme.of(context).headlineMedium.override(
                                fontFamily: 'Outfit',
                                color: const Color(0xFF0F1113),
                                fontSize: 24.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w500,
                              ),
                    ),
                  ),
                  Text(
                    'Assista o nosso vídeo com a visão geral de Malaquias que explica o conceito literário do livro e as suas ideias principais. Malaquias acusa Israel de egoísmo após o exílio e anuncia que o dia do Senhor purificará Israel e os preparará para o reino de Deus.',
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).labelLarge.override(
                          fontFamily: 'Outfit',
                          color: const Color(0xFF57636C),
                          fontSize: 16.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                  const Divider(
                    height: 32.0,
                    thickness: 1.0,
                    color: Color(0xFFDBE2E7),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
