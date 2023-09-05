import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:go_router/go_router.dart';
import 'package:page_transition/page_transition.dart';

import '/index.dart';
import '/main.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/lat_lng.dart';
import '/flutter_flow/place.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'serialization_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  bool showSplashImage = true;

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, state) => appStateNotifier.showSplashImage
          ? Builder(
              builder: (context) => Container(
                color: Colors.transparent,
                child: Image.asset(
                  'assets/images/logo_setor63.png',
                  fit: BoxFit.fitHeight,
                ),
              ),
            )
          : NavBarPage(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) => appStateNotifier.showSplashImage
              ? Builder(
                  builder: (context) => Container(
                    color: Colors.transparent,
                    child: Image.asset(
                      'assets/images/logo_setor63.png',
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                )
              : NavBarPage(),
        ),
        FFRoute(
          name: 'main_Dashboard',
          path: '/mainDashboard',
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'main_Dashboard')
              : MainDashboardWidget(),
        ),
        FFRoute(
          name: 'Setor63_01_Sede',
          path: '/setor6301Sede',
          builder: (context, params) => Setor6301SedeWidget(),
        ),
        FFRoute(
          name: 'Setor_63_02_barro_branco',
          path: '/setor6302BarroBranco',
          builder: (context, params) => Setor6302BarroBrancoWidget(),
        ),
        FFRoute(
          name: 'main_0_menu',
          path: '/main0Menu',
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'main_0_menu')
              : Main0MenuWidget(),
        ),
        FFRoute(
          name: 'menu_radio_01_rbc',
          path: '/menuRadio01Rbc',
          builder: (context, params) => MenuRadio01RbcWidget(),
        ),
        FFRoute(
          name: 'menu_biblia',
          path: '/menuBiblia',
          builder: (context, params) => MenuBibliaWidget(),
        ),
        FFRoute(
          name: 'menu_versiculos',
          path: '/menuVersiculos',
          builder: (context, params) => MenuVersiculosWidget(),
        ),
        FFRoute(
          name: 'menu_harpa',
          path: '/menuHarpa',
          builder: (context, params) => MenuHarpaWidget(),
        ),
        FFRoute(
          name: 'menu_pedir_oracao',
          path: '/menuPedirOracao',
          builder: (context, params) => MenuPedirOracaoWidget(),
        ),
        FFRoute(
          name: 'menu_doacao',
          path: '/menuDoacao',
          builder: (context, params) => MenuDoacaoWidget(),
        ),
        FFRoute(
          name: 'menu_radio',
          path: '/menuRadio',
          builder: (context, params) => MenuRadioWidget(),
        ),
        FFRoute(
          name: 'menu_radio_02_senami',
          path: '/menuRadio02Senami',
          builder: (context, params) => MenuRadio02SenamiWidget(),
        ),
        FFRoute(
          name: 'menu_radio_03_vozM',
          path: '/menuRadio03VozM',
          builder: (context, params) => MenuRadio03VozMWidget(),
        ),
        FFRoute(
          name: 'menu_radio_04_fmmusical',
          path: '/menuRadio04Fmmusical',
          builder: (context, params) => MenuRadio04FmmusicalWidget(),
        ),
        FFRoute(
          name: 'Setor_63_06_CityConceicao',
          path: '/setor6306CityConceicao',
          builder: (context, params) => Setor6306CityConceicaoWidget(),
        ),
        FFRoute(
          name: 'Setor_63_03_CachoeiradaSorte',
          path: '/setor6303CachoeiradaSorte',
          builder: (context, params) => Setor6303CachoeiradaSorteWidget(),
        ),
        FFRoute(
          name: 'Setor_63_04_CastroAlves',
          path: '/setor6304CastroAlves',
          builder: (context, params) => Setor6304CastroAlvesWidget(),
        ),
        FFRoute(
          name: 'Setor_63_07_CohabEtelvina',
          path: '/setor6307CohabEtelvina',
          builder: (context, params) => Setor6307CohabEtelvinaWidget(),
        ),
        FFRoute(
          name: 'Setor_63_08_ConjPrestesMaia',
          path: '/setor6308ConjPrestesMaia',
          builder: (context, params) => Setor6308ConjPrestesMaiaWidget(),
        ),
        FFRoute(
          name: 'Setor_63_09_FazendadoCarmo',
          path: '/setor6309FazendadoCarmo',
          builder: (context, params) => Setor6309FazendadoCarmoWidget(),
        ),
        FFRoute(
          name: 'Setor_63_10_FerreiradaRocha',
          path: '/setor6310FerreiradaRocha',
          builder: (context, params) => Setor6310FerreiradaRochaWidget(),
        ),
        FFRoute(
          name: 'Setor_63_11_InacioMonteiro',
          path: '/setor6311InacioMonteiro',
          builder: (context, params) => Setor6311InacioMonteiroWidget(),
        ),
        FFRoute(
          name: 'Setor_63_05_Castro2',
          path: '/setor6305Castro2',
          builder: (context, params) => Setor6305Castro2Widget(),
        ),
        FFRoute(
          name: 'y_01_cultoMilagres',
          path: '/y01CultoMilagres',
          builder: (context, params) => Y01CultoMilagresWidget(),
        ),
        FFRoute(
          name: 'y_02_cultoCeia',
          path: '/y02CultoCeia',
          builder: (context, params) => Y02CultoCeiaWidget(),
        ),
        FFRoute(
          name: 'y_03_familia',
          path: '/y03Familia',
          builder: (context, params) => Y03FamiliaWidget(),
        ),
        FFRoute(
          name: 'y_04_ensino',
          path: '/y04Ensino',
          builder: (context, params) => Y04EnsinoWidget(),
        ),
        FFRoute(
          name: 'midia_menu',
          path: '/midiaMenu',
          builder: (context, params) => MidiaMenuWidget(),
        ),
        FFRoute(
          name: 'menu_radio_05_ADBP',
          path: '/menuRadio05ADBP',
          builder: (context, params) => MenuRadio05ADBPWidget(),
        ),
        FFRoute(
          name: 'igrejas_menu',
          path: '/igrejasMenu',
          builder: (context, params) => IgrejasMenuWidget(),
        ),
        FFRoute(
          name: 'novoTestamento_01_Geral',
          path: '/novoTestamento01Geral',
          builder: (context, params) => NovoTestamento01GeralWidget(),
        ),
        FFRoute(
          name: 'novoTestamento_00',
          path: '/novoTestamento00',
          builder: (context, params) => NovoTestamento00Widget(),
        ),
        FFRoute(
          name: 'novoTestamento_02_Mt',
          path: '/novoTestamento02Mt',
          builder: (context, params) => NovoTestamento02MtWidget(),
        ),
        FFRoute(
          name: 'novoTestamento_03_Mt',
          path: '/novoTestamento03Mt',
          builder: (context, params) => NovoTestamento03MtWidget(),
        ),
        FFRoute(
          name: 'biblieProject_menu',
          path: '/biblieProjectMenu',
          builder: (context, params) => BiblieProjectMenuWidget(),
        ),
        FFRoute(
          name: 'novoTestamento_04_Mc',
          path: '/novoTestamento04Mc',
          builder: (context, params) => NovoTestamento04McWidget(),
        ),
        FFRoute(
          name: 'novoTestamento_05_Lc',
          path: '/novoTestamento05Lc',
          builder: (context, params) => NovoTestamento05LcWidget(),
        ),
        FFRoute(
          name: 'novoTestamento_06_Lc',
          path: '/novoTestamento06Lc',
          builder: (context, params) => NovoTestamento06LcWidget(),
        ),
        FFRoute(
          name: 'novoTestamento_07_Jo_02',
          path: '/novoTestamento07Jo02',
          builder: (context, params) => NovoTestamento07Jo02Widget(),
        ),
        FFRoute(
          name: 'novoTestamento_08_At',
          path: '/novoTestamento08At',
          builder: (context, params) => NovoTestamento08AtWidget(),
        ),
        FFRoute(
          name: 'novoTestamento_09_At',
          path: '/novoTestamento09At',
          builder: (context, params) => NovoTestamento09AtWidget(),
        ),
        FFRoute(
          name: 'novoTestamento_10_Rm',
          path: '/novoTestamento10Rm',
          builder: (context, params) => NovoTestamento10RmWidget(),
        ),
        FFRoute(
          name: 'novoTestamento_11_Rm',
          path: '/novoTestamento11Rm',
          builder: (context, params) => NovoTestamento11RmWidget(),
        ),
        FFRoute(
          name: 'novoTestamento_12_1Co',
          path: '/novoTestamento121Co',
          builder: (context, params) => NovoTestamento121CoWidget(),
        ),
        FFRoute(
          name: 'novoTestamento_13_2Co',
          path: '/novoTestamento132Co',
          builder: (context, params) => NovoTestamento132CoWidget(),
        ),
        FFRoute(
          name: 'novoTestamento_14_Gl',
          path: '/novoTestamento14Gl',
          builder: (context, params) => NovoTestamento14GlWidget(),
        ),
        FFRoute(
          name: 'novoTestamento_15_Ef',
          path: '/novoTestamento15Ef',
          builder: (context, params) => NovoTestamento15EfWidget(),
        ),
        FFRoute(
          name: 'novoTestamento_16_Fp',
          path: '/novoTestamento16Fp',
          builder: (context, params) => NovoTestamento16FpWidget(),
        ),
        FFRoute(
          name: 'novoTestamento_17_Cl',
          path: '/novoTestamento17Cl',
          builder: (context, params) => NovoTestamento17ClWidget(),
        ),
        FFRoute(
          name: 'novoTestamento_18_1Ts',
          path: '/novoTestamento181Ts',
          builder: (context, params) => NovoTestamento181TsWidget(),
        ),
        FFRoute(
          name: 'novoTestamento_19_2Ts',
          path: '/novoTestamento192Ts',
          builder: (context, params) => NovoTestamento192TsWidget(),
        ),
        FFRoute(
          name: 'novoTestamento_20_1Tm',
          path: '/novoTestamento201Tm',
          builder: (context, params) => NovoTestamento201TmWidget(),
        ),
        FFRoute(
          name: 'novoTestamento_21_2Tm',
          path: '/novoTestamento212Tm',
          builder: (context, params) => NovoTestamento212TmWidget(),
        ),
        FFRoute(
          name: 'novoTestamento_22_Tt',
          path: '/novoTestamento22Tt',
          builder: (context, params) => NovoTestamento22TtWidget(),
        ),
        FFRoute(
          name: 'novoTestamento_23_Fm',
          path: '/novoTestamento23Fm',
          builder: (context, params) => NovoTestamento23FmWidget(),
        ),
        FFRoute(
          name: 'novoTestamento_24_Hb',
          path: '/novoTestamento24Hb',
          builder: (context, params) => NovoTestamento24HbWidget(),
        ),
        FFRoute(
          name: 'novoTestamento_25_Tg',
          path: '/novoTestamento25Tg',
          builder: (context, params) => NovoTestamento25TgWidget(),
        ),
        FFRoute(
          name: 'novoTestamento_26_1Pe',
          path: '/novoTestamento261Pe',
          builder: (context, params) => NovoTestamento261PeWidget(),
        ),
        FFRoute(
          name: 'novoTestamento_27_2Pe',
          path: '/novoTestamento272Pe',
          builder: (context, params) => NovoTestamento272PeWidget(),
        ),
        FFRoute(
          name: 'novoTestamento_28_1-2-3_Jo',
          path: '/novoTestamento28123Jo',
          builder: (context, params) => NovoTestamento28123JoWidget(),
        ),
        FFRoute(
          name: 'novoTestamento_29_Jd',
          path: '/novoTestamento29Jd',
          builder: (context, params) => NovoTestamento29JdWidget(),
        ),
        FFRoute(
          name: 'novoTestamento_30_Ap',
          path: '/novoTestamento30Ap',
          builder: (context, params) => NovoTestamento30ApWidget(),
        ),
        FFRoute(
          name: 'novoTestamento_07_Jo_01',
          path: '/novoTestamento07Jo01',
          builder: (context, params) => NovoTestamento07Jo01Widget(),
        ),
        FFRoute(
          name: 'novoTestamento_31_Ap02',
          path: '/novoTestamento31Ap02',
          builder: (context, params) => NovoTestamento31Ap02Widget(),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
      observers: [routeObserver],
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.extraMap.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, [
    bool isList = false,
  ]) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        pageBuilder: (context, state) {
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder: PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).transitionsBuilder,
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => TransitionInfo(hasTransition: false);
}
