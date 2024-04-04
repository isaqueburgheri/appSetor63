import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_youtube_player.dart';
import 'package:flutter/material.dart';
import 'novo_testamento121_co_model.dart';
export 'novo_testamento121_co_model.dart';

class NovoTestamento121CoWidget extends StatefulWidget {
  const NovoTestamento121CoWidget({super.key});

  @override
  State<NovoTestamento121CoWidget> createState() =>
      _NovoTestamento121CoWidgetState();
}

class _NovoTestamento121CoWidgetState extends State<NovoTestamento121CoWidget> {
  late NovoTestamento121CoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NovoTestamento121CoModel());
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
              url: 'https://youtu.be/XVVM-AP3IB0?si=r24cSNoRirmdrAl7',
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
                    '1 Coríntios',
                    style: FlutterFlowTheme.of(context).headlineMedium.override(
                          fontFamily: 'Outfit',
                          color: const Color(0xFF0F1113),
                          fontSize: 24.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                  Text(
                    'Assista o nosso vídeo com a visão geral da carta de 1ᵒ Coríntios, que explica o conceito literário do livro e as suas ideias principais. Em 1ᵒ Coríntios, Paulo mostra aos novos cristãos de Corinto que até os problemas mais complexos da nossa vida podem ser abordados através da lente do evangelho.',
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
