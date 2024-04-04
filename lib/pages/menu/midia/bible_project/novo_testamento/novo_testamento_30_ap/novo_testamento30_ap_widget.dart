import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_youtube_player.dart';
import 'package:flutter/material.dart';
import 'novo_testamento30_ap_model.dart';
export 'novo_testamento30_ap_model.dart';

class NovoTestamento30ApWidget extends StatefulWidget {
  const NovoTestamento30ApWidget({super.key});

  @override
  State<NovoTestamento30ApWidget> createState() =>
      _NovoTestamento30ApWidgetState();
}

class _NovoTestamento30ApWidgetState extends State<NovoTestamento30ApWidget> {
  late NovoTestamento30ApModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NovoTestamento30ApModel());
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
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const FlutterFlowYoutubePlayer(
                  url: 'https://youtu.be/BLQEAe9VDUQ?si=hXD3QDMAs11ZgX9j',
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
                        'Apocalipse 1-11',
                        style: FlutterFlowTheme.of(context)
                            .headlineMedium
                            .override(
                              fontFamily: 'Outfit',
                              color: const Color(0xFF0F1113),
                              fontSize: 24.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                      Text(
                        'Assista o nosso vídeo com a visão geral de Apocalipse, dos capítulos 1 a 11 que explica o conceito literário do livro e as suas ideias principais. Em Apocalipse, as visões de João revelam que Jesus venceu o mal através da sua morte e ressurreição, e um dia irá regressar como o verdadeiro rei do mundo.',
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
        ],
      ),
    );
  }
}
