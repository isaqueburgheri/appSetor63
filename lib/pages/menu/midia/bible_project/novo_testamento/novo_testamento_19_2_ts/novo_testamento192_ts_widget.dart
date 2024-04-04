import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_youtube_player.dart';
import 'package:flutter/material.dart';
import 'novo_testamento192_ts_model.dart';
export 'novo_testamento192_ts_model.dart';

class NovoTestamento192TsWidget extends StatefulWidget {
  const NovoTestamento192TsWidget({super.key});

  @override
  State<NovoTestamento192TsWidget> createState() =>
      _NovoTestamento192TsWidgetState();
}

class _NovoTestamento192TsWidgetState extends State<NovoTestamento192TsWidget> {
  late NovoTestamento192TsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NovoTestamento192TsModel());
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
                  context.pushNamed('novoTestamento_00');
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
              url: 'https://youtu.be/rxaPUrNzCTQ?si=c5g3D6T6-DF_OoVS',
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
                  Text(
                    '2 Tessalonicenses',
                    style: FlutterFlowTheme.of(context).headlineMedium.override(
                          fontFamily: 'Outfit',
                          color: const Color(0xFF0F1113),
                          fontSize: 24.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                  Text(
                    'Assista o nosso vídeo com a visão geral da Segunda carta aos Tessalonicenses, que explica o conceito literário do livro e as suas ideias principais. Nessa carta, Paulo esclarece os seu ensinamentos anteriores sobre o futuro retorno de Jesus e repreende os Cristãos que estavam criando confusão na comunidade.',
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
