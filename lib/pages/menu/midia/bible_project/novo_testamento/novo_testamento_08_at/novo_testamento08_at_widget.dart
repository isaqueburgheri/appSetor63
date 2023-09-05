import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/flutter_flow_youtube_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'novo_testamento08_at_model.dart';
export 'novo_testamento08_at_model.dart';

class NovoTestamento08AtWidget extends StatefulWidget {
  const NovoTestamento08AtWidget({Key? key}) : super(key: key);

  @override
  _NovoTestamento08AtWidgetState createState() =>
      _NovoTestamento08AtWidgetState();
}

class _NovoTestamento08AtWidgetState extends State<NovoTestamento08AtWidget> {
  late NovoTestamento08AtModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NovoTestamento08AtModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return YoutubeFullScreenWrapper(
      child: Scaffold(
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
                  child: Icon(
                    Icons.chevron_left_rounded,
                    color: Color(0xFF0F1113),
                    size: 32.0,
                  ),
                ),
                title: Text(
                  'BibleProject - Português',
                  style: FlutterFlowTheme.of(context).headlineMedium.override(
                        fontFamily: 'Outfit',
                        color: Color(0xFF0F1113),
                        fontSize: 24.0,
                        fontWeight: FontWeight.w500,
                      ),
                ),
                actions: [],
                centerTitle: false,
                elevation: 0.0,
              )
            : null,
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FlutterFlowYoutubePlayer(
                url: 'https://youtu.be/9HdS25PV9JQ?si=4Top4Hww8Z2W2S_9',
                autoPlay: false,
                looping: true,
                mute: false,
                showControls: true,
                showFullScreen: true,
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Atos 1-12',
                      style:
                          FlutterFlowTheme.of(context).headlineMedium.override(
                                fontFamily: 'Outfit',
                                color: Color(0xFF0F1113),
                                fontSize: 24.0,
                                fontWeight: FontWeight.w500,
                              ),
                    ),
                    Text(
                      'Assista o nosso vídeo com a visão geral de Atos 1 a 12, que explica o conceito literário do livro e as suas ideias principais. No livro de Atos, Jesus envia o Espírito Santo para capacitar os discípulos na tarefa de partilhar as boas novas do reino entre as nações do mundo inteiro.',
                      style: FlutterFlowTheme.of(context).labelLarge.override(
                            fontFamily: 'Outfit',
                            color: Color(0xFF57636C),
                            fontSize: 16.0,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                    Divider(
                      height: 32.0,
                      thickness: 1.0,
                      color: Color(0xFFDBE2E7),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 24.0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      context.pushNamed('novoTestamento_09_At');
                    },
                    text: 'Próximo Vídeo',
                    options: FFButtonOptions(
                      width: 300.0,
                      height: 60.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: Color(0xFF4B39EF),
                      textStyle:
                          FlutterFlowTheme.of(context).headlineSmall.override(
                                fontFamily: 'Outfit',
                                color: Colors.white,
                                fontSize: 20.0,
                                fontWeight: FontWeight.w600,
                              ),
                      elevation: 3.0,
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(40.0),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
