import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_youtube_player.dart';
import 'package:flutter/material.dart';
import 'velho_test06_lv_model.dart';
export 'velho_test06_lv_model.dart';

class VelhoTest06LvWidget extends StatefulWidget {
  const VelhoTest06LvWidget({super.key});

  @override
  State<VelhoTest06LvWidget> createState() => _VelhoTest06LvWidgetState();
}

class _VelhoTest06LvWidgetState extends State<VelhoTest06LvWidget> {
  late VelhoTest06LvModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => VelhoTest06LvModel());
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
              url: 'https://youtu.be/bR5qA3fmpEM?si=BzRb1hUcoD6RrPTQ',
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
                      'Levítico ',
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
                    'Assista o nosso vídeo com a visão geral do livro de Levítico que explica o conceito literário do livro e as suas ideias principais. Em Levítico, o Deus santo de Israel convida o povo a viver na Sua presença, apesar de serem pecadores, através de uma série de rituais e instituições sagradas.',
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
