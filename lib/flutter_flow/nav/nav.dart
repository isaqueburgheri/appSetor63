import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '/index.dart';
import '/main.dart';
import '/flutter_flow/flutter_flow_util.dart';

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
                  'assets/images/splash.png',
                  fit: BoxFit.cover,
                ),
              ),
            )
          : const NavBarPage(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) => appStateNotifier.showSplashImage
              ? Builder(
                  builder: (context) => Container(
                    color: Colors.transparent,
                    child: Image.asset(
                      'assets/images/splash.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                )
              : const NavBarPage(),
        ),
        FFRoute(
          name: 'main_Dashboard',
          path: '/mainDashboard',
          builder: (context, params) => params.isEmpty
              ? const NavBarPage(initialPage: 'main_Dashboard')
              : const MainDashboardWidget(),
        ),
        FFRoute(
          name: 'Setor63_01_Sede',
          path: '/setor6301Sede',
          builder: (context, params) => const Setor6301SedeWidget(),
        ),
        FFRoute(
          name: 'Setor_63_02_barro_branco',
          path: '/setor6302BarroBranco',
          builder: (context, params) => const Setor6302BarroBrancoWidget(),
        ),
        FFRoute(
          name: 'main_0_menu',
          path: '/main0Menu',
          builder: (context, params) => params.isEmpty
              ? const NavBarPage(initialPage: 'main_0_menu')
              : const Main0MenuWidget(),
        ),
        FFRoute(
          name: 'menu_biblia',
          path: '/menuBiblia',
          builder: (context, params) => const MenuBibliaWidget(),
        ),
        FFRoute(
          name: 'menu_versiculos',
          path: '/menuVersiculos',
          builder: (context, params) => const MenuVersiculosWidget(),
        ),
        FFRoute(
          name: 'menu_harpa',
          path: '/menuHarpa',
          builder: (context, params) => const MenuHarpaWidget(),
        ),
        FFRoute(
          name: 'menu_sugestoes',
          path: '/menuSugestoes',
          builder: (context, params) => const MenuSugestoesWidget(),
        ),
        FFRoute(
          name: 'Setor_63_06_CityConceicao',
          path: '/setor6306CityConceicao',
          builder: (context, params) => const Setor6306CityConceicaoWidget(),
        ),
        FFRoute(
          name: 'Setor_63_03_CachoeiradaSorte',
          path: '/setor6303CachoeiradaSorte',
          builder: (context, params) => const Setor6303CachoeiradaSorteWidget(),
        ),
        FFRoute(
          name: 'Setor_63_04_CastroAlves',
          path: '/setor6304CastroAlves',
          builder: (context, params) => const Setor6304CastroAlvesWidget(),
        ),
        FFRoute(
          name: 'Setor_63_07_CohabEtelvina',
          path: '/setor6307CohabEtelvina',
          builder: (context, params) => const Setor6307CohabEtelvinaWidget(),
        ),
        FFRoute(
          name: 'Setor_63_08_ConjPrestesMaia',
          path: '/setor6308ConjPrestesMaia',
          builder: (context, params) => const Setor6308ConjPrestesMaiaWidget(),
        ),
        FFRoute(
          name: 'Setor_63_09_FazendadoCarmo',
          path: '/setor6309FazendadoCarmo',
          builder: (context, params) => const Setor6309FazendadoCarmoWidget(),
        ),
        FFRoute(
          name: 'Setor_63_10_FerreiradaRocha',
          path: '/setor6310FerreiradaRocha',
          builder: (context, params) => const Setor6310FerreiradaRochaWidget(),
        ),
        FFRoute(
          name: 'Setor_63_11_InacioMonteiro',
          path: '/setor6311InacioMonteiro',
          builder: (context, params) => const Setor6311InacioMonteiroWidget(),
        ),
        FFRoute(
          name: 'Setor_63_05_Castro2',
          path: '/setor6305Castro2',
          builder: (context, params) => const Setor6305Castro2Widget(),
        ),
        FFRoute(
          name: 'y_01_cultoMilagres',
          path: '/y01CultoMilagres',
          builder: (context, params) => const Y01CultoMilagresWidget(),
        ),
        FFRoute(
          name: 'y_02_cultoCeia',
          path: '/y02CultoCeia',
          builder: (context, params) => const Y02CultoCeiaWidget(),
        ),
        FFRoute(
          name: 'y_03_familia',
          path: '/y03Familia',
          builder: (context, params) => const Y03FamiliaWidget(),
        ),
        FFRoute(
          name: 'y_04_ensino',
          path: '/y04Ensino',
          builder: (context, params) => const Y04EnsinoWidget(),
        ),
        FFRoute(
          name: 'midia_menu',
          path: '/midiaMenu',
          builder: (context, params) => const MidiaMenuWidget(),
        ),
        FFRoute(
          name: 'igrejas_menu',
          path: '/igrejasMenu',
          builder: (context, params) => const IgrejasMenuWidget(),
        ),
        FFRoute(
          name: 'novoTestamento_01_Geral',
          path: '/novoTestamento01Geral',
          builder: (context, params) => const NovoTestamento01GeralWidget(),
        ),
        FFRoute(
          name: 'novoTestamento_00',
          path: '/novoTestamento00',
          builder: (context, params) => const NovoTestamento00Widget(),
        ),
        FFRoute(
          name: 'novoTestamento_02_Mt',
          path: '/novoTestamento02Mt',
          builder: (context, params) => const NovoTestamento02MtWidget(),
        ),
        FFRoute(
          name: 'novoTestamento_03_Mt',
          path: '/novoTestamento03Mt',
          builder: (context, params) => const NovoTestamento03MtWidget(),
        ),
        FFRoute(
          name: 'biblieProject_menu',
          path: '/biblieProjectMenu',
          builder: (context, params) => const BiblieProjectMenuWidget(),
        ),
        FFRoute(
          name: 'novoTestamento_04_Mc',
          path: '/novoTestamento04Mc',
          builder: (context, params) => const NovoTestamento04McWidget(),
        ),
        FFRoute(
          name: 'novoTestamento_05_Lc',
          path: '/novoTestamento05Lc',
          builder: (context, params) => const NovoTestamento05LcWidget(),
        ),
        FFRoute(
          name: 'novoTestamento_06_Lc',
          path: '/novoTestamento06Lc',
          builder: (context, params) => const NovoTestamento06LcWidget(),
        ),
        FFRoute(
          name: 'novoTestamento_07_Jo_02',
          path: '/novoTestamento07Jo02',
          builder: (context, params) => const NovoTestamento07Jo02Widget(),
        ),
        FFRoute(
          name: 'novoTestamento_08_At',
          path: '/novoTestamento08At',
          builder: (context, params) => const NovoTestamento08AtWidget(),
        ),
        FFRoute(
          name: 'novoTestamento_09_At',
          path: '/novoTestamento09At',
          builder: (context, params) => const NovoTestamento09AtWidget(),
        ),
        FFRoute(
          name: 'novoTestamento_10_Rm',
          path: '/novoTestamento10Rm',
          builder: (context, params) => const NovoTestamento10RmWidget(),
        ),
        FFRoute(
          name: 'novoTestamento_11_Rm',
          path: '/novoTestamento11Rm',
          builder: (context, params) => const NovoTestamento11RmWidget(),
        ),
        FFRoute(
          name: 'novoTestamento_12_1Co',
          path: '/novoTestamento121Co',
          builder: (context, params) => const NovoTestamento121CoWidget(),
        ),
        FFRoute(
          name: 'novoTestamento_13_2Co',
          path: '/novoTestamento132Co',
          builder: (context, params) => const NovoTestamento132CoWidget(),
        ),
        FFRoute(
          name: 'novoTestamento_14_Gl',
          path: '/novoTestamento14Gl',
          builder: (context, params) => const NovoTestamento14GlWidget(),
        ),
        FFRoute(
          name: 'novoTestamento_15_Ef',
          path: '/novoTestamento15Ef',
          builder: (context, params) => const NovoTestamento15EfWidget(),
        ),
        FFRoute(
          name: 'novoTestamento_16_Fp',
          path: '/novoTestamento16Fp',
          builder: (context, params) => const NovoTestamento16FpWidget(),
        ),
        FFRoute(
          name: 'novoTestamento_17_Cl',
          path: '/novoTestamento17Cl',
          builder: (context, params) => const NovoTestamento17ClWidget(),
        ),
        FFRoute(
          name: 'novoTestamento_18_1Ts',
          path: '/novoTestamento181Ts',
          builder: (context, params) => const NovoTestamento181TsWidget(),
        ),
        FFRoute(
          name: 'novoTestamento_19_2Ts',
          path: '/novoTestamento192Ts',
          builder: (context, params) => const NovoTestamento192TsWidget(),
        ),
        FFRoute(
          name: 'novoTestamento_20_1Tm',
          path: '/novoTestamento201Tm',
          builder: (context, params) => const NovoTestamento201TmWidget(),
        ),
        FFRoute(
          name: 'novoTestamento_21_2Tm',
          path: '/novoTestamento212Tm',
          builder: (context, params) => const NovoTestamento212TmWidget(),
        ),
        FFRoute(
          name: 'novoTestamento_22_Tt',
          path: '/novoTestamento22Tt',
          builder: (context, params) => const NovoTestamento22TtWidget(),
        ),
        FFRoute(
          name: 'novoTestamento_23_Fm',
          path: '/novoTestamento23Fm',
          builder: (context, params) => const NovoTestamento23FmWidget(),
        ),
        FFRoute(
          name: 'novoTestamento_24_Hb',
          path: '/novoTestamento24Hb',
          builder: (context, params) => const NovoTestamento24HbWidget(),
        ),
        FFRoute(
          name: 'novoTestamento_25_Tg',
          path: '/novoTestamento25Tg',
          builder: (context, params) => const NovoTestamento25TgWidget(),
        ),
        FFRoute(
          name: 'novoTestamento_26_1Pe',
          path: '/novoTestamento261Pe',
          builder: (context, params) => const NovoTestamento261PeWidget(),
        ),
        FFRoute(
          name: 'novoTestamento_27_2Pe',
          path: '/novoTestamento272Pe',
          builder: (context, params) => const NovoTestamento272PeWidget(),
        ),
        FFRoute(
          name: 'novoTestamento_28_1-2-3_Jo',
          path: '/novoTestamento28123Jo',
          builder: (context, params) => const NovoTestamento28123JoWidget(),
        ),
        FFRoute(
          name: 'novoTestamento_29_Jd',
          path: '/novoTestamento29Jd',
          builder: (context, params) => const NovoTestamento29JdWidget(),
        ),
        FFRoute(
          name: 'novoTestamento_30_Ap',
          path: '/novoTestamento30Ap',
          builder: (context, params) => const NovoTestamento30ApWidget(),
        ),
        FFRoute(
          name: 'novoTestamento_07_Jo_01',
          path: '/novoTestamento07Jo01',
          builder: (context, params) => const NovoTestamento07Jo01Widget(),
        ),
        FFRoute(
          name: 'novoTestamento_31_Ap02',
          path: '/novoTestamento31Ap02',
          builder: (context, params) => const NovoTestamento31Ap02Widget(),
        ),
        FFRoute(
          name: 'velhoTest_00',
          path: '/velhoTest00',
          builder: (context, params) => const VelhoTest00Widget(),
        ),
        FFRoute(
          name: 'velhoTest_01_Geral',
          path: '/velhoTest01Geral',
          builder: (context, params) => const VelhoTest01GeralWidget(),
        ),
        FFRoute(
          name: 'velhoTest_02_Gn',
          path: '/velhoTest02Gn',
          builder: (context, params) => const VelhoTest02GnWidget(),
        ),
        FFRoute(
          name: 'velhoTest_03_Gn',
          path: '/velhoTest03Gn',
          builder: (context, params) => const VelhoTest03GnWidget(),
        ),
        FFRoute(
          name: 'velhoTest_05_Ex',
          path: '/velhoTest05Ex',
          builder: (context, params) => const VelhoTest05ExWidget(),
        ),
        FFRoute(
          name: 'velhoTest_17_Et',
          path: '/velhoTest17Et',
          builder: (context, params) => const VelhoTest17EtWidget(),
        ),
        FFRoute(
          name: 'velhoTest_16_Ed-Ne',
          path: '/velhoTest16EdNe',
          builder: (context, params) => const VelhoTest16EdNeWidget(),
        ),
        FFRoute(
          name: 'velhoTest_15_1-2Cr',
          path: '/velhoTest1512Cr',
          builder: (context, params) => const VelhoTest1512CrWidget(),
        ),
        FFRoute(
          name: 'velhoTest_14_1-2Rs',
          path: '/velhoTest1412Rs',
          builder: (context, params) => const VelhoTest1412RsWidget(),
        ),
        FFRoute(
          name: 'velhoTest_13_2Sm',
          path: '/velhoTest132Sm',
          builder: (context, params) => const VelhoTest132SmWidget(),
        ),
        FFRoute(
          name: 'velhoTest_12_1Sm',
          path: '/velhoTest121Sm',
          builder: (context, params) => const VelhoTest121SmWidget(),
        ),
        FFRoute(
          name: 'velhoTest_11_Rt',
          path: '/velhoTest11Rt',
          builder: (context, params) => const VelhoTest11RtWidget(),
        ),
        FFRoute(
          name: 'velhoTest_10_Jz',
          path: '/velhoTest10Jz',
          builder: (context, params) => const VelhoTest10JzWidget(),
        ),
        FFRoute(
          name: 'velhoTest_09_Js',
          path: '/velhoTest09Js',
          builder: (context, params) => const VelhoTest09JsWidget(),
        ),
        FFRoute(
          name: 'velhoTest_08_Dt',
          path: '/velhoTest08Dt',
          builder: (context, params) => const VelhoTest08DtWidget(),
        ),
        FFRoute(
          name: 'velhoTest_07_Nm',
          path: '/velhoTest07Nm',
          builder: (context, params) => const VelhoTest07NmWidget(),
        ),
        FFRoute(
          name: 'velhoTest_06_Lv',
          path: '/velhoTest06Lv',
          builder: (context, params) => const VelhoTest06LvWidget(),
        ),
        FFRoute(
          name: 'velhoTest_04_Ex',
          path: '/velhoTest04Ex',
          builder: (context, params) => const VelhoTest04ExWidget(),
        ),
        FFRoute(
          name: 'velhoTest_18_jo',
          path: '/velhoTest18Jo',
          builder: (context, params) => const VelhoTest18JoWidget(),
        ),
        FFRoute(
          name: 'velhoTest_19_Sl',
          path: '/velhoTest19Sl',
          builder: (context, params) => const VelhoTest19SlWidget(),
        ),
        FFRoute(
          name: 'velhoTest_20_Pv',
          path: '/velhoTest20Pv',
          builder: (context, params) => const VelhoTest20PvWidget(),
        ),
        FFRoute(
          name: 'velhoTest_21_Ec',
          path: '/velhoTest21Ec',
          builder: (context, params) => const VelhoTest21EcWidget(),
        ),
        FFRoute(
          name: 'velhoTest_22_Ct',
          path: '/velhoTest22Ct',
          builder: (context, params) => const VelhoTest22CtWidget(),
        ),
        FFRoute(
          name: 'velhoTest_23_Is',
          path: '/velhoTest23Is',
          builder: (context, params) => const VelhoTest23IsWidget(),
        ),
        FFRoute(
          name: 'velhoTest_24_Is',
          path: '/velhoTest24Is',
          builder: (context, params) => const VelhoTest24IsWidget(),
        ),
        FFRoute(
          name: 'velhoTest_25_Jr',
          path: '/velhoTest25Jr',
          builder: (context, params) => const VelhoTest25JrWidget(),
        ),
        FFRoute(
          name: 'velhoTest_26_Lm',
          path: '/velhoTest26Lm',
          builder: (context, params) => const VelhoTest26LmWidget(),
        ),
        FFRoute(
          name: 'velhoTest_27_Ez',
          path: '/velhoTest27Ez',
          builder: (context, params) => const VelhoTest27EzWidget(),
        ),
        FFRoute(
          name: 'velhoTest_28_Ez',
          path: '/velhoTest28Ez',
          builder: (context, params) => const VelhoTest28EzWidget(),
        ),
        FFRoute(
          name: 'velhoTest_29_Dn',
          path: '/velhoTest29Dn',
          builder: (context, params) => const VelhoTest29DnWidget(),
        ),
        FFRoute(
          name: 'velhoTest_30_Os',
          path: '/velhoTest30Os',
          builder: (context, params) => const VelhoTest30OsWidget(),
        ),
        FFRoute(
          name: 'velhoTest_31_Jl',
          path: '/velhoTest31Jl',
          builder: (context, params) => const VelhoTest31JlWidget(),
        ),
        FFRoute(
          name: 'velhoTest_32_Am',
          path: '/velhoTest32Am',
          builder: (context, params) => const VelhoTest32AmWidget(),
        ),
        FFRoute(
          name: 'velhoTest_33_Ob',
          path: '/velhoTest33Ob',
          builder: (context, params) => const VelhoTest33ObWidget(),
        ),
        FFRoute(
          name: 'velhoTest_34_Jn',
          path: '/velhoTest34Jn',
          builder: (context, params) => const VelhoTest34JnWidget(),
        ),
        FFRoute(
          name: 'velhoTest_35_Mq',
          path: '/velhoTest35Mq',
          builder: (context, params) => const VelhoTest35MqWidget(),
        ),
        FFRoute(
          name: 'velhoTest_36_Na',
          path: '/velhoTest36Na',
          builder: (context, params) => const VelhoTest36NaWidget(),
        ),
        FFRoute(
          name: 'velhoTest_37_Hc',
          path: '/velhoTest37Hc',
          builder: (context, params) => const VelhoTest37HcWidget(),
        ),
        FFRoute(
          name: 'velhoTest_38_Sf',
          path: '/velhoTest38Sf',
          builder: (context, params) => const VelhoTest38SfWidget(),
        ),
        FFRoute(
          name: 'velhoTest_39_Ag',
          path: '/velhoTest39Ag',
          builder: (context, params) => const VelhoTest39AgWidget(),
        ),
        FFRoute(
          name: 'velhoTest_40_Zc',
          path: '/velhoTest40Zc',
          builder: (context, params) => const VelhoTest40ZcWidget(),
        ),
        FFRoute(
          name: 'velhoTest_41_Ml',
          path: '/velhoTest41Ml',
          builder: (context, params) => const VelhoTest41MlWidget(),
        ),
        FFRoute(
          name: 'biblioteca',
          path: '/biblioteca',
          builder: (context, params) => const BibliotecaWidget(),
        ),
        FFRoute(
          name: 'discipulado01',
          path: '/discipulado01',
          builder: (context, params) => const Discipulado01Widget(),
        ),
        FFRoute(
          name: 'discipulado02',
          path: '/discipulado02',
          builder: (context, params) => const Discipulado02Widget(),
        ),
        FFRoute(
          name: 'discipulado03',
          path: '/discipulado03',
          builder: (context, params) => const Discipulado03Widget(),
        ),
        FFRoute(
          name: 'discipulado04',
          path: '/discipulado04',
          builder: (context, params) => const Discipulado04Widget(),
        ),
        FFRoute(
          name: 'discipulado05',
          path: '/discipulado05',
          builder: (context, params) => const Discipulado05Widget(),
        ),
        FFRoute(
          name: 'EBD23',
          path: '/ebd23',
          builder: (context, params) => const Ebd23Widget(),
        ),
        FFRoute(
          name: 'PEBD4_2023_01',
          path: '/pebd4202301',
          builder: (context, params) => const Pebd4202301Widget(),
        ),
        FFRoute(
          name: 'PEBD4_2023_02',
          path: '/pebd4202302',
          builder: (context, params) => const Pebd4202302Widget(),
        ),
        FFRoute(
          name: 'PEBD4_2023_08',
          path: '/pebd4202308',
          builder: (context, params) => const Pebd4202308Widget(),
        ),
        FFRoute(
          name: 'PEBD4_2023_09',
          path: '/pebd4202309',
          builder: (context, params) => const Pebd4202309Widget(),
        ),
        FFRoute(
          name: 'PEBD4_2023_07',
          path: '/pebd4202307',
          builder: (context, params) => const Pebd4202307Widget(),
        ),
        FFRoute(
          name: 'PEBD4_2023_06',
          path: '/pebd4202306',
          builder: (context, params) => const Pebd4202306Widget(),
        ),
        FFRoute(
          name: 'PEBD4_2023_05',
          path: '/pebd4202305',
          builder: (context, params) => const Pebd4202305Widget(),
        ),
        FFRoute(
          name: 'PEBD4_2023_04',
          path: '/pebd4202304',
          builder: (context, params) => const Pebd4202304Widget(),
        ),
        FFRoute(
          name: 'PEBD4_2023_03',
          path: '/pebd4202303',
          builder: (context, params) => const Pebd4202303Widget(),
        ),
        FFRoute(
          name: 'PEBD4_2023_10',
          path: '/pebd4202310',
          builder: (context, params) => const Pebd4202310Widget(),
        ),
        FFRoute(
          name: 'Setor_63_12_JardimPalanque',
          path: '/setor6312JardimPalanque',
          builder: (context, params) => const Setor6312JardimPalanqueWidget(),
        ),
        FFRoute(
          name: 'Setor_63_13_JardimPaulistinha',
          path: '/setor6313JardimPaulistinha',
          builder: (context, params) => const Setor6313JardimPaulistinhaWidget(),
        ),
        FFRoute(
          name: 'Setor_63_16_JardimSouzaRamos',
          path: '/setor6316JardimSouzaRamos',
          builder: (context, params) => const Setor6316JardimSouzaRamosWidget(),
        ),
        FFRoute(
          name: 'Setor_63_17_JardimVitoria',
          path: '/setor6317JardimVitoria',
          builder: (context, params) => const Setor6317JardimVitoriaWidget(),
        ),
        FFRoute(
          name: 'Setor_63_15_JardimPerola',
          path: '/setor6315JardimPerola',
          builder: (context, params) => const Setor6315JardimPerolaWidget(),
        ),
        FFRoute(
          name: 'Setor_63_14_JardimPedraBranca',
          path: '/setor6314JardimPedraBranca',
          builder: (context, params) => const Setor6314JardimPedraBrancaWidget(),
        ),
        FFRoute(
          name: 'PEBD3_2023_01',
          path: '/pebd3202301',
          builder: (context, params) => const Pebd3202301Widget(),
        ),
        FFRoute(
          name: 'PEBD2_2023_01',
          path: '/pebd2202301',
          builder: (context, params) => const Pebd2202301Widget(),
        ),
        FFRoute(
          name: 'PEBD1_2023_01',
          path: '/pebd1202301',
          builder: (context, params) => const Pebd1202301Widget(),
        ),
        FFRoute(
          name: 'livro01',
          path: '/livro01',
          builder: (context, params) => const Livro01Widget(),
        ),
        FFRoute(
          name: 'livro02',
          path: '/livro02',
          builder: (context, params) => const Livro02Widget(),
        ),
        FFRoute(
          name: 'LGPDForm',
          path: '/lGPDForm',
          builder: (context, params) => const LGPDFormWidget(),
        ),
        FFRoute(
          name: 'DepartamentosIgreja',
          path: '/departamentosIgreja',
          builder: (context, params) => const DepartamentosIgrejaWidget(),
        ),
        FFRoute(
          name: 'Setor_63_18_JardimWilmaFlor',
          path: '/setor6318JardimWilmaFlor',
          builder: (context, params) => const Setor6318JardimWilmaFlorWidget(),
        ),
        FFRoute(
          name: 'Setor_63_19_SerraDgua',
          path: '/setor6319SerraDgua',
          builder: (context, params) => const Setor6319SerraDguaWidget(),
        ),
        FFRoute(
          name: 'Ofertas',
          path: '/ofertas',
          builder: (context, params) => const OfertasWidget(),
        ),
        FFRoute(
          name: 'Setor_63_20_Tiradentes15C',
          path: '/setor6320Tiradentes15C',
          builder: (context, params) => const Setor6320Tiradentes15CWidget(),
        ),
        FFRoute(
          name: 'Setor_63_21_TiradentesDG',
          path: '/setor6321TiradentesDG',
          builder: (context, params) => const Setor6321TiradentesDGWidget(),
        ),
        FFRoute(
          name: 'Setor_63_22_TiradentesFerrovirios',
          path: '/setor6322TiradentesFerrovirios',
          builder: (context, params) => const Setor6322TiradentesFerroviriosWidget(),
        ),
        FFRoute(
          name: 'Setor_63_23_Vila1deMaio',
          path: '/setor6323Vila1deMaio',
          builder: (context, params) => const Setor6323Vila1deMaioWidget(),
        ),
        FFRoute(
          name: 'pedidos_oracao',
          path: '/pedidosOracao',
          builder: (context, params) => const PedidosOracaoWidget(),
        ),
        FFRoute(
          name: 'envio_testemunhos',
          path: '/envioTestemunhos',
          builder: (context, params) => const EnvioTestemunhosWidget(),
        ),
        FFRoute(
          name: 'PEBD1_2023_02',
          path: '/pebd1202302',
          builder: (context, params) => const Pebd1202302Widget(),
        ),
        FFRoute(
          name: 'PEBD1_2023_03',
          path: '/pebd1202303',
          builder: (context, params) => const Pebd1202303Widget(),
        ),
        FFRoute(
          name: 'PEBD1_2023_04',
          path: '/pebd1202304',
          builder: (context, params) => const Pebd1202304Widget(),
        ),
        FFRoute(
          name: 'PEBD1_2023_05',
          path: '/pebd1202305',
          builder: (context, params) => const Pebd1202305Widget(),
        ),
        FFRoute(
          name: 'PEBD1_2023_06',
          path: '/pebd1202306',
          builder: (context, params) => const Pebd1202306Widget(),
        ),
        FFRoute(
          name: 'PEBD1_2023_07',
          path: '/pebd1202307',
          builder: (context, params) => const Pebd1202307Widget(),
        ),
        FFRoute(
          name: 'PEBD1_2023_08',
          path: '/pebd1202308',
          builder: (context, params) => const Pebd1202308Widget(),
        ),
        FFRoute(
          name: 'PEBD1_2023_09',
          path: '/pebd1202309',
          builder: (context, params) => const Pebd1202309Widget(),
        ),
        FFRoute(
          name: 'PEBD1_2023_10',
          path: '/pebd1202310',
          builder: (context, params) => const Pebd1202310Widget(),
        ),
        FFRoute(
          name: 'Setor_63_24_FonteNova',
          path: '/setor6324FonteNova',
          builder: (context, params) => const Setor6324FonteNovaWidget(),
        ),
        FFRoute(
          name: 'bibliehome',
          path: '/bibliehome',
          builder: (context, params) => const BibliehomeWidget(),
        ),
        FFRoute(
          name: 'O2_novoTestamento',
          path: '/o2NovoTestamento',
          builder: (context, params) => const O2NovoTestamentoWidget(),
        ),
        FFRoute(
          name: 'O1_velhoTestamento',
          path: '/o1VelhoTestamento',
          builder: (context, params) => const O1VelhoTestamentoWidget(),
        ),
        FFRoute(
          name: 'menu_01_gen',
          path: '/menu01Gen',
          builder: (context, params) => const Menu01GenWidget(),
        ),
        FFRoute(
          name: 'Genesis02',
          path: '/genesis02',
          builder: (context, params) => const Genesis02Widget(),
        ),
        FFRoute(
          name: 'Genesis01',
          path: '/genesis01',
          builder: (context, params) => const Genesis01Widget(),
        ),
        FFRoute(
          name: 'Genesis03',
          path: '/genesis03',
          builder: (context, params) => const Genesis03Widget(),
        ),
        FFRoute(
          name: 'Genesis04',
          path: '/genesis04',
          builder: (context, params) => const Genesis04Widget(),
        ),
        FFRoute(
          name: 'Genesis05',
          path: '/genesis05',
          builder: (context, params) => const Genesis05Widget(),
        ),
        FFRoute(
          name: 'Genesis06',
          path: '/genesis06',
          builder: (context, params) => const Genesis06Widget(),
        ),
        FFRoute(
          name: 'Genesis07',
          path: '/genesis07',
          builder: (context, params) => const Genesis07Widget(),
        ),
        FFRoute(
          name: 'Genesis08',
          path: '/genesis08',
          builder: (context, params) => const Genesis08Widget(),
        ),
        FFRoute(
          name: 'Genesis09',
          path: '/genesis09',
          builder: (context, params) => const Genesis09Widget(),
        ),
        FFRoute(
          name: 'Genesis10',
          path: '/genesis10',
          builder: (context, params) => const Genesis10Widget(),
        ),
        FFRoute(
          name: 'Genesis21',
          path: '/genesis21',
          builder: (context, params) => const Genesis21Widget(),
        ),
        FFRoute(
          name: 'Genesis22',
          path: '/genesis22',
          builder: (context, params) => const Genesis22Widget(),
        ),
        FFRoute(
          name: 'Genesis23',
          path: '/genesis23',
          builder: (context, params) => const Genesis23Widget(),
        ),
        FFRoute(
          name: 'Genesis24',
          path: '/genesis24',
          builder: (context, params) => const Genesis24Widget(),
        ),
        FFRoute(
          name: 'Genesis25',
          path: '/genesis25',
          builder: (context, params) => const Genesis25Widget(),
        ),
        FFRoute(
          name: 'Genesis26',
          path: '/genesis26',
          builder: (context, params) => const Genesis26Widget(),
        ),
        FFRoute(
          name: 'Genesis27',
          path: '/genesis27',
          builder: (context, params) => const Genesis27Widget(),
        ),
        FFRoute(
          name: 'Genesis28',
          path: '/genesis28',
          builder: (context, params) => const Genesis28Widget(),
        ),
        FFRoute(
          name: 'Genesis29',
          path: '/genesis29',
          builder: (context, params) => const Genesis29Widget(),
        ),
        FFRoute(
          name: 'Genesis30',
          path: '/genesis30',
          builder: (context, params) => const Genesis30Widget(),
        ),
        FFRoute(
          name: 'Genesis11',
          path: '/genesis11',
          builder: (context, params) => const Genesis11Widget(),
        ),
        FFRoute(
          name: 'Genesis12',
          path: '/genesis12',
          builder: (context, params) => const Genesis12Widget(),
        ),
        FFRoute(
          name: 'Genesis13',
          path: '/genesis13',
          builder: (context, params) => const Genesis13Widget(),
        ),
        FFRoute(
          name: 'Genesis20',
          path: '/genesis20',
          builder: (context, params) => const Genesis20Widget(),
        ),
        FFRoute(
          name: 'Genesis14',
          path: '/genesis14',
          builder: (context, params) => const Genesis14Widget(),
        ),
        FFRoute(
          name: 'Genesis17',
          path: '/genesis17',
          builder: (context, params) => const Genesis17Widget(),
        ),
        FFRoute(
          name: 'Genesis18',
          path: '/genesis18',
          builder: (context, params) => const Genesis18Widget(),
        ),
        FFRoute(
          name: 'Genesis19',
          path: '/genesis19',
          builder: (context, params) => const Genesis19Widget(),
        ),
        FFRoute(
          name: 'Genesis15',
          path: '/genesis15',
          builder: (context, params) => const Genesis15Widget(),
        ),
        FFRoute(
          name: 'Genesis16',
          path: '/genesis16',
          builder: (context, params) => const Genesis16Widget(),
        ),
        FFRoute(
          name: 'Genesis31',
          path: '/genesis31',
          builder: (context, params) => const Genesis31Widget(),
        ),
        FFRoute(
          name: 'Genesis33',
          path: '/genesis33',
          builder: (context, params) => const Genesis33Widget(),
        ),
        FFRoute(
          name: 'Genesis48',
          path: '/genesis48',
          builder: (context, params) => const Genesis48Widget(),
        ),
        FFRoute(
          name: 'Genesis49',
          path: '/genesis49',
          builder: (context, params) => const Genesis49Widget(),
        ),
        FFRoute(
          name: 'Genesis32',
          path: '/genesis32',
          builder: (context, params) => const Genesis32Widget(),
        ),
        FFRoute(
          name: 'Genesis50',
          path: '/genesis50',
          builder: (context, params) => const Genesis50Widget(),
        ),
        FFRoute(
          name: 'Genesis37',
          path: '/genesis37',
          builder: (context, params) => const Genesis37Widget(),
        ),
        FFRoute(
          name: 'Genesis39',
          path: '/genesis39',
          builder: (context, params) => const Genesis39Widget(),
        ),
        FFRoute(
          name: 'Genesis42',
          path: '/genesis42',
          builder: (context, params) => const Genesis42Widget(),
        ),
        FFRoute(
          name: 'Genesis34',
          path: '/genesis34',
          builder: (context, params) => const Genesis34Widget(),
        ),
        FFRoute(
          name: 'Genesis36',
          path: '/genesis36',
          builder: (context, params) => const Genesis36Widget(),
        ),
        FFRoute(
          name: 'Genesis43',
          path: '/genesis43',
          builder: (context, params) => const Genesis43Widget(),
        ),
        FFRoute(
          name: 'Genesis44',
          path: '/genesis44',
          builder: (context, params) => const Genesis44Widget(),
        ),
        FFRoute(
          name: 'Genesis40',
          path: '/genesis40',
          builder: (context, params) => const Genesis40Widget(),
        ),
        FFRoute(
          name: 'Genesis38',
          path: '/genesis38',
          builder: (context, params) => const Genesis38Widget(),
        ),
        FFRoute(
          name: 'Genesis35',
          path: '/genesis35',
          builder: (context, params) => const Genesis35Widget(),
        ),
        FFRoute(
          name: 'Genesis46',
          path: '/genesis46',
          builder: (context, params) => const Genesis46Widget(),
        ),
        FFRoute(
          name: 'Genesis47',
          path: '/genesis47',
          builder: (context, params) => const Genesis47Widget(),
        ),
        FFRoute(
          name: 'Genesis45',
          path: '/genesis45',
          builder: (context, params) => const Genesis45Widget(),
        ),
        FFRoute(
          name: 'Genesis41',
          path: '/genesis41',
          builder: (context, params) => const Genesis41Widget(),
        ),
        FFRoute(
          name: 'Menu_06_Romanos',
          path: '/menu06Romanos',
          builder: (context, params) => const Menu06RomanosWidget(),
        ),
        FFRoute(
          name: 'menu_02_exo',
          path: '/menu02Exo',
          builder: (context, params) => const Menu02ExoWidget(),
        ),
        FFRoute(
          name: 'menu_03_lev',
          path: '/menu03Lev',
          builder: (context, params) => const Menu03LevWidget(),
        ),
        FFRoute(
          name: 'menu_04_num',
          path: '/menu04Num',
          builder: (context, params) => const Menu04NumWidget(),
        ),
        FFRoute(
          name: 'menu_05_deu',
          path: '/menu05Deu',
          builder: (context, params) => const Menu05DeuWidget(),
        ),
        FFRoute(
          name: 'Exodo01',
          path: '/exodo01',
          builder: (context, params) => const Exodo01Widget(),
        ),
        FFRoute(
          name: 'Exodo02',
          path: '/exodo02',
          builder: (context, params) => const Exodo02Widget(),
        ),
        FFRoute(
          name: 'Exodo18',
          path: '/exodo18',
          builder: (context, params) => const Exodo18Widget(),
        ),
        FFRoute(
          name: 'Exodo19',
          path: '/exodo19',
          builder: (context, params) => const Exodo19Widget(),
        ),
        FFRoute(
          name: 'Exodo20',
          path: '/exodo20',
          builder: (context, params) => const Exodo20Widget(),
        ),
        FFRoute(
          name: 'Exodo10',
          path: '/exodo10',
          builder: (context, params) => const Exodo10Widget(),
        ),
        FFRoute(
          name: 'Exodo11',
          path: '/exodo11',
          builder: (context, params) => const Exodo11Widget(),
        ),
        FFRoute(
          name: 'Exodo12',
          path: '/exodo12',
          builder: (context, params) => const Exodo12Widget(),
        ),
        FFRoute(
          name: 'Exodo13',
          path: '/exodo13',
          builder: (context, params) => const Exodo13Widget(),
        ),
        FFRoute(
          name: 'Exodo14',
          path: '/exodo14',
          builder: (context, params) => const Exodo14Widget(),
        ),
        FFRoute(
          name: 'Exodo15',
          path: '/exodo15',
          builder: (context, params) => const Exodo15Widget(),
        ),
        FFRoute(
          name: 'Exodo16',
          path: '/exodo16',
          builder: (context, params) => const Exodo16Widget(),
        ),
        FFRoute(
          name: 'Exodo17',
          path: '/exodo17',
          builder: (context, params) => const Exodo17Widget(),
        ),
        FFRoute(
          name: 'Exodo03',
          path: '/exodo03',
          builder: (context, params) => const Exodo03Widget(),
        ),
        FFRoute(
          name: 'Exodo04',
          path: '/exodo04',
          builder: (context, params) => const Exodo04Widget(),
        ),
        FFRoute(
          name: 'Exodo05',
          path: '/exodo05',
          builder: (context, params) => const Exodo05Widget(),
        ),
        FFRoute(
          name: 'Exodo06',
          path: '/exodo06',
          builder: (context, params) => const Exodo06Widget(),
        ),
        FFRoute(
          name: 'Exodo07',
          path: '/exodo07',
          builder: (context, params) => const Exodo07Widget(),
        ),
        FFRoute(
          name: 'Exodo08',
          path: '/exodo08',
          builder: (context, params) => const Exodo08Widget(),
        ),
        FFRoute(
          name: 'Exodo09',
          path: '/exodo09',
          builder: (context, params) => const Exodo09Widget(),
        ),
        FFRoute(
          name: 'Exodo21',
          path: '/exodo21',
          builder: (context, params) => const Exodo21Widget(),
        ),
        FFRoute(
          name: 'Exodo32',
          path: '/exodo32',
          builder: (context, params) => const Exodo32Widget(),
        ),
        FFRoute(
          name: 'Exodo34',
          path: '/exodo34',
          builder: (context, params) => const Exodo34Widget(),
        ),
        FFRoute(
          name: 'Exodo35',
          path: '/exodo35',
          builder: (context, params) => const Exodo35Widget(),
        ),
        FFRoute(
          name: 'Exodo36',
          path: '/exodo36',
          builder: (context, params) => const Exodo36Widget(),
        ),
        FFRoute(
          name: 'Exodo37',
          path: '/exodo37',
          builder: (context, params) => const Exodo37Widget(),
        ),
        FFRoute(
          name: 'Exodo38',
          path: '/exodo38',
          builder: (context, params) => const Exodo38Widget(),
        ),
        FFRoute(
          name: 'Exodo39',
          path: '/exodo39',
          builder: (context, params) => const Exodo39Widget(),
        ),
        FFRoute(
          name: 'Exodo40',
          path: '/exodo40',
          builder: (context, params) => const Exodo40Widget(),
        ),
        FFRoute(
          name: 'Exodo22',
          path: '/exodo22',
          builder: (context, params) => const Exodo22Widget(),
        ),
        FFRoute(
          name: 'Exodo23',
          path: '/exodo23',
          builder: (context, params) => const Exodo23Widget(),
        ),
        FFRoute(
          name: 'Exodo24',
          path: '/exodo24',
          builder: (context, params) => const Exodo24Widget(),
        ),
        FFRoute(
          name: 'Exodo25',
          path: '/exodo25',
          builder: (context, params) => const Exodo25Widget(),
        ),
        FFRoute(
          name: 'Exodo26',
          path: '/exodo26',
          builder: (context, params) => const Exodo26Widget(),
        ),
        FFRoute(
          name: 'Exodo27',
          path: '/exodo27',
          builder: (context, params) => const Exodo27Widget(),
        ),
        FFRoute(
          name: 'Exodo28',
          path: '/exodo28',
          builder: (context, params) => const Exodo28Widget(),
        ),
        FFRoute(
          name: 'Exodo29',
          path: '/exodo29',
          builder: (context, params) => const Exodo29Widget(),
        ),
        FFRoute(
          name: 'Exodo30',
          path: '/exodo30',
          builder: (context, params) => const Exodo30Widget(),
        ),
        FFRoute(
          name: 'Exodo31',
          path: '/exodo31',
          builder: (context, params) => const Exodo31Widget(),
        ),
        FFRoute(
          name: 'Exodo33',
          path: '/exodo33',
          builder: (context, params) => const Exodo33Widget(),
        ),
        FFRoute(
          name: 'Levitico01',
          path: '/levitico01',
          builder: (context, params) => const Levitico01Widget(),
        ),
        FFRoute(
          name: 'Numeros01',
          path: '/numeros01',
          builder: (context, params) => const Numeros01Widget(),
        ),
        FFRoute(
          name: 'Deuteronomio01',
          path: '/deuteronomio01',
          builder: (context, params) => const Deuteronomio01Widget(),
        ),
        FFRoute(
          name: 'Levitico02',
          path: '/levitico02',
          builder: (context, params) => const Levitico02Widget(),
        ),
        FFRoute(
          name: 'Levitico13',
          path: '/levitico13',
          builder: (context, params) => const Levitico13Widget(),
        ),
        FFRoute(
          name: 'Levitico21',
          path: '/levitico21',
          builder: (context, params) => const Levitico21Widget(),
        ),
        FFRoute(
          name: 'Levitico22',
          path: '/levitico22',
          builder: (context, params) => const Levitico22Widget(),
        ),
        FFRoute(
          name: 'Levitico23',
          path: '/levitico23',
          builder: (context, params) => const Levitico23Widget(),
        ),
        FFRoute(
          name: 'Levitico24',
          path: '/levitico24',
          builder: (context, params) => const Levitico24Widget(),
        ),
        FFRoute(
          name: 'Levitico25',
          path: '/levitico25',
          builder: (context, params) => const Levitico25Widget(),
        ),
        FFRoute(
          name: 'Levitico26',
          path: '/levitico26',
          builder: (context, params) => const Levitico26Widget(),
        ),
        FFRoute(
          name: 'Levitico27',
          path: '/levitico27',
          builder: (context, params) => const Levitico27Widget(),
        ),
        FFRoute(
          name: 'Levitico03',
          path: '/levitico03',
          builder: (context, params) => const Levitico03Widget(),
        ),
        FFRoute(
          name: 'Levitico04',
          path: '/levitico04',
          builder: (context, params) => const Levitico04Widget(),
        ),
        FFRoute(
          name: 'Levitico05',
          path: '/levitico05',
          builder: (context, params) => const Levitico05Widget(),
        ),
        FFRoute(
          name: 'Levitico06',
          path: '/levitico06',
          builder: (context, params) => const Levitico06Widget(),
        ),
        FFRoute(
          name: 'Levitico07',
          path: '/levitico07',
          builder: (context, params) => const Levitico07Widget(),
        ),
        FFRoute(
          name: 'Levitico08',
          path: '/levitico08',
          builder: (context, params) => const Levitico08Widget(),
        ),
        FFRoute(
          name: 'Levitico09',
          path: '/levitico09',
          builder: (context, params) => const Levitico09Widget(),
        ),
        FFRoute(
          name: 'Levitico10',
          path: '/levitico10',
          builder: (context, params) => const Levitico10Widget(),
        ),
        FFRoute(
          name: 'Levitico11',
          path: '/levitico11',
          builder: (context, params) => const Levitico11Widget(),
        ),
        FFRoute(
          name: 'Levitico12',
          path: '/levitico12',
          builder: (context, params) => const Levitico12Widget(),
        ),
        FFRoute(
          name: 'Levitico14',
          path: '/levitico14',
          builder: (context, params) => const Levitico14Widget(),
        ),
        FFRoute(
          name: 'Levitico15',
          path: '/levitico15',
          builder: (context, params) => const Levitico15Widget(),
        ),
        FFRoute(
          name: 'Levitico16',
          path: '/levitico16',
          builder: (context, params) => const Levitico16Widget(),
        ),
        FFRoute(
          name: 'Levitico17',
          path: '/levitico17',
          builder: (context, params) => const Levitico17Widget(),
        ),
        FFRoute(
          name: 'Levitico18',
          path: '/levitico18',
          builder: (context, params) => const Levitico18Widget(),
        ),
        FFRoute(
          name: 'Levitico19',
          path: '/levitico19',
          builder: (context, params) => const Levitico19Widget(),
        ),
        FFRoute(
          name: 'Levitico20',
          path: '/levitico20',
          builder: (context, params) => const Levitico20Widget(),
        ),
        FFRoute(
          name: 'Numeros02',
          path: '/numeros02',
          builder: (context, params) => const Numeros02Widget(),
        ),
        FFRoute(
          name: 'Numeros17',
          path: '/numeros17',
          builder: (context, params) => const Numeros17Widget(),
        ),
        FFRoute(
          name: 'Numeros20',
          path: '/numeros20',
          builder: (context, params) => const Numeros20Widget(),
        ),
        FFRoute(
          name: 'Numeros18',
          path: '/numeros18',
          builder: (context, params) => const Numeros18Widget(),
        ),
        FFRoute(
          name: 'Numeros13',
          path: '/numeros13',
          builder: (context, params) => const Numeros13Widget(),
        ),
        FFRoute(
          name: 'Numeros32',
          path: '/numeros32',
          builder: (context, params) => const Numeros32Widget(),
        ),
        FFRoute(
          name: 'Numeros33',
          path: '/numeros33',
          builder: (context, params) => const Numeros33Widget(),
        ),
        FFRoute(
          name: 'Numeros34',
          path: '/numeros34',
          builder: (context, params) => const Numeros34Widget(),
        ),
        FFRoute(
          name: 'Numeros35',
          path: '/numeros35',
          builder: (context, params) => const Numeros35Widget(),
        ),
        FFRoute(
          name: 'Numeros25',
          path: '/numeros25',
          builder: (context, params) => const Numeros25Widget(),
        ),
        FFRoute(
          name: 'Numeros23',
          path: '/numeros23',
          builder: (context, params) => const Numeros23Widget(),
        ),
        FFRoute(
          name: 'Numeros21',
          path: '/numeros21',
          builder: (context, params) => const Numeros21Widget(),
        ),
        FFRoute(
          name: 'Numeros03',
          path: '/numeros03',
          builder: (context, params) => const Numeros03Widget(),
        ),
        FFRoute(
          name: 'Numeros04',
          path: '/numeros04',
          builder: (context, params) => const Numeros04Widget(),
        ),
        FFRoute(
          name: 'Numeros05',
          path: '/numeros05',
          builder: (context, params) => const Numeros05Widget(),
        ),
        FFRoute(
          name: 'Numeros06',
          path: '/numeros06',
          builder: (context, params) => const Numeros06Widget(),
        ),
        FFRoute(
          name: 'Numeros07',
          path: '/numeros07',
          builder: (context, params) => const Numeros07Widget(),
        ),
        FFRoute(
          name: 'Numeros08',
          path: '/numeros08',
          builder: (context, params) => const Numeros08Widget(),
        ),
        FFRoute(
          name: 'Numeros09',
          path: '/numeros09',
          builder: (context, params) => const Numeros09Widget(),
        ),
        FFRoute(
          name: 'Numeros10',
          path: '/numeros10',
          builder: (context, params) => const Numeros10Widget(),
        ),
        FFRoute(
          name: 'Numeros11',
          path: '/numeros11',
          builder: (context, params) => const Numeros11Widget(),
        ),
        FFRoute(
          name: 'Numeros12',
          path: '/numeros12',
          builder: (context, params) => const Numeros12Widget(),
        ),
        FFRoute(
          name: 'Numeros14',
          path: '/numeros14',
          builder: (context, params) => const Numeros14Widget(),
        ),
        FFRoute(
          name: 'Numeros15',
          path: '/numeros15',
          builder: (context, params) => const Numeros15Widget(),
        ),
        FFRoute(
          name: 'Numeros16',
          path: '/numeros16',
          builder: (context, params) => const Numeros16Widget(),
        ),
        FFRoute(
          name: 'Numeros26',
          path: '/numeros26',
          builder: (context, params) => const Numeros26Widget(),
        ),
        FFRoute(
          name: 'Numeros27',
          path: '/numeros27',
          builder: (context, params) => const Numeros27Widget(),
        ),
        FFRoute(
          name: 'Numeros28',
          path: '/numeros28',
          builder: (context, params) => const Numeros28Widget(),
        ),
        FFRoute(
          name: 'Numeros29',
          path: '/numeros29',
          builder: (context, params) => const Numeros29Widget(),
        ),
        FFRoute(
          name: 'Numeros30',
          path: '/numeros30',
          builder: (context, params) => const Numeros30Widget(),
        ),
        FFRoute(
          name: 'Numeros31',
          path: '/numeros31',
          builder: (context, params) => const Numeros31Widget(),
        ),
        FFRoute(
          name: 'Numeros22',
          path: '/numeros22',
          builder: (context, params) => const Numeros22Widget(),
        ),
        FFRoute(
          name: 'Numeros24',
          path: '/numeros24',
          builder: (context, params) => const Numeros24Widget(),
        ),
        FFRoute(
          name: 'Numeros19',
          path: '/numeros19',
          builder: (context, params) => const Numeros19Widget(),
        ),
        FFRoute(
          name: 'Numeros36',
          path: '/numeros36',
          builder: (context, params) => const Numeros36Widget(),
        ),
        FFRoute(
          name: 'Deuteronomio02',
          path: '/deuteronomio02',
          builder: (context, params) => const Deuteronomio02Widget(),
        ),
        FFRoute(
          name: 'Deuteronomio13',
          path: '/deuteronomio13',
          builder: (context, params) => const Deuteronomio13Widget(),
        ),
        FFRoute(
          name: 'Deuteronomio24',
          path: '/deuteronomio24',
          builder: (context, params) => const Deuteronomio24Widget(),
        ),
        FFRoute(
          name: 'Deuteronomio29',
          path: '/deuteronomio29',
          builder: (context, params) => const Deuteronomio29Widget(),
        ),
        FFRoute(
          name: 'Deuteronomio30',
          path: '/deuteronomio30',
          builder: (context, params) => const Deuteronomio30Widget(),
        ),
        FFRoute(
          name: 'Deuteronomio31',
          path: '/deuteronomio31',
          builder: (context, params) => const Deuteronomio31Widget(),
        ),
        FFRoute(
          name: 'Deuteronomio32',
          path: '/deuteronomio32',
          builder: (context, params) => const Deuteronomio32Widget(),
        ),
        FFRoute(
          name: 'Deuteronomio33',
          path: '/deuteronomio33',
          builder: (context, params) => const Deuteronomio33Widget(),
        ),
        FFRoute(
          name: 'Deuteronomio34',
          path: '/deuteronomio34',
          builder: (context, params) => const Deuteronomio34Widget(),
        ),
        FFRoute(
          name: 'Deuteronomio03',
          path: '/deuteronomio03',
          builder: (context, params) => const Deuteronomio03Widget(),
        ),
        FFRoute(
          name: 'Deuteronomio04',
          path: '/deuteronomio04',
          builder: (context, params) => const Deuteronomio04Widget(),
        ),
        FFRoute(
          name: 'Deuteronomio05',
          path: '/deuteronomio05',
          builder: (context, params) => const Deuteronomio05Widget(),
        ),
        FFRoute(
          name: 'Deuteronomio06',
          path: '/deuteronomio06',
          builder: (context, params) => const Deuteronomio06Widget(),
        ),
        FFRoute(
          name: 'Deuteronomio07',
          path: '/deuteronomio07',
          builder: (context, params) => const Deuteronomio07Widget(),
        ),
        FFRoute(
          name: 'Deuteronomio08',
          path: '/deuteronomio08',
          builder: (context, params) => const Deuteronomio08Widget(),
        ),
        FFRoute(
          name: 'Deuteronomio09',
          path: '/deuteronomio09',
          builder: (context, params) => const Deuteronomio09Widget(),
        ),
        FFRoute(
          name: 'Deuteronomio10',
          path: '/deuteronomio10',
          builder: (context, params) => const Deuteronomio10Widget(),
        ),
        FFRoute(
          name: 'Deuteronomio11',
          path: '/deuteronomio11',
          builder: (context, params) => const Deuteronomio11Widget(),
        ),
        FFRoute(
          name: 'Deuteronomio12',
          path: '/deuteronomio12',
          builder: (context, params) => const Deuteronomio12Widget(),
        ),
        FFRoute(
          name: 'Deuteronomio14',
          path: '/deuteronomio14',
          builder: (context, params) => const Deuteronomio14Widget(),
        ),
        FFRoute(
          name: 'Deuteronomio15',
          path: '/deuteronomio15',
          builder: (context, params) => const Deuteronomio15Widget(),
        ),
        FFRoute(
          name: 'Deuteronomio16',
          path: '/deuteronomio16',
          builder: (context, params) => const Deuteronomio16Widget(),
        ),
        FFRoute(
          name: 'Deuteronomio17',
          path: '/deuteronomio17',
          builder: (context, params) => const Deuteronomio17Widget(),
        ),
        FFRoute(
          name: 'Deuteronomio18',
          path: '/deuteronomio18',
          builder: (context, params) => const Deuteronomio18Widget(),
        ),
        FFRoute(
          name: 'Deuteronomio19',
          path: '/deuteronomio19',
          builder: (context, params) => const Deuteronomio19Widget(),
        ),
        FFRoute(
          name: 'Deuteronomio20',
          path: '/deuteronomio20',
          builder: (context, params) => const Deuteronomio20Widget(),
        ),
        FFRoute(
          name: 'Deuteronomio21',
          path: '/deuteronomio21',
          builder: (context, params) => const Deuteronomio21Widget(),
        ),
        FFRoute(
          name: 'Deuteronomio22',
          path: '/deuteronomio22',
          builder: (context, params) => const Deuteronomio22Widget(),
        ),
        FFRoute(
          name: 'Deuteronomio23',
          path: '/deuteronomio23',
          builder: (context, params) => const Deuteronomio23Widget(),
        ),
        FFRoute(
          name: 'Deuteronomio25',
          path: '/deuteronomio25',
          builder: (context, params) => const Deuteronomio25Widget(),
        ),
        FFRoute(
          name: 'Deuteronomio26',
          path: '/deuteronomio26',
          builder: (context, params) => const Deuteronomio26Widget(),
        ),
        FFRoute(
          name: 'Deuteronomio27',
          path: '/deuteronomio27',
          builder: (context, params) => const Deuteronomio27Widget(),
        ),
        FFRoute(
          name: 'Deuteronomio28',
          path: '/deuteronomio28',
          builder: (context, params) => const Deuteronomio28Widget(),
        ),
        FFRoute(
          name: 'menu_06_jos',
          path: '/menu06Jos',
          builder: (context, params) => const Menu06JosWidget(),
        ),
        FFRoute(
          name: 'menu_07_jui',
          path: '/menu07Jui',
          builder: (context, params) => const Menu07JuiWidget(),
        ),
        FFRoute(
          name: 'menu_08_rute',
          path: '/menu08Rute',
          builder: (context, params) => const Menu08RuteWidget(),
        ),
        FFRoute(
          name: 'menu_09_1sam',
          path: '/menu091sam',
          builder: (context, params) => const Menu091samWidget(),
        ),
        FFRoute(
          name: 'menu_10_2sam',
          path: '/menu102sam',
          builder: (context, params) => const Menu102samWidget(),
        ),
        FFRoute(
          name: 'menu_13_1cro',
          path: '/menu131cro',
          builder: (context, params) => const Menu131croWidget(),
        ),
        FFRoute(
          name: 'menu_14_2cr',
          path: '/menu142cr',
          builder: (context, params) => const Menu142crWidget(),
        ),
        FFRoute(
          name: 'menu_11_1re',
          path: '/menu111re',
          builder: (context, params) => const Menu111reWidget(),
        ),
        FFRoute(
          name: 'menu_12_2reis',
          path: '/menu122reis',
          builder: (context, params) => const Menu122reisWidget(),
        ),
        FFRoute(
          name: 'menu_17_es',
          path: '/menu17Es',
          builder: (context, params) => const Menu17EsWidget(),
        ),
        FFRoute(
          name: 'josue_03',
          path: '/josue03',
          builder: (context, params) => const Josue03Widget(),
        ),
        FFRoute(
          name: 'josue_16',
          path: '/josue16',
          builder: (context, params) => const Josue16Widget(),
        ),
        FFRoute(
          name: 'josue_10',
          path: '/josue10',
          builder: (context, params) => const Josue10Widget(),
        ),
        FFRoute(
          name: 'josue_09',
          path: '/josue09',
          builder: (context, params) => const Josue09Widget(),
        ),
        FFRoute(
          name: 'josue_08',
          path: '/josue08',
          builder: (context, params) => const Josue08Widget(),
        ),
        FFRoute(
          name: 'josue_07',
          path: '/josue07',
          builder: (context, params) => const Josue07Widget(),
        ),
        FFRoute(
          name: 'josue_06',
          path: '/josue06',
          builder: (context, params) => const Josue06Widget(),
        ),
        FFRoute(
          name: 'josue_05',
          path: '/josue05',
          builder: (context, params) => const Josue05Widget(),
        ),
        FFRoute(
          name: 'josue_04',
          path: '/josue04',
          builder: (context, params) => const Josue04Widget(),
        ),
        FFRoute(
          name: 'juizes_20',
          path: '/juizes20',
          builder: (context, params) => const Juizes20Widget(),
        ),
        FFRoute(
          name: 'josue_01',
          path: '/josue01',
          builder: (context, params) => const Josue01Widget(),
        ),
        FFRoute(
          name: 'josue_02',
          path: '/josue02',
          builder: (context, params) => const Josue02Widget(),
        ),
        FFRoute(
          name: 'josue_23',
          path: '/josue23',
          builder: (context, params) => const Josue23Widget(),
        ),
        FFRoute(
          name: 'josue_22',
          path: '/josue22',
          builder: (context, params) => const Josue22Widget(),
        ),
        FFRoute(
          name: 'josue_21',
          path: '/josue21',
          builder: (context, params) => const Josue21Widget(),
        ),
        FFRoute(
          name: 'josue_20',
          path: '/josue20',
          builder: (context, params) => const Josue20Widget(),
        ),
        FFRoute(
          name: 'josue_19',
          path: '/josue19',
          builder: (context, params) => const Josue19Widget(),
        ),
        FFRoute(
          name: 'josue_18',
          path: '/josue18',
          builder: (context, params) => const Josue18Widget(),
        ),
        FFRoute(
          name: 'josue_17',
          path: '/josue17',
          builder: (context, params) => const Josue17Widget(),
        ),
        FFRoute(
          name: 'josue_15',
          path: '/josue15',
          builder: (context, params) => const Josue15Widget(),
        ),
        FFRoute(
          name: 'josue_14',
          path: '/josue14',
          builder: (context, params) => const Josue14Widget(),
        ),
        FFRoute(
          name: 'josue_13',
          path: '/josue13',
          builder: (context, params) => const Josue13Widget(),
        ),
        FFRoute(
          name: 'josue_12',
          path: '/josue12',
          builder: (context, params) => const Josue12Widget(),
        ),
        FFRoute(
          name: 'josue_11',
          path: '/josue11',
          builder: (context, params) => const Josue11Widget(),
        ),
        FFRoute(
          name: 'josue_24',
          path: '/josue24',
          builder: (context, params) => const Josue24Widget(),
        ),
        FFRoute(
          name: 'juizes_01',
          path: '/juizes01',
          builder: (context, params) => const Juizes01Widget(),
        ),
        FFRoute(
          name: 'juizes_02',
          path: '/juizes02',
          builder: (context, params) => const Juizes02Widget(),
        ),
        FFRoute(
          name: 'juizes_13',
          path: '/juizes13',
          builder: (context, params) => const Juizes13Widget(),
        ),
        FFRoute(
          name: 'juizes_14',
          path: '/juizes14',
          builder: (context, params) => const Juizes14Widget(),
        ),
        FFRoute(
          name: 'juizes_15',
          path: '/juizes15',
          builder: (context, params) => const Juizes15Widget(),
        ),
        FFRoute(
          name: 'juizes_16',
          path: '/juizes16',
          builder: (context, params) => const Juizes16Widget(),
        ),
        FFRoute(
          name: 'juizes_17',
          path: '/juizes17',
          builder: (context, params) => const Juizes17Widget(),
        ),
        FFRoute(
          name: 'juizes_18',
          path: '/juizes18',
          builder: (context, params) => const Juizes18Widget(),
        ),
        FFRoute(
          name: 'juizes_19',
          path: '/juizes19',
          builder: (context, params) => const Juizes19Widget(),
        ),
        FFRoute(
          name: 'juizes_21',
          path: '/juizes21',
          builder: (context, params) => const Juizes21Widget(),
        ),
        FFRoute(
          name: 'juizes_03',
          path: '/juizes03',
          builder: (context, params) => const Juizes03Widget(),
        ),
        FFRoute(
          name: 'juizes_04',
          path: '/juizes04',
          builder: (context, params) => const Juizes04Widget(),
        ),
        FFRoute(
          name: 'juizes_05',
          path: '/juizes05',
          builder: (context, params) => const Juizes05Widget(),
        ),
        FFRoute(
          name: 'juizes_06',
          path: '/juizes06',
          builder: (context, params) => const Juizes06Widget(),
        ),
        FFRoute(
          name: 'juizes_07',
          path: '/juizes07',
          builder: (context, params) => const Juizes07Widget(),
        ),
        FFRoute(
          name: 'juizes_08',
          path: '/juizes08',
          builder: (context, params) => const Juizes08Widget(),
        ),
        FFRoute(
          name: 'juizes_09',
          path: '/juizes09',
          builder: (context, params) => const Juizes09Widget(),
        ),
        FFRoute(
          name: 'juizes_10',
          path: '/juizes10',
          builder: (context, params) => const Juizes10Widget(),
        ),
        FFRoute(
          name: 'juizes_11',
          path: '/juizes11',
          builder: (context, params) => const Juizes11Widget(),
        ),
        FFRoute(
          name: 'juizes_12',
          path: '/juizes12',
          builder: (context, params) => const Juizes12Widget(),
        ),
        FFRoute(
          name: 'rute_01',
          path: '/rute01',
          builder: (context, params) => const Rute01Widget(),
        ),
        FFRoute(
          name: 'samuel_01',
          path: '/samuel01',
          builder: (context, params) => const Samuel01Widget(),
        ),
        FFRoute(
          name: 'reis2_01',
          path: '/reis201',
          builder: (context, params) => const Reis201Widget(),
        ),
        FFRoute(
          name: 'reis_01',
          path: '/reis01',
          builder: (context, params) => const Reis01Widget(),
        ),
        FFRoute(
          name: 'samuel2_01',
          path: '/samuel201',
          builder: (context, params) => const Samuel201Widget(),
        ),
        FFRoute(
          name: 'cronicas1_01',
          path: '/cronicas101',
          builder: (context, params) => const Cronicas101Widget(),
        ),
        FFRoute(
          name: 'ester_01',
          path: '/ester01',
          builder: (context, params) => const Ester01Widget(),
        ),
        FFRoute(
          name: 'neemias_01',
          path: '/neemias01',
          builder: (context, params) => const Neemias01Widget(),
        ),
        FFRoute(
          name: 'cronicas2_01',
          path: '/cronicas201',
          builder: (context, params) => const Cronicas201Widget(),
        ),
        FFRoute(
          name: 'estras_01',
          path: '/estras01',
          builder: (context, params) => const Estras01Widget(),
        ),
        FFRoute(
          name: 'rute_02',
          path: '/rute02',
          builder: (context, params) => const Rute02Widget(),
        ),
        FFRoute(
          name: 'rute_03',
          path: '/rute03',
          builder: (context, params) => const Rute03Widget(),
        ),
        FFRoute(
          name: 'rute_04',
          path: '/rute04',
          builder: (context, params) => const Rute04Widget(),
        ),
        FFRoute(
          name: 'samuel_02',
          path: '/samuel02',
          builder: (context, params) => const Samuel02Widget(),
        ),
        FFRoute(
          name: 'samuel_30',
          path: '/samuel30',
          builder: (context, params) => const Samuel30Widget(),
        ),
        FFRoute(
          name: 'samuel_19',
          path: '/samuel19',
          builder: (context, params) => const Samuel19Widget(),
        ),
        FFRoute(
          name: 'samuel_16',
          path: '/samuel16',
          builder: (context, params) => const Samuel16Widget(),
        ),
        FFRoute(
          name: 'samuel_15',
          path: '/samuel15',
          builder: (context, params) => const Samuel15Widget(),
        ),
        FFRoute(
          name: 'samuel_14',
          path: '/samuel14',
          builder: (context, params) => const Samuel14Widget(),
        ),
        FFRoute(
          name: 'samuel_13',
          path: '/samuel13',
          builder: (context, params) => const Samuel13Widget(),
        ),
        FFRoute(
          name: 'samuel_12',
          path: '/samuel12',
          builder: (context, params) => const Samuel12Widget(),
        ),
        FFRoute(
          name: 'samuel_11',
          path: '/samuel11',
          builder: (context, params) => const Samuel11Widget(),
        ),
        FFRoute(
          name: 'samuel_03',
          path: '/samuel03',
          builder: (context, params) => const Samuel03Widget(),
        ),
        FFRoute(
          name: 'samuel_04',
          path: '/samuel04',
          builder: (context, params) => const Samuel04Widget(),
        ),
        FFRoute(
          name: 'samuel_05',
          path: '/samuel05',
          builder: (context, params) => const Samuel05Widget(),
        ),
        FFRoute(
          name: 'samuel_06',
          path: '/samuel06',
          builder: (context, params) => const Samuel06Widget(),
        ),
        FFRoute(
          name: 'samuel_07',
          path: '/samuel07',
          builder: (context, params) => const Samuel07Widget(),
        ),
        FFRoute(
          name: 'samuel_08',
          path: '/samuel08',
          builder: (context, params) => const Samuel08Widget(),
        ),
        FFRoute(
          name: 'samuel_09',
          path: '/samuel09',
          builder: (context, params) => const Samuel09Widget(),
        ),
        FFRoute(
          name: 'samuel_10',
          path: '/samuel10',
          builder: (context, params) => const Samuel10Widget(),
        ),
        FFRoute(
          name: 'samuel_31',
          path: '/samuel31',
          builder: (context, params) => const Samuel31Widget(),
        ),
        FFRoute(
          name: 'samuel_29',
          path: '/samuel29',
          builder: (context, params) => const Samuel29Widget(),
        ),
        FFRoute(
          name: 'samuel_28',
          path: '/samuel28',
          builder: (context, params) => const Samuel28Widget(),
        ),
        FFRoute(
          name: 'samuel_27',
          path: '/samuel27',
          builder: (context, params) => const Samuel27Widget(),
        ),
        FFRoute(
          name: 'samuel_26',
          path: '/samuel26',
          builder: (context, params) => const Samuel26Widget(),
        ),
        FFRoute(
          name: 'samuel_25',
          path: '/samuel25',
          builder: (context, params) => const Samuel25Widget(),
        ),
        FFRoute(
          name: 'samuel_24',
          path: '/samuel24',
          builder: (context, params) => const Samuel24Widget(),
        ),
        FFRoute(
          name: 'samuel_23',
          path: '/samuel23',
          builder: (context, params) => const Samuel23Widget(),
        ),
        FFRoute(
          name: 'samuel_22',
          path: '/samuel22',
          builder: (context, params) => const Samuel22Widget(),
        ),
        FFRoute(
          name: 'samuel_21',
          path: '/samuel21',
          builder: (context, params) => const Samuel21Widget(),
        ),
        FFRoute(
          name: 'samuel_20',
          path: '/samuel20',
          builder: (context, params) => const Samuel20Widget(),
        ),
        FFRoute(
          name: 'samuel_18',
          path: '/samuel18',
          builder: (context, params) => const Samuel18Widget(),
        ),
        FFRoute(
          name: 'samuel_17',
          path: '/samuel17',
          builder: (context, params) => const Samuel17Widget(),
        ),
        FFRoute(
          name: 'samuel2_02',
          path: '/samuel202',
          builder: (context, params) => const Samuel202Widget(),
        ),
        FFRoute(
          name: 'samuel2_13',
          path: '/samuel213',
          builder: (context, params) => const Samuel213Widget(),
        ),
        FFRoute(
          name: 'samuel2_18',
          path: '/samuel218',
          builder: (context, params) => const Samuel218Widget(),
        ),
        FFRoute(
          name: 'samuel2_19',
          path: '/samuel219',
          builder: (context, params) => const Samuel219Widget(),
        ),
        FFRoute(
          name: 'samuel2_20',
          path: '/samuel220',
          builder: (context, params) => const Samuel220Widget(),
        ),
        FFRoute(
          name: 'samuel2_21',
          path: '/samuel221',
          builder: (context, params) => const Samuel221Widget(),
        ),
        FFRoute(
          name: 'samuel2_22',
          path: '/samuel222',
          builder: (context, params) => const Samuel222Widget(),
        ),
        FFRoute(
          name: 'samuel2_23',
          path: '/samuel223',
          builder: (context, params) => const Samuel223Widget(),
        ),
        FFRoute(
          name: 'samuel2_24',
          path: '/samuel224',
          builder: (context, params) => const Samuel224Widget(),
        ),
        FFRoute(
          name: 'samuel2_03',
          path: '/samuel203',
          builder: (context, params) => const Samuel203Widget(),
        ),
        FFRoute(
          name: 'samuel2_04',
          path: '/samuel204',
          builder: (context, params) => const Samuel204Widget(),
        ),
        FFRoute(
          name: 'samuel2_05',
          path: '/samuel205',
          builder: (context, params) => const Samuel205Widget(),
        ),
        FFRoute(
          name: 'samuel2_06',
          path: '/samuel206',
          builder: (context, params) => const Samuel206Widget(),
        ),
        FFRoute(
          name: 'samuel2_07',
          path: '/samuel207',
          builder: (context, params) => const Samuel207Widget(),
        ),
        FFRoute(
          name: 'samuel2_08',
          path: '/samuel208',
          builder: (context, params) => const Samuel208Widget(),
        ),
        FFRoute(
          name: 'samuel2_09',
          path: '/samuel209',
          builder: (context, params) => const Samuel209Widget(),
        ),
        FFRoute(
          name: 'samuel2_10',
          path: '/samuel210',
          builder: (context, params) => const Samuel210Widget(),
        ),
        FFRoute(
          name: 'samuel2_11',
          path: '/samuel211',
          builder: (context, params) => const Samuel211Widget(),
        ),
        FFRoute(
          name: 'samuel2_12',
          path: '/samuel212',
          builder: (context, params) => const Samuel212Widget(),
        ),
        FFRoute(
          name: 'samuel2_14',
          path: '/samuel214',
          builder: (context, params) => const Samuel214Widget(),
        ),
        FFRoute(
          name: 'samuel2_15',
          path: '/samuel215',
          builder: (context, params) => const Samuel215Widget(),
        ),
        FFRoute(
          name: 'samuel2_16',
          path: '/samuel216',
          builder: (context, params) => const Samuel216Widget(),
        ),
        FFRoute(
          name: 'samuel2_17',
          path: '/samuel217',
          builder: (context, params) => const Samuel217Widget(),
        ),
        FFRoute(
          name: 'menu_15_esd',
          path: '/menu15Esd',
          builder: (context, params) => const Menu15EsdWidget(),
        ),
        FFRoute(
          name: 'menu_16_ne',
          path: '/menu16Ne',
          builder: (context, params) => const Menu16NeWidget(),
        ),
        FFRoute(
          name: 'reis_02',
          path: '/reis02',
          builder: (context, params) => const Reis02Widget(),
        ),
        FFRoute(
          name: 'reis_13',
          path: '/reis13',
          builder: (context, params) => const Reis13Widget(),
        ),
        FFRoute(
          name: 'reis_16',
          path: '/reis16',
          builder: (context, params) => const Reis16Widget(),
        ),
        FFRoute(
          name: 'reis_17',
          path: '/reis17',
          builder: (context, params) => const Reis17Widget(),
        ),
        FFRoute(
          name: 'reis_18',
          path: '/reis18',
          builder: (context, params) => const Reis18Widget(),
        ),
        FFRoute(
          name: 'reis_19',
          path: '/reis19',
          builder: (context, params) => const Reis19Widget(),
        ),
        FFRoute(
          name: 'reis_20',
          path: '/reis20',
          builder: (context, params) => const Reis20Widget(),
        ),
        FFRoute(
          name: 'reis_21',
          path: '/reis21',
          builder: (context, params) => const Reis21Widget(),
        ),
        FFRoute(
          name: 'reis_22',
          path: '/reis22',
          builder: (context, params) => const Reis22Widget(),
        ),
        FFRoute(
          name: 'reis_03',
          path: '/reis03',
          builder: (context, params) => const Reis03Widget(),
        ),
        FFRoute(
          name: 'reis_04',
          path: '/reis04',
          builder: (context, params) => const Reis04Widget(),
        ),
        FFRoute(
          name: 'reis_05',
          path: '/reis05',
          builder: (context, params) => const Reis05Widget(),
        ),
        FFRoute(
          name: 'reis_06',
          path: '/reis06',
          builder: (context, params) => const Reis06Widget(),
        ),
        FFRoute(
          name: 'reis_07',
          path: '/reis07',
          builder: (context, params) => const Reis07Widget(),
        ),
        FFRoute(
          name: 'reis_08',
          path: '/reis08',
          builder: (context, params) => const Reis08Widget(),
        ),
        FFRoute(
          name: 'reis_09',
          path: '/reis09',
          builder: (context, params) => const Reis09Widget(),
        ),
        FFRoute(
          name: 'reis_10',
          path: '/reis10',
          builder: (context, params) => const Reis10Widget(),
        ),
        FFRoute(
          name: 'reis_11',
          path: '/reis11',
          builder: (context, params) => const Reis11Widget(),
        ),
        FFRoute(
          name: 'reis_12',
          path: '/reis12',
          builder: (context, params) => const Reis12Widget(),
        ),
        FFRoute(
          name: 'reis_14',
          path: '/reis14',
          builder: (context, params) => const Reis14Widget(),
        ),
        FFRoute(
          name: 'reis_15',
          path: '/reis15',
          builder: (context, params) => const Reis15Widget(),
        ),
        FFRoute(
          name: 'reis2_02',
          path: '/reis202',
          builder: (context, params) => const Reis202Widget(),
        ),
        FFRoute(
          name: 'reis2_13',
          path: '/reis213',
          builder: (context, params) => const Reis213Widget(),
        ),
        FFRoute(
          name: 'reis2_17',
          path: '/reis217',
          builder: (context, params) => const Reis217Widget(),
        ),
        FFRoute(
          name: 'reis2_18',
          path: '/reis218',
          builder: (context, params) => const Reis218Widget(),
        ),
        FFRoute(
          name: 'reis2_19',
          path: '/reis219',
          builder: (context, params) => const Reis219Widget(),
        ),
        FFRoute(
          name: 'reis2_20',
          path: '/reis220',
          builder: (context, params) => const Reis220Widget(),
        ),
        FFRoute(
          name: 'reis2_21',
          path: '/reis221',
          builder: (context, params) => const Reis221Widget(),
        ),
        FFRoute(
          name: 'reis2_22',
          path: '/reis222',
          builder: (context, params) => const Reis222Widget(),
        ),
        FFRoute(
          name: 'reis2_23',
          path: '/reis223',
          builder: (context, params) => const Reis223Widget(),
        ),
        FFRoute(
          name: 'reis2_03',
          path: '/reis203',
          builder: (context, params) => const Reis203Widget(),
        ),
        FFRoute(
          name: 'reis2_04',
          path: '/reis204',
          builder: (context, params) => const Reis204Widget(),
        ),
        FFRoute(
          name: 'reis2_05',
          path: '/reis205',
          builder: (context, params) => const Reis205Widget(),
        ),
        FFRoute(
          name: 'reis2_06',
          path: '/reis206',
          builder: (context, params) => const Reis206Widget(),
        ),
        FFRoute(
          name: 'reis2_07',
          path: '/reis207',
          builder: (context, params) => const Reis207Widget(),
        ),
        FFRoute(
          name: 'reis2_08',
          path: '/reis208',
          builder: (context, params) => const Reis208Widget(),
        ),
        FFRoute(
          name: 'reis2_09',
          path: '/reis209',
          builder: (context, params) => const Reis209Widget(),
        ),
        FFRoute(
          name: 'reis2_10',
          path: '/reis210',
          builder: (context, params) => const Reis210Widget(),
        ),
        FFRoute(
          name: 'reis2_11',
          path: '/reis211',
          builder: (context, params) => const Reis211Widget(),
        ),
        FFRoute(
          name: 'reis2_12',
          path: '/reis212',
          builder: (context, params) => const Reis212Widget(),
        ),
        FFRoute(
          name: 'reis2_24',
          path: '/reis224',
          builder: (context, params) => const Reis224Widget(),
        ),
        FFRoute(
          name: 'reis2_14',
          path: '/reis214',
          builder: (context, params) => const Reis214Widget(),
        ),
        FFRoute(
          name: 'reis2_15',
          path: '/reis215',
          builder: (context, params) => const Reis215Widget(),
        ),
        FFRoute(
          name: 'reis2_16',
          path: '/reis216',
          builder: (context, params) => const Reis216Widget(),
        ),
        FFRoute(
          name: 'reis2_25',
          path: '/reis225',
          builder: (context, params) => const Reis225Widget(),
        ),
        FFRoute(
          name: 'cronicas1_02',
          path: '/cronicas102',
          builder: (context, params) => const Cronicas102Widget(),
        ),
        FFRoute(
          name: 'cronicas1_28',
          path: '/cronicas128',
          builder: (context, params) => const Cronicas128Widget(),
        ),
        FFRoute(
          name: 'cronicas1_18',
          path: '/cronicas118',
          builder: (context, params) => const Cronicas118Widget(),
        ),
        FFRoute(
          name: 'cronicas1_17',
          path: '/cronicas117',
          builder: (context, params) => const Cronicas117Widget(),
        ),
        FFRoute(
          name: 'cronicas1_16',
          path: '/cronicas116',
          builder: (context, params) => const Cronicas116Widget(),
        ),
        FFRoute(
          name: 'cronicas1_15',
          path: '/cronicas115',
          builder: (context, params) => const Cronicas115Widget(),
        ),
        FFRoute(
          name: 'cronicas1_14',
          path: '/cronicas114',
          builder: (context, params) => const Cronicas114Widget(),
        ),
        FFRoute(
          name: 'cronicas1_13',
          path: '/cronicas113',
          builder: (context, params) => const Cronicas113Widget(),
        ),
        FFRoute(
          name: 'cronicas1_12',
          path: '/cronicas112',
          builder: (context, params) => const Cronicas112Widget(),
        ),
        FFRoute(
          name: 'cronicas1_03',
          path: '/cronicas103',
          builder: (context, params) => const Cronicas103Widget(),
        ),
        FFRoute(
          name: 'cronicas1_04',
          path: '/cronicas104',
          builder: (context, params) => const Cronicas104Widget(),
        ),
        FFRoute(
          name: 'cronicas1_05',
          path: '/cronicas105',
          builder: (context, params) => const Cronicas105Widget(),
        ),
        FFRoute(
          name: 'cronicas1_06',
          path: '/cronicas106',
          builder: (context, params) => const Cronicas106Widget(),
        ),
        FFRoute(
          name: 'cronicas1_07',
          path: '/cronicas107',
          builder: (context, params) => const Cronicas107Widget(),
        ),
        FFRoute(
          name: 'cronicas1_08',
          path: '/cronicas108',
          builder: (context, params) => const Cronicas108Widget(),
        ),
        FFRoute(
          name: 'cronicas1_09',
          path: '/cronicas109',
          builder: (context, params) => const Cronicas109Widget(),
        ),
        FFRoute(
          name: 'cronicas1_10',
          path: '/cronicas110',
          builder: (context, params) => const Cronicas110Widget(),
        ),
        FFRoute(
          name: 'cronicas1_11',
          path: '/cronicas111',
          builder: (context, params) => const Cronicas111Widget(),
        ),
        FFRoute(
          name: 'cronicas1_29',
          path: '/cronicas129',
          builder: (context, params) => const Cronicas129Widget(),
        ),
        FFRoute(
          name: 'cronicas1_27',
          path: '/cronicas127',
          builder: (context, params) => const Cronicas127Widget(),
        ),
        FFRoute(
          name: 'cronicas1_26',
          path: '/cronicas126',
          builder: (context, params) => const Cronicas126Widget(),
        ),
        FFRoute(
          name: 'cronicas1_25',
          path: '/cronicas125',
          builder: (context, params) => const Cronicas125Widget(),
        ),
        FFRoute(
          name: 'cronicas1_24',
          path: '/cronicas124',
          builder: (context, params) => const Cronicas124Widget(),
        ),
        FFRoute(
          name: 'cronicas1_23',
          path: '/cronicas123',
          builder: (context, params) => const Cronicas123Widget(),
        ),
        FFRoute(
          name: 'cronicas1_22',
          path: '/cronicas122',
          builder: (context, params) => const Cronicas122Widget(),
        ),
        FFRoute(
          name: 'cronicas1_21',
          path: '/cronicas121',
          builder: (context, params) => const Cronicas121Widget(),
        ),
        FFRoute(
          name: 'cronicas1_20',
          path: '/cronicas120',
          builder: (context, params) => const Cronicas120Widget(),
        ),
        FFRoute(
          name: 'cronicas1_19',
          path: '/cronicas119',
          builder: (context, params) => const Cronicas119Widget(),
        ),
        FFRoute(
          name: 'cronicas2_06',
          path: '/cronicas206',
          builder: (context, params) => const Cronicas206Widget(),
        ),
        FFRoute(
          name: 'cronicas2_26',
          path: '/cronicas226',
          builder: (context, params) => const Cronicas226Widget(),
        ),
        FFRoute(
          name: 'cronicas2_15',
          path: '/cronicas215',
          builder: (context, params) => const Cronicas215Widget(),
        ),
        FFRoute(
          name: 'cronicas2_08',
          path: '/cronicas208',
          builder: (context, params) => const Cronicas208Widget(),
        ),
        FFRoute(
          name: 'cronicas2_07',
          path: '/cronicas207',
          builder: (context, params) => const Cronicas207Widget(),
        ),
        FFRoute(
          name: 'cronicas2_05',
          path: '/cronicas205',
          builder: (context, params) => const Cronicas205Widget(),
        ),
        FFRoute(
          name: 'cronicas2_04',
          path: '/cronicas204',
          builder: (context, params) => const Cronicas204Widget(),
        ),
        FFRoute(
          name: 'cronicas2_03',
          path: '/cronicas203',
          builder: (context, params) => const Cronicas203Widget(),
        ),
        FFRoute(
          name: 'cronicas2_02',
          path: '/cronicas202',
          builder: (context, params) => const Cronicas202Widget(),
        ),
        FFRoute(
          name: 'cronicas2_36',
          path: '/cronicas236',
          builder: (context, params) => const Cronicas236Widget(),
        ),
        FFRoute(
          name: 'cronicas2_35',
          path: '/cronicas235',
          builder: (context, params) => const Cronicas235Widget(),
        ),
        FFRoute(
          name: 'cronicas2_34',
          path: '/cronicas234',
          builder: (context, params) => const Cronicas234Widget(),
        ),
        FFRoute(
          name: 'cronicas2_33',
          path: '/cronicas233',
          builder: (context, params) => const Cronicas233Widget(),
        ),
        FFRoute(
          name: 'cronicas2_32',
          path: '/cronicas232',
          builder: (context, params) => const Cronicas232Widget(),
        ),
        FFRoute(
          name: 'cronicas2_31',
          path: '/cronicas231',
          builder: (context, params) => const Cronicas231Widget(),
        ),
        FFRoute(
          name: 'cronicas2_30',
          path: '/cronicas230',
          builder: (context, params) => const Cronicas230Widget(),
        ),
        FFRoute(
          name: 'cronicas2_29',
          path: '/cronicas229',
          builder: (context, params) => const Cronicas229Widget(),
        ),
        FFRoute(
          name: 'cronicas2_28',
          path: '/cronicas228',
          builder: (context, params) => const Cronicas228Widget(),
        ),
        FFRoute(
          name: 'cronicas2_27',
          path: '/cronicas227',
          builder: (context, params) => const Cronicas227Widget(),
        ),
        FFRoute(
          name: 'cronicas2_25',
          path: '/cronicas225',
          builder: (context, params) => const Cronicas225Widget(),
        ),
        FFRoute(
          name: 'cronicas2_24',
          path: '/cronicas224',
          builder: (context, params) => const Cronicas224Widget(),
        ),
        FFRoute(
          name: 'cronicas2_23',
          path: '/cronicas223',
          builder: (context, params) => const Cronicas223Widget(),
        ),
        FFRoute(
          name: 'cronicas2_22',
          path: '/cronicas222',
          builder: (context, params) => const Cronicas222Widget(),
        ),
        FFRoute(
          name: 'cronicas2_21',
          path: '/cronicas221',
          builder: (context, params) => const Cronicas221Widget(),
        ),
        FFRoute(
          name: 'cronicas2_20',
          path: '/cronicas220',
          builder: (context, params) => const Cronicas220Widget(),
        ),
        FFRoute(
          name: 'cronicas2_19',
          path: '/cronicas219',
          builder: (context, params) => const Cronicas219Widget(),
        ),
        FFRoute(
          name: 'cronicas2_18',
          path: '/cronicas218',
          builder: (context, params) => const Cronicas218Widget(),
        ),
        FFRoute(
          name: 'cronicas2_17',
          path: '/cronicas217',
          builder: (context, params) => const Cronicas217Widget(),
        ),
        FFRoute(
          name: 'cronicas2_16',
          path: '/cronicas216',
          builder: (context, params) => const Cronicas216Widget(),
        ),
        FFRoute(
          name: 'cronicas2_14',
          path: '/cronicas214',
          builder: (context, params) => const Cronicas214Widget(),
        ),
        FFRoute(
          name: 'cronicas2_13',
          path: '/cronicas213',
          builder: (context, params) => const Cronicas213Widget(),
        ),
        FFRoute(
          name: 'cronicas2_12',
          path: '/cronicas212',
          builder: (context, params) => const Cronicas212Widget(),
        ),
        FFRoute(
          name: 'cronicas2_11',
          path: '/cronicas211',
          builder: (context, params) => const Cronicas211Widget(),
        ),
        FFRoute(
          name: 'cronicas2_10',
          path: '/cronicas210',
          builder: (context, params) => const Cronicas210Widget(),
        ),
        FFRoute(
          name: 'cronicas2_09',
          path: '/cronicas209',
          builder: (context, params) => const Cronicas209Widget(),
        ),
        FFRoute(
          name: 'estras_02',
          path: '/estras02',
          builder: (context, params) => const Estras02Widget(),
        ),
        FFRoute(
          name: 'estras_03',
          path: '/estras03',
          builder: (context, params) => const Estras03Widget(),
        ),
        FFRoute(
          name: 'estras_04',
          path: '/estras04',
          builder: (context, params) => const Estras04Widget(),
        ),
        FFRoute(
          name: 'estras_05',
          path: '/estras05',
          builder: (context, params) => const Estras05Widget(),
        ),
        FFRoute(
          name: 'estras_06',
          path: '/estras06',
          builder: (context, params) => const Estras06Widget(),
        ),
        FFRoute(
          name: 'estras_07',
          path: '/estras07',
          builder: (context, params) => const Estras07Widget(),
        ),
        FFRoute(
          name: 'estras_08',
          path: '/estras08',
          builder: (context, params) => const Estras08Widget(),
        ),
        FFRoute(
          name: 'estras_10',
          path: '/estras10',
          builder: (context, params) => const Estras10Widget(),
        ),
        FFRoute(
          name: 'estras_09',
          path: '/estras09',
          builder: (context, params) => const Estras09Widget(),
        ),
        FFRoute(
          name: 'ester_02',
          path: '/ester02',
          builder: (context, params) => const Ester02Widget(),
        ),
        FFRoute(
          name: 'ester_03',
          path: '/ester03',
          builder: (context, params) => const Ester03Widget(),
        ),
        FFRoute(
          name: 'ester_04',
          path: '/ester04',
          builder: (context, params) => const Ester04Widget(),
        ),
        FFRoute(
          name: 'ester_05',
          path: '/ester05',
          builder: (context, params) => const Ester05Widget(),
        ),
        FFRoute(
          name: 'ester_06',
          path: '/ester06',
          builder: (context, params) => const Ester06Widget(),
        ),
        FFRoute(
          name: 'ester_07',
          path: '/ester07',
          builder: (context, params) => const Ester07Widget(),
        ),
        FFRoute(
          name: 'ester_08',
          path: '/ester08',
          builder: (context, params) => const Ester08Widget(),
        ),
        FFRoute(
          name: 'ester_09',
          path: '/ester09',
          builder: (context, params) => const Ester09Widget(),
        ),
        FFRoute(
          name: 'ester_10',
          path: '/ester10',
          builder: (context, params) => const Ester10Widget(),
        ),
        FFRoute(
          name: 'menu18_joh',
          path: '/menu18Joh',
          builder: (context, params) => const Menu18JohWidget(),
        ),
        FFRoute(
          name: 'Menu_19_sal',
          path: '/menu19Sal',
          builder: (context, params) => const Menu19SalWidget(),
        ),
        FFRoute(
          name: 'Menu_20_prov',
          path: '/menu20Prov',
          builder: (context, params) => const Menu20ProvWidget(),
        ),
        FFRoute(
          name: 'Menu_21_ecl',
          path: '/menu21Ecl',
          builder: (context, params) => const Menu21EclWidget(),
        ),
        FFRoute(
          name: 'joh01',
          path: '/joh01',
          builder: (context, params) => const Joh01Widget(),
        ),
        FFRoute(
          name: 'salmos_001',
          path: '/salmos001',
          builder: (context, params) => const Salmos001Widget(),
        ),
        FFRoute(
          name: 'prov01',
          path: '/prov01',
          builder: (context, params) => const Prov01Widget(),
        ),
        FFRoute(
          name: 'eclis01',
          path: '/eclis01',
          builder: (context, params) => const Eclis01Widget(),
        ),
        FFRoute(
          name: 'Cant01',
          path: '/cant01',
          builder: (context, params) => const Cant01Widget(),
        ),
        FFRoute(
          name: 'joh02',
          path: '/joh02',
          builder: (context, params) => const Joh02Widget(),
        ),
        FFRoute(
          name: 'joh38',
          path: '/joh38',
          builder: (context, params) => const Joh38Widget(),
        ),
        FFRoute(
          name: 'joh28',
          path: '/joh28',
          builder: (context, params) => const Joh28Widget(),
        ),
        FFRoute(
          name: 'joh16',
          path: '/joh16',
          builder: (context, params) => const Joh16Widget(),
        ),
        FFRoute(
          name: 'joh14',
          path: '/joh14',
          builder: (context, params) => const Joh14Widget(),
        ),
        FFRoute(
          name: 'joh11',
          path: '/joh11',
          builder: (context, params) => const Joh11Widget(),
        ),
        FFRoute(
          name: 'joh12',
          path: '/joh12',
          builder: (context, params) => const Joh12Widget(),
        ),
        FFRoute(
          name: 'joh10',
          path: '/joh10',
          builder: (context, params) => const Joh10Widget(),
        ),
        FFRoute(
          name: 'joh09',
          path: '/joh09',
          builder: (context, params) => const Joh09Widget(),
        ),
        FFRoute(
          name: 'joh03',
          path: '/joh03',
          builder: (context, params) => const Joh03Widget(),
        ),
        FFRoute(
          name: 'joh04',
          path: '/joh04',
          builder: (context, params) => const Joh04Widget(),
        ),
        FFRoute(
          name: 'joh05',
          path: '/joh05',
          builder: (context, params) => const Joh05Widget(),
        ),
        FFRoute(
          name: 'joh06',
          path: '/joh06',
          builder: (context, params) => const Joh06Widget(),
        ),
        FFRoute(
          name: 'joh07',
          path: '/joh07',
          builder: (context, params) => const Joh07Widget(),
        ),
        FFRoute(
          name: 'joh08',
          path: '/joh08',
          builder: (context, params) => const Joh08Widget(),
        ),
        FFRoute(
          name: 'joh42',
          path: '/joh42',
          builder: (context, params) => const Joh42Widget(),
        ),
        FFRoute(
          name: 'joh41',
          path: '/joh41',
          builder: (context, params) => const Joh41Widget(),
        ),
        FFRoute(
          name: 'joh40',
          path: '/joh40',
          builder: (context, params) => const Joh40Widget(),
        ),
        FFRoute(
          name: 'joh39',
          path: '/joh39',
          builder: (context, params) => const Joh39Widget(),
        ),
        FFRoute(
          name: 'joh37',
          path: '/joh37',
          builder: (context, params) => const Joh37Widget(),
        ),
        FFRoute(
          name: 'joh36',
          path: '/joh36',
          builder: (context, params) => const Joh36Widget(),
        ),
        FFRoute(
          name: 'joh35',
          path: '/joh35',
          builder: (context, params) => const Joh35Widget(),
        ),
        FFRoute(
          name: 'joh34',
          path: '/joh34',
          builder: (context, params) => const Joh34Widget(),
        ),
        FFRoute(
          name: 'joh33',
          path: '/joh33',
          builder: (context, params) => const Joh33Widget(),
        ),
        FFRoute(
          name: 'joh32',
          path: '/joh32',
          builder: (context, params) => const Joh32Widget(),
        ),
        FFRoute(
          name: 'joh31',
          path: '/joh31',
          builder: (context, params) => const Joh31Widget(),
        ),
        FFRoute(
          name: 'joh30',
          path: '/joh30',
          builder: (context, params) => const Joh30Widget(),
        ),
        FFRoute(
          name: 'joh29',
          path: '/joh29',
          builder: (context, params) => const Joh29Widget(),
        ),
        FFRoute(
          name: 'joh27',
          path: '/joh27',
          builder: (context, params) => const Joh27Widget(),
        ),
        FFRoute(
          name: 'joh26',
          path: '/joh26',
          builder: (context, params) => const Joh26Widget(),
        ),
        FFRoute(
          name: 'joh25',
          path: '/joh25',
          builder: (context, params) => const Joh25Widget(),
        ),
        FFRoute(
          name: 'joh24',
          path: '/joh24',
          builder: (context, params) => const Joh24Widget(),
        ),
        FFRoute(
          name: 'joh23',
          path: '/joh23',
          builder: (context, params) => const Joh23Widget(),
        ),
        FFRoute(
          name: 'joh22',
          path: '/joh22',
          builder: (context, params) => const Joh22Widget(),
        ),
        FFRoute(
          name: 'joh15',
          path: '/joh15',
          builder: (context, params) => const Joh15Widget(),
        ),
        FFRoute(
          name: 'joh13',
          path: '/joh13',
          builder: (context, params) => const Joh13Widget(),
        ),
        FFRoute(
          name: 'joh21',
          path: '/joh21',
          builder: (context, params) => const Joh21Widget(),
        ),
        FFRoute(
          name: 'joh20',
          path: '/joh20',
          builder: (context, params) => const Joh20Widget(),
        ),
        FFRoute(
          name: 'joh19',
          path: '/joh19',
          builder: (context, params) => const Joh19Widget(),
        ),
        FFRoute(
          name: 'joh18',
          path: '/joh18',
          builder: (context, params) => const Joh18Widget(),
        ),
        FFRoute(
          name: 'joh17',
          path: '/joh17',
          builder: (context, params) => const Joh17Widget(),
        ),
        FFRoute(
          name: 'prov02',
          path: '/prov02',
          builder: (context, params) => const Prov02Widget(),
        ),
        FFRoute(
          name: 'prov22',
          path: '/prov22',
          builder: (context, params) => const Prov22Widget(),
        ),
        FFRoute(
          name: 'prov11',
          path: '/prov11',
          builder: (context, params) => const Prov11Widget(),
        ),
        FFRoute(
          name: 'prov09',
          path: '/prov09',
          builder: (context, params) => const Prov09Widget(),
        ),
        FFRoute(
          name: 'prov08',
          path: '/prov08',
          builder: (context, params) => const Prov08Widget(),
        ),
        FFRoute(
          name: 'prov07',
          path: '/prov07',
          builder: (context, params) => const Prov07Widget(),
        ),
        FFRoute(
          name: 'prov06',
          path: '/prov06',
          builder: (context, params) => const Prov06Widget(),
        ),
        FFRoute(
          name: 'prov05',
          path: '/prov05',
          builder: (context, params) => const Prov05Widget(),
        ),
        FFRoute(
          name: 'prov04',
          path: '/prov04',
          builder: (context, params) => const Prov04Widget(),
        ),
        FFRoute(
          name: 'prov03',
          path: '/prov03',
          builder: (context, params) => const Prov03Widget(),
        ),
        FFRoute(
          name: 'prov30',
          path: '/prov30',
          builder: (context, params) => const Prov30Widget(),
        ),
        FFRoute(
          name: 'prov29',
          path: '/prov29',
          builder: (context, params) => const Prov29Widget(),
        ),
        FFRoute(
          name: 'prov31',
          path: '/prov31',
          builder: (context, params) => const Prov31Widget(),
        ),
        FFRoute(
          name: 'prov28',
          path: '/prov28',
          builder: (context, params) => const Prov28Widget(),
        ),
        FFRoute(
          name: 'prov27',
          path: '/prov27',
          builder: (context, params) => const Prov27Widget(),
        ),
        FFRoute(
          name: 'prov26',
          path: '/prov26',
          builder: (context, params) => const Prov26Widget(),
        ),
        FFRoute(
          name: 'prov25',
          path: '/prov25',
          builder: (context, params) => const Prov25Widget(),
        ),
        FFRoute(
          name: 'prov24',
          path: '/prov24',
          builder: (context, params) => const Prov24Widget(),
        ),
        FFRoute(
          name: 'prov23',
          path: '/prov23',
          builder: (context, params) => const Prov23Widget(),
        ),
        FFRoute(
          name: 'prov21',
          path: '/prov21',
          builder: (context, params) => const Prov21Widget(),
        ),
        FFRoute(
          name: 'prov20',
          path: '/prov20',
          builder: (context, params) => const Prov20Widget(),
        ),
        FFRoute(
          name: 'prov19',
          path: '/prov19',
          builder: (context, params) => const Prov19Widget(),
        ),
        FFRoute(
          name: 'prov18',
          path: '/prov18',
          builder: (context, params) => const Prov18Widget(),
        ),
        FFRoute(
          name: 'prov17',
          path: '/prov17',
          builder: (context, params) => const Prov17Widget(),
        ),
        FFRoute(
          name: 'prov16',
          path: '/prov16',
          builder: (context, params) => const Prov16Widget(),
        ),
        FFRoute(
          name: 'prov15',
          path: '/prov15',
          builder: (context, params) => const Prov15Widget(),
        ),
        FFRoute(
          name: 'prov14',
          path: '/prov14',
          builder: (context, params) => const Prov14Widget(),
        ),
        FFRoute(
          name: 'prov13',
          path: '/prov13',
          builder: (context, params) => const Prov13Widget(),
        ),
        FFRoute(
          name: 'prov12',
          path: '/prov12',
          builder: (context, params) => const Prov12Widget(),
        ),
        FFRoute(
          name: 'prov10',
          path: '/prov10',
          builder: (context, params) => const Prov10Widget(),
        ),
        FFRoute(
          name: 'Agenda_Menu_Geral',
          path: '/agendaMenuGeral',
          builder: (context, params) => const AgendaMenuGeralWidget(),
        ),
        FFRoute(
          name: 'neemias_02',
          path: '/neemias02',
          builder: (context, params) => const Neemias02Widget(),
        ),
        FFRoute(
          name: 'neemias_06',
          path: '/neemias06',
          builder: (context, params) => const Neemias06Widget(),
        ),
        FFRoute(
          name: 'neemias_07',
          path: '/neemias07',
          builder: (context, params) => const Neemias07Widget(),
        ),
        FFRoute(
          name: 'neemias_08',
          path: '/neemias08',
          builder: (context, params) => const Neemias08Widget(),
        ),
        FFRoute(
          name: 'neemias_09',
          path: '/neemias09',
          builder: (context, params) => const Neemias09Widget(),
        ),
        FFRoute(
          name: 'neemias_10',
          path: '/neemias10',
          builder: (context, params) => const Neemias10Widget(),
        ),
        FFRoute(
          name: 'neemias_11',
          path: '/neemias11',
          builder: (context, params) => const Neemias11Widget(),
        ),
        FFRoute(
          name: 'neemias_12',
          path: '/neemias12',
          builder: (context, params) => const Neemias12Widget(),
        ),
        FFRoute(
          name: 'neemias_13',
          path: '/neemias13',
          builder: (context, params) => const Neemias13Widget(),
        ),
        FFRoute(
          name: 'neemias_03',
          path: '/neemias03',
          builder: (context, params) => const Neemias03Widget(),
        ),
        FFRoute(
          name: 'neemias_04',
          path: '/neemias04',
          builder: (context, params) => const Neemias04Widget(),
        ),
        FFRoute(
          name: 'neemias_05',
          path: '/neemias05',
          builder: (context, params) => const Neemias05Widget(),
        ),
        FFRoute(
          name: 'eclis02',
          path: '/eclis02',
          builder: (context, params) => const Eclis02Widget(),
        ),
        FFRoute(
          name: 'eclis05',
          path: '/eclis05',
          builder: (context, params) => const Eclis05Widget(),
        ),
        FFRoute(
          name: 'eclis06',
          path: '/eclis06',
          builder: (context, params) => const Eclis06Widget(),
        ),
        FFRoute(
          name: 'eclis07',
          path: '/eclis07',
          builder: (context, params) => const Eclis07Widget(),
        ),
        FFRoute(
          name: 'eclis08',
          path: '/eclis08',
          builder: (context, params) => const Eclis08Widget(),
        ),
        FFRoute(
          name: 'eclis09',
          path: '/eclis09',
          builder: (context, params) => const Eclis09Widget(),
        ),
        FFRoute(
          name: 'eclis10',
          path: '/eclis10',
          builder: (context, params) => const Eclis10Widget(),
        ),
        FFRoute(
          name: 'eclis12',
          path: '/eclis12',
          builder: (context, params) => const Eclis12Widget(),
        ),
        FFRoute(
          name: 'eclis11',
          path: '/eclis11',
          builder: (context, params) => const Eclis11Widget(),
        ),
        FFRoute(
          name: 'eclis03',
          path: '/eclis03',
          builder: (context, params) => const Eclis03Widget(),
        ),
        FFRoute(
          name: 'eclis04',
          path: '/eclis04',
          builder: (context, params) => const Eclis04Widget(),
        ),
        FFRoute(
          name: 'Menu_22_cant',
          path: '/menu22Cant',
          builder: (context, params) => const Menu22CantWidget(),
        ),
        FFRoute(
          name: 'Cant02',
          path: '/cant02',
          builder: (context, params) => const Cant02Widget(),
        ),
        FFRoute(
          name: 'Cant03',
          path: '/cant03',
          builder: (context, params) => const Cant03Widget(),
        ),
        FFRoute(
          name: 'Cant04',
          path: '/cant04',
          builder: (context, params) => const Cant04Widget(),
        ),
        FFRoute(
          name: 'Cant05',
          path: '/cant05',
          builder: (context, params) => const Cant05Widget(),
        ),
        FFRoute(
          name: 'Cant06',
          path: '/cant06',
          builder: (context, params) => const Cant06Widget(),
        ),
        FFRoute(
          name: 'Cant07',
          path: '/cant07',
          builder: (context, params) => const Cant07Widget(),
        ),
        FFRoute(
          name: 'Cant08',
          path: '/cant08',
          builder: (context, params) => const Cant08Widget(),
        ),
        FFRoute(
          name: 'Menu_23_isai',
          path: '/menu23Isai',
          builder: (context, params) => const Menu23IsaiWidget(),
        ),
        FFRoute(
          name: 'isaias_01',
          path: '/isaias01',
          builder: (context, params) => const Isaias01Widget(),
        ),
        FFRoute(
          name: 'isaias_03',
          path: '/isaias03',
          builder: (context, params) => const Isaias03Widget(),
        ),
        FFRoute(
          name: 'isaias_58',
          path: '/isaias58',
          builder: (context, params) => const Isaias58Widget(),
        ),
        FFRoute(
          name: 'isaias_47',
          path: '/isaias47',
          builder: (context, params) => const Isaias47Widget(),
        ),
        FFRoute(
          name: 'isaias_36',
          path: '/isaias36',
          builder: (context, params) => const Isaias36Widget(),
        ),
        FFRoute(
          name: 'isaias_25',
          path: '/isaias25',
          builder: (context, params) => const Isaias25Widget(),
        ),
        FFRoute(
          name: 'isaias_14',
          path: '/isaias14',
          builder: (context, params) => const Isaias14Widget(),
        ),
        FFRoute(
          name: 'isaias_09',
          path: '/isaias09',
          builder: (context, params) => const Isaias09Widget(),
        ),
        FFRoute(
          name: 'isaias_08',
          path: '/isaias08',
          builder: (context, params) => const Isaias08Widget(),
        ),
        FFRoute(
          name: 'isaias_07',
          path: '/isaias07',
          builder: (context, params) => const Isaias07Widget(),
        ),
        FFRoute(
          name: 'isaias_02',
          path: '/isaias02',
          builder: (context, params) => const Isaias02Widget(),
        ),
        FFRoute(
          name: 'isaias_04',
          path: '/isaias04',
          builder: (context, params) => const Isaias04Widget(),
        ),
        FFRoute(
          name: 'isaias_66',
          path: '/isaias66',
          builder: (context, params) => const Isaias66Widget(),
        ),
        FFRoute(
          name: 'isaias_65',
          path: '/isaias65',
          builder: (context, params) => const Isaias65Widget(),
        ),
        FFRoute(
          name: 'isaias_64',
          path: '/isaias64',
          builder: (context, params) => const Isaias64Widget(),
        ),
        FFRoute(
          name: 'isaias_63',
          path: '/isaias63',
          builder: (context, params) => const Isaias63Widget(),
        ),
        FFRoute(
          name: 'isaias_62',
          path: '/isaias62',
          builder: (context, params) => const Isaias62Widget(),
        ),
        FFRoute(
          name: 'isaias_61',
          path: '/isaias61',
          builder: (context, params) => const Isaias61Widget(),
        ),
        FFRoute(
          name: 'isaias_60',
          path: '/isaias60',
          builder: (context, params) => const Isaias60Widget(),
        ),
        FFRoute(
          name: 'isaias_59',
          path: '/isaias59',
          builder: (context, params) => const Isaias59Widget(),
        ),
        FFRoute(
          name: 'isaias_57',
          path: '/isaias57',
          builder: (context, params) => const Isaias57Widget(),
        ),
        FFRoute(
          name: 'isaias_06',
          path: '/isaias06',
          builder: (context, params) => const Isaias06Widget(),
        ),
        FFRoute(
          name: 'isaias_56',
          path: '/isaias56',
          builder: (context, params) => const Isaias56Widget(),
        ),
        FFRoute(
          name: 'isaias_55',
          path: '/isaias55',
          builder: (context, params) => const Isaias55Widget(),
        ),
        FFRoute(
          name: 'isaias_54',
          path: '/isaias54',
          builder: (context, params) => const Isaias54Widget(),
        ),
        FFRoute(
          name: 'isaias_53',
          path: '/isaias53',
          builder: (context, params) => const Isaias53Widget(),
        ),
        FFRoute(
          name: 'isaias_05',
          path: '/isaias05',
          builder: (context, params) => const Isaias05Widget(),
        ),
        FFRoute(
          name: 'isaias_52',
          path: '/isaias52',
          builder: (context, params) => const Isaias52Widget(),
        ),
        FFRoute(
          name: 'isaias_51',
          path: '/isaias51',
          builder: (context, params) => const Isaias51Widget(),
        ),
        FFRoute(
          name: 'isaias_50',
          path: '/isaias50',
          builder: (context, params) => const Isaias50Widget(),
        ),
        FFRoute(
          name: 'isaias_49',
          path: '/isaias49',
          builder: (context, params) => const Isaias49Widget(),
        ),
        FFRoute(
          name: 'isaias_48',
          path: '/isaias48',
          builder: (context, params) => const Isaias48Widget(),
        ),
        FFRoute(
          name: 'isaias_46',
          path: '/isaias46',
          builder: (context, params) => const Isaias46Widget(),
        ),
        FFRoute(
          name: 'isaias_45',
          path: '/isaias45',
          builder: (context, params) => const Isaias45Widget(),
        ),
        FFRoute(
          name: 'isaias_44',
          path: '/isaias44',
          builder: (context, params) => const Isaias44Widget(),
        ),
        FFRoute(
          name: 'isaias_43',
          path: '/isaias43',
          builder: (context, params) => const Isaias43Widget(),
        ),
        FFRoute(
          name: 'isaias_42',
          path: '/isaias42',
          builder: (context, params) => const Isaias42Widget(),
        ),
        FFRoute(
          name: 'isaias_41',
          path: '/isaias41',
          builder: (context, params) => const Isaias41Widget(),
        ),
        FFRoute(
          name: 'isaias_40',
          path: '/isaias40',
          builder: (context, params) => const Isaias40Widget(),
        ),
        FFRoute(
          name: 'isaias_39',
          path: '/isaias39',
          builder: (context, params) => const Isaias39Widget(),
        ),
        FFRoute(
          name: 'isaias_38',
          path: '/isaias38',
          builder: (context, params) => const Isaias38Widget(),
        ),
        FFRoute(
          name: 'isaias_37',
          path: '/isaias37',
          builder: (context, params) => const Isaias37Widget(),
        ),
        FFRoute(
          name: 'isaias_35',
          path: '/isaias35',
          builder: (context, params) => const Isaias35Widget(),
        ),
        FFRoute(
          name: 'isaias_34',
          path: '/isaias34',
          builder: (context, params) => const Isaias34Widget(),
        ),
        FFRoute(
          name: 'isaias_33',
          path: '/isaias33',
          builder: (context, params) => const Isaias33Widget(),
        ),
        FFRoute(
          name: 'isaias_32',
          path: '/isaias32',
          builder: (context, params) => const Isaias32Widget(),
        ),
        FFRoute(
          name: 'isaias_31',
          path: '/isaias31',
          builder: (context, params) => const Isaias31Widget(),
        ),
        FFRoute(
          name: 'isaias_30',
          path: '/isaias30',
          builder: (context, params) => const Isaias30Widget(),
        ),
        FFRoute(
          name: 'isaias_29',
          path: '/isaias29',
          builder: (context, params) => const Isaias29Widget(),
        ),
        FFRoute(
          name: 'isaias_28',
          path: '/isaias28',
          builder: (context, params) => const Isaias28Widget(),
        ),
        FFRoute(
          name: 'isaias_27',
          path: '/isaias27',
          builder: (context, params) => const Isaias27Widget(),
        ),
        FFRoute(
          name: 'isaias_26',
          path: '/isaias26',
          builder: (context, params) => const Isaias26Widget(),
        ),
        FFRoute(
          name: 'isaias_24',
          path: '/isaias24',
          builder: (context, params) => const Isaias24Widget(),
        ),
        FFRoute(
          name: 'isaias_23',
          path: '/isaias23',
          builder: (context, params) => const Isaias23Widget(),
        ),
        FFRoute(
          name: 'isaias_22',
          path: '/isaias22',
          builder: (context, params) => const Isaias22Widget(),
        ),
        FFRoute(
          name: 'isaias_21',
          path: '/isaias21',
          builder: (context, params) => const Isaias21Widget(),
        ),
        FFRoute(
          name: 'isaias_20',
          path: '/isaias20',
          builder: (context, params) => const Isaias20Widget(),
        ),
        FFRoute(
          name: 'isaias_19',
          path: '/isaias19',
          builder: (context, params) => const Isaias19Widget(),
        ),
        FFRoute(
          name: 'isaias_18',
          path: '/isaias18',
          builder: (context, params) => const Isaias18Widget(),
        ),
        FFRoute(
          name: 'isaias_17',
          path: '/isaias17',
          builder: (context, params) => const Isaias17Widget(),
        ),
        FFRoute(
          name: 'isaias_16',
          path: '/isaias16',
          builder: (context, params) => const Isaias16Widget(),
        ),
        FFRoute(
          name: 'isaias_15',
          path: '/isaias15',
          builder: (context, params) => const Isaias15Widget(),
        ),
        FFRoute(
          name: 'isaias_13',
          path: '/isaias13',
          builder: (context, params) => const Isaias13Widget(),
        ),
        FFRoute(
          name: 'isaias_12',
          path: '/isaias12',
          builder: (context, params) => const Isaias12Widget(),
        ),
        FFRoute(
          name: 'isaias_11',
          path: '/isaias11',
          builder: (context, params) => const Isaias11Widget(),
        ),
        FFRoute(
          name: 'isaias_10',
          path: '/isaias10',
          builder: (context, params) => const Isaias10Widget(),
        ),
        FFRoute(
          name: 'Menu_24_jeremi',
          path: '/menu24Jeremi',
          builder: (context, params) => const Menu24JeremiWidget(),
        ),
        FFRoute(
          name: 'jeremias_02',
          path: '/jeremias02',
          builder: (context, params) => const Jeremias02Widget(),
        ),
        FFRoute(
          name: 'jeremias_01',
          path: '/jeremias01',
          builder: (context, params) => const Jeremias01Widget(),
        ),
        FFRoute(
          name: 'jeremias_40',
          path: '/jeremias40',
          builder: (context, params) => const Jeremias40Widget(),
        ),
        FFRoute(
          name: 'jeremias_29',
          path: '/jeremias29',
          builder: (context, params) => const Jeremias29Widget(),
        ),
        FFRoute(
          name: 'jeremias_14',
          path: '/jeremias14',
          builder: (context, params) => const Jeremias14Widget(),
        ),
        FFRoute(
          name: 'jeremias_13',
          path: '/jeremias13',
          builder: (context, params) => const Jeremias13Widget(),
        ),
        FFRoute(
          name: 'jeremias_12',
          path: '/jeremias12',
          builder: (context, params) => const Jeremias12Widget(),
        ),
        FFRoute(
          name: 'jeremias_11',
          path: '/jeremias11',
          builder: (context, params) => const Jeremias11Widget(),
        ),
        FFRoute(
          name: 'jeremias_10',
          path: '/jeremias10',
          builder: (context, params) => const Jeremias10Widget(),
        ),
        FFRoute(
          name: 'jeremias_52',
          path: '/jeremias52',
          builder: (context, params) => const Jeremias52Widget(),
        ),
        FFRoute(
          name: 'jeremias_49',
          path: '/jeremias49',
          builder: (context, params) => const Jeremias49Widget(),
        ),
        FFRoute(
          name: 'jeremias_48',
          path: '/jeremias48',
          builder: (context, params) => const Jeremias48Widget(),
        ),
        FFRoute(
          name: 'jeremias_47',
          path: '/jeremias47',
          builder: (context, params) => const Jeremias47Widget(),
        ),
        FFRoute(
          name: 'jeremias_46',
          path: '/jeremias46',
          builder: (context, params) => const Jeremias46Widget(),
        ),
        FFRoute(
          name: 'jeremias_45',
          path: '/jeremias45',
          builder: (context, params) => const Jeremias45Widget(),
        ),
        FFRoute(
          name: 'jeremias_44',
          path: '/jeremias44',
          builder: (context, params) => const Jeremias44Widget(),
        ),
        FFRoute(
          name: 'jeremias_43',
          path: '/jeremias43',
          builder: (context, params) => const Jeremias43Widget(),
        ),
        FFRoute(
          name: 'jeremias_42',
          path: '/jeremias42',
          builder: (context, params) => const Jeremias42Widget(),
        ),
        FFRoute(
          name: 'jeremias_09',
          path: '/jeremias09',
          builder: (context, params) => const Jeremias09Widget(),
        ),
        FFRoute(
          name: 'jeremias_08',
          path: '/jeremias08',
          builder: (context, params) => const Jeremias08Widget(),
        ),
        FFRoute(
          name: 'jeremias_07',
          path: '/jeremias07',
          builder: (context, params) => const Jeremias07Widget(),
        ),
        FFRoute(
          name: 'jeremias_06',
          path: '/jeremias06',
          builder: (context, params) => const Jeremias06Widget(),
        ),
        FFRoute(
          name: 'jeremias_51',
          path: '/jeremias51',
          builder: (context, params) => const Jeremias51Widget(),
        ),
        FFRoute(
          name: 'jeremias_50',
          path: '/jeremias50',
          builder: (context, params) => const Jeremias50Widget(),
        ),
        FFRoute(
          name: 'jeremias_05',
          path: '/jeremias05',
          builder: (context, params) => const Jeremias05Widget(),
        ),
        FFRoute(
          name: 'jeremias_41',
          path: '/jeremias41',
          builder: (context, params) => const Jeremias41Widget(),
        ),
        FFRoute(
          name: 'jeremias_39',
          path: '/jeremias39',
          builder: (context, params) => const Jeremias39Widget(),
        ),
        FFRoute(
          name: 'jeremias_38',
          path: '/jeremias38',
          builder: (context, params) => const Jeremias38Widget(),
        ),
        FFRoute(
          name: 'jeremias_37',
          path: '/jeremias37',
          builder: (context, params) => const Jeremias37Widget(),
        ),
        FFRoute(
          name: 'jeremias_36',
          path: '/jeremias36',
          builder: (context, params) => const Jeremias36Widget(),
        ),
        FFRoute(
          name: 'jeremias_04',
          path: '/jeremias04',
          builder: (context, params) => const Jeremias04Widget(),
        ),
        FFRoute(
          name: 'jeremias_35',
          path: '/jeremias35',
          builder: (context, params) => const Jeremias35Widget(),
        ),
        FFRoute(
          name: 'jeremias_34',
          path: '/jeremias34',
          builder: (context, params) => const Jeremias34Widget(),
        ),
        FFRoute(
          name: 'jeremias_33',
          path: '/jeremias33',
          builder: (context, params) => const Jeremias33Widget(),
        ),
        FFRoute(
          name: 'jeremias_32',
          path: '/jeremias32',
          builder: (context, params) => const Jeremias32Widget(),
        ),
        FFRoute(
          name: 'jeremias_31',
          path: '/jeremias31',
          builder: (context, params) => const Jeremias31Widget(),
        ),
        FFRoute(
          name: 'jeremias_30',
          path: '/jeremias30',
          builder: (context, params) => const Jeremias30Widget(),
        ),
        FFRoute(
          name: 'jeremias_28',
          path: '/jeremias28',
          builder: (context, params) => const Jeremias28Widget(),
        ),
        FFRoute(
          name: 'jeremias_27',
          path: '/jeremias27',
          builder: (context, params) => const Jeremias27Widget(),
        ),
        FFRoute(
          name: 'jeremias_26',
          path: '/jeremias26',
          builder: (context, params) => const Jeremias26Widget(),
        ),
        FFRoute(
          name: 'jeremias_25',
          path: '/jeremias25',
          builder: (context, params) => const Jeremias25Widget(),
        ),
        FFRoute(
          name: 'jeremias_24',
          path: '/jeremias24',
          builder: (context, params) => const Jeremias24Widget(),
        ),
        FFRoute(
          name: 'jeremias_23',
          path: '/jeremias23',
          builder: (context, params) => const Jeremias23Widget(),
        ),
        FFRoute(
          name: 'jeremias_22',
          path: '/jeremias22',
          builder: (context, params) => const Jeremias22Widget(),
        ),
        FFRoute(
          name: 'jeremias_21',
          path: '/jeremias21',
          builder: (context, params) => const Jeremias21Widget(),
        ),
        FFRoute(
          name: 'jeremias_20',
          path: '/jeremias20',
          builder: (context, params) => const Jeremias20Widget(),
        ),
        FFRoute(
          name: 'jeremias_19',
          path: '/jeremias19',
          builder: (context, params) => const Jeremias19Widget(),
        ),
        FFRoute(
          name: 'jeremias_17',
          path: '/jeremias17',
          builder: (context, params) => const Jeremias17Widget(),
        ),
        FFRoute(
          name: 'jeremias_16',
          path: '/jeremias16',
          builder: (context, params) => const Jeremias16Widget(),
        ),
        FFRoute(
          name: 'jeremias_15',
          path: '/jeremias15',
          builder: (context, params) => const Jeremias15Widget(),
        ),
        FFRoute(
          name: 'jeremias_03',
          path: '/jeremias03',
          builder: (context, params) => const Jeremias03Widget(),
        ),
        FFRoute(
          name: 'jeremias_18',
          path: '/jeremias18',
          builder: (context, params) => const Jeremias18Widget(),
        ),
        FFRoute(
          name: 'Menu_25_lament',
          path: '/menu25Lament',
          builder: (context, params) => const Menu25LamentWidget(),
        ),
        FFRoute(
          name: 'lamentacoes_01',
          path: '/lamentacoes01',
          builder: (context, params) => const Lamentacoes01Widget(),
        ),
        FFRoute(
          name: 'lamentacoes_02',
          path: '/lamentacoes02',
          builder: (context, params) => const Lamentacoes02Widget(),
        ),
        FFRoute(
          name: 'lamentacoes_03',
          path: '/lamentacoes03',
          builder: (context, params) => const Lamentacoes03Widget(),
        ),
        FFRoute(
          name: 'lamentacoes_04',
          path: '/lamentacoes04',
          builder: (context, params) => const Lamentacoes04Widget(),
        ),
        FFRoute(
          name: 'lamentacoes_05',
          path: '/lamentacoes05',
          builder: (context, params) => const Lamentacoes05Widget(),
        ),
        FFRoute(
          name: 'ezequiel_01',
          path: '/ezequiel01',
          builder: (context, params) => const Ezequiel01Widget(),
        ),
        FFRoute(
          name: 'Menu_26_ezequiel',
          path: '/menu26Ezequiel',
          builder: (context, params) => const Menu26EzequielWidget(),
        ),
        FFRoute(
          name: 'ezequiel_02',
          path: '/ezequiel02',
          builder: (context, params) => const Ezequiel02Widget(),
        ),
        FFRoute(
          name: 'ezequiel_13',
          path: '/ezequiel13',
          builder: (context, params) => const Ezequiel13Widget(),
        ),
        FFRoute(
          name: 'ezequiel_24',
          path: '/ezequiel24',
          builder: (context, params) => const Ezequiel24Widget(),
        ),
        FFRoute(
          name: 'ezequiel_35',
          path: '/ezequiel35',
          builder: (context, params) => const Ezequiel35Widget(),
        ),
        FFRoute(
          name: 'ezequiel_45',
          path: '/ezequiel45',
          builder: (context, params) => const Ezequiel45Widget(),
        ),
        FFRoute(
          name: 'ezequiel_46',
          path: '/ezequiel46',
          builder: (context, params) => const Ezequiel46Widget(),
        ),
        FFRoute(
          name: 'ezequiel_47',
          path: '/ezequiel47',
          builder: (context, params) => const Ezequiel47Widget(),
        ),
        FFRoute(
          name: 'ezequiel_48',
          path: '/ezequiel48',
          builder: (context, params) => const Ezequiel48Widget(),
        ),
        FFRoute(
          name: 'ezequiel_03',
          path: '/ezequiel03',
          builder: (context, params) => const Ezequiel03Widget(),
        ),
        FFRoute(
          name: 'ezequiel_04',
          path: '/ezequiel04',
          builder: (context, params) => const Ezequiel04Widget(),
        ),
        FFRoute(
          name: 'ezequiel_05',
          path: '/ezequiel05',
          builder: (context, params) => const Ezequiel05Widget(),
        ),
        FFRoute(
          name: 'ezequiel_06',
          path: '/ezequiel06',
          builder: (context, params) => const Ezequiel06Widget(),
        ),
        FFRoute(
          name: 'ezequiel_07',
          path: '/ezequiel07',
          builder: (context, params) => const Ezequiel07Widget(),
        ),
        FFRoute(
          name: 'ezequiel_08',
          path: '/ezequiel08',
          builder: (context, params) => const Ezequiel08Widget(),
        ),
        FFRoute(
          name: 'ezequiel_09',
          path: '/ezequiel09',
          builder: (context, params) => const Ezequiel09Widget(),
        ),
        FFRoute(
          name: 'ezequiel_10',
          path: '/ezequiel10',
          builder: (context, params) => const Ezequiel10Widget(),
        ),
        FFRoute(
          name: 'ezequiel_11',
          path: '/ezequiel11',
          builder: (context, params) => const Ezequiel11Widget(),
        ),
        FFRoute(
          name: 'ezequiel_12',
          path: '/ezequiel12',
          builder: (context, params) => const Ezequiel12Widget(),
        ),
        FFRoute(
          name: 'ezequiel_14',
          path: '/ezequiel14',
          builder: (context, params) => const Ezequiel14Widget(),
        ),
        FFRoute(
          name: 'ezequiel_15',
          path: '/ezequiel15',
          builder: (context, params) => const Ezequiel15Widget(),
        ),
        FFRoute(
          name: 'ezequiel_16',
          path: '/ezequiel16',
          builder: (context, params) => const Ezequiel16Widget(),
        ),
        FFRoute(
          name: 'ezequiel_17',
          path: '/ezequiel17',
          builder: (context, params) => const Ezequiel17Widget(),
        ),
        FFRoute(
          name: 'ezequiel_18',
          path: '/ezequiel18',
          builder: (context, params) => const Ezequiel18Widget(),
        ),
        FFRoute(
          name: 'ezequiel_19',
          path: '/ezequiel19',
          builder: (context, params) => const Ezequiel19Widget(),
        ),
        FFRoute(
          name: 'ezequiel_20',
          path: '/ezequiel20',
          builder: (context, params) => const Ezequiel20Widget(),
        ),
        FFRoute(
          name: 'ezequiel_21',
          path: '/ezequiel21',
          builder: (context, params) => const Ezequiel21Widget(),
        ),
        FFRoute(
          name: 'ezequiel_22',
          path: '/ezequiel22',
          builder: (context, params) => const Ezequiel22Widget(),
        ),
        FFRoute(
          name: 'ezequiel_23',
          path: '/ezequiel23',
          builder: (context, params) => const Ezequiel23Widget(),
        ),
        FFRoute(
          name: 'ezequiel_25',
          path: '/ezequiel25',
          builder: (context, params) => const Ezequiel25Widget(),
        ),
        FFRoute(
          name: 'ezequiel_26',
          path: '/ezequiel26',
          builder: (context, params) => const Ezequiel26Widget(),
        ),
        FFRoute(
          name: 'ezequiel_27',
          path: '/ezequiel27',
          builder: (context, params) => const Ezequiel27Widget(),
        ),
        FFRoute(
          name: 'ezequiel_28',
          path: '/ezequiel28',
          builder: (context, params) => const Ezequiel28Widget(),
        ),
        FFRoute(
          name: 'ezequiel_29',
          path: '/ezequiel29',
          builder: (context, params) => const Ezequiel29Widget(),
        ),
        FFRoute(
          name: 'ezequiel_30',
          path: '/ezequiel30',
          builder: (context, params) => const Ezequiel30Widget(),
        ),
        FFRoute(
          name: 'ezequiel_31',
          path: '/ezequiel31',
          builder: (context, params) => const Ezequiel31Widget(),
        ),
        FFRoute(
          name: 'ezequiel_32',
          path: '/ezequiel32',
          builder: (context, params) => const Ezequiel32Widget(),
        ),
        FFRoute(
          name: 'ezequiel_33',
          path: '/ezequiel33',
          builder: (context, params) => const Ezequiel33Widget(),
        ),
        FFRoute(
          name: 'ezequiel_34',
          path: '/ezequiel34',
          builder: (context, params) => const Ezequiel34Widget(),
        ),
        FFRoute(
          name: 'ezequiel_36',
          path: '/ezequiel36',
          builder: (context, params) => const Ezequiel36Widget(),
        ),
        FFRoute(
          name: 'ezequiel_37',
          path: '/ezequiel37',
          builder: (context, params) => const Ezequiel37Widget(),
        ),
        FFRoute(
          name: 'ezequiel_38',
          path: '/ezequiel38',
          builder: (context, params) => const Ezequiel38Widget(),
        ),
        FFRoute(
          name: 'ezequiel_39',
          path: '/ezequiel39',
          builder: (context, params) => const Ezequiel39Widget(),
        ),
        FFRoute(
          name: 'ezequiel_40',
          path: '/ezequiel40',
          builder: (context, params) => const Ezequiel40Widget(),
        ),
        FFRoute(
          name: 'ezequiel_41',
          path: '/ezequiel41',
          builder: (context, params) => const Ezequiel41Widget(),
        ),
        FFRoute(
          name: 'ezequiel_42',
          path: '/ezequiel42',
          builder: (context, params) => const Ezequiel42Widget(),
        ),
        FFRoute(
          name: 'ezequiel_43',
          path: '/ezequiel43',
          builder: (context, params) => const Ezequiel43Widget(),
        ),
        FFRoute(
          name: 'ezequiel_44',
          path: '/ezequiel44',
          builder: (context, params) => const Ezequiel44Widget(),
        ),
        FFRoute(
          name: 'Menu_27_Daniel',
          path: '/menu27Daniel',
          builder: (context, params) => const Menu27DanielWidget(),
        ),
        FFRoute(
          name: 'daniel_01',
          path: '/daniel01',
          builder: (context, params) => const Daniel01Widget(),
        ),
        FFRoute(
          name: 'daniel_02',
          path: '/daniel02',
          builder: (context, params) => const Daniel02Widget(),
        ),
        FFRoute(
          name: 'daniel_05',
          path: '/daniel05',
          builder: (context, params) => const Daniel05Widget(),
        ),
        FFRoute(
          name: 'daniel_06',
          path: '/daniel06',
          builder: (context, params) => const Daniel06Widget(),
        ),
        FFRoute(
          name: 'daniel_07',
          path: '/daniel07',
          builder: (context, params) => const Daniel07Widget(),
        ),
        FFRoute(
          name: 'daniel_08',
          path: '/daniel08',
          builder: (context, params) => const Daniel08Widget(),
        ),
        FFRoute(
          name: 'daniel_09',
          path: '/daniel09',
          builder: (context, params) => const Daniel09Widget(),
        ),
        FFRoute(
          name: 'daniel_10',
          path: '/daniel10',
          builder: (context, params) => const Daniel10Widget(),
        ),
        FFRoute(
          name: 'daniel_11',
          path: '/daniel11',
          builder: (context, params) => const Daniel11Widget(),
        ),
        FFRoute(
          name: 'daniel_12',
          path: '/daniel12',
          builder: (context, params) => const Daniel12Widget(),
        ),
        FFRoute(
          name: 'daniel_03',
          path: '/daniel03',
          builder: (context, params) => const Daniel03Widget(),
        ),
        FFRoute(
          name: 'daniel_04',
          path: '/daniel04',
          builder: (context, params) => const Daniel04Widget(),
        ),
        FFRoute(
          name: 'Oseias_01',
          path: '/oseias01',
          builder: (context, params) => const Oseias01Widget(),
        ),
        FFRoute(
          name: 'Menu_28_Oseias',
          path: '/menu28Oseias',
          builder: (context, params) => const Menu28OseiasWidget(),
        ),
        FFRoute(
          name: 'Oseias_02',
          path: '/oseias02',
          builder: (context, params) => const Oseias02Widget(),
        ),
        FFRoute(
          name: 'Oseias_07',
          path: '/oseias07',
          builder: (context, params) => const Oseias07Widget(),
        ),
        FFRoute(
          name: 'Oseias_08',
          path: '/oseias08',
          builder: (context, params) => const Oseias08Widget(),
        ),
        FFRoute(
          name: 'Oseias_09',
          path: '/oseias09',
          builder: (context, params) => const Oseias09Widget(),
        ),
        FFRoute(
          name: 'Oseias_10',
          path: '/oseias10',
          builder: (context, params) => const Oseias10Widget(),
        ),
        FFRoute(
          name: 'Oseias_11',
          path: '/oseias11',
          builder: (context, params) => const Oseias11Widget(),
        ),
        FFRoute(
          name: 'Oseias_12',
          path: '/oseias12',
          builder: (context, params) => const Oseias12Widget(),
        ),
        FFRoute(
          name: 'Oseias_13',
          path: '/oseias13',
          builder: (context, params) => const Oseias13Widget(),
        ),
        FFRoute(
          name: 'Oseias_14',
          path: '/oseias14',
          builder: (context, params) => const Oseias14Widget(),
        ),
        FFRoute(
          name: 'Oseias_03',
          path: '/oseias03',
          builder: (context, params) => const Oseias03Widget(),
        ),
        FFRoute(
          name: 'Oseias_04',
          path: '/oseias04',
          builder: (context, params) => const Oseias04Widget(),
        ),
        FFRoute(
          name: 'Oseias_05',
          path: '/oseias05',
          builder: (context, params) => const Oseias05Widget(),
        ),
        FFRoute(
          name: 'Oseias_06',
          path: '/oseias06',
          builder: (context, params) => const Oseias06Widget(),
        ),
        FFRoute(
          name: 'Menu_29_joel',
          path: '/menu29Joel',
          builder: (context, params) => const Menu29JoelWidget(),
        ),
        FFRoute(
          name: 'Joel_01',
          path: '/joel01',
          builder: (context, params) => const Joel01Widget(),
        ),
        FFRoute(
          name: 'amos_01',
          path: '/amos01',
          builder: (context, params) => const Amos01Widget(),
        ),
        FFRoute(
          name: 'Menu_30_amos',
          path: '/menu30Amos',
          builder: (context, params) => const Menu30AmosWidget(),
        ),
        FFRoute(
          name: 'Obaias_01',
          path: '/obaias01',
          builder: (context, params) => const Obaias01Widget(),
        ),
        FFRoute(
          name: 'Menu_31_obad',
          path: '/menu31Obad',
          builder: (context, params) => const Menu31ObadWidget(),
        ),
        FFRoute(
          name: 'Menu_32_Jonas',
          path: '/menu32Jonas',
          builder: (context, params) => const Menu32JonasWidget(),
        ),
        FFRoute(
          name: 'Jonas_01',
          path: '/jonas01',
          builder: (context, params) => const Jonas01Widget(),
        ),
        FFRoute(
          name: 'miqueias_01',
          path: '/miqueias01',
          builder: (context, params) => const Miqueias01Widget(),
        ),
        FFRoute(
          name: 'Menu_33_miqueias',
          path: '/menu33Miqueias',
          builder: (context, params) => const Menu33MiqueiasWidget(),
        ),
        FFRoute(
          name: 'Menu_34_Naum',
          path: '/menu34Naum',
          builder: (context, params) => const Menu34NaumWidget(),
        ),
        FFRoute(
          name: 'naum_01',
          path: '/naum01',
          builder: (context, params) => const Naum01Widget(),
        ),
        FFRoute(
          name: 'Menu_35_habac',
          path: '/menu35Habac',
          builder: (context, params) => const Menu35HabacWidget(),
        ),
        FFRoute(
          name: 'habacuque_01',
          path: '/habacuque01',
          builder: (context, params) => const Habacuque01Widget(),
        ),
        FFRoute(
          name: 'sofonias_01',
          path: '/sofonias01',
          builder: (context, params) => const Sofonias01Widget(),
        ),
        FFRoute(
          name: 'Menu_36_sofon',
          path: '/menu36Sofon',
          builder: (context, params) => const Menu36SofonWidget(),
        ),
        FFRoute(
          name: 'Menu_37_ageu',
          path: '/menu37Ageu',
          builder: (context, params) => const Menu37AgeuWidget(),
        ),
        FFRoute(
          name: 'ageu_01',
          path: '/ageu01',
          builder: (context, params) => const Ageu01Widget(),
        ),
        FFRoute(
          name: 'Menu_38_zacar',
          path: '/menu38Zacar',
          builder: (context, params) => const Menu38ZacarWidget(),
        ),
        FFRoute(
          name: 'zacarias_01',
          path: '/zacarias01',
          builder: (context, params) => const Zacarias01Widget(),
        ),
        FFRoute(
          name: 'Menu_39_malaq',
          path: '/menu39Malaq',
          builder: (context, params) => const Menu39MalaqWidget(),
        ),
        FFRoute(
          name: 'malaquias_01',
          path: '/malaquias01',
          builder: (context, params) => const Malaquias01Widget(),
        ),
        FFRoute(
          name: 'Joel_02',
          path: '/joel02',
          builder: (context, params) => const Joel02Widget(),
        ),
        FFRoute(
          name: 'Joel_03',
          path: '/joel03',
          builder: (context, params) => const Joel03Widget(),
        ),
        FFRoute(
          name: 'amos_02',
          path: '/amos02',
          builder: (context, params) => const Amos02Widget(),
        ),
        FFRoute(
          name: 'amos_03',
          path: '/amos03',
          builder: (context, params) => const Amos03Widget(),
        ),
        FFRoute(
          name: 'amos_04',
          path: '/amos04',
          builder: (context, params) => const Amos04Widget(),
        ),
        FFRoute(
          name: 'amos_05',
          path: '/amos05',
          builder: (context, params) => const Amos05Widget(),
        ),
        FFRoute(
          name: 'amos_06',
          path: '/amos06',
          builder: (context, params) => const Amos06Widget(),
        ),
        FFRoute(
          name: 'amos_07',
          path: '/amos07',
          builder: (context, params) => const Amos07Widget(),
        ),
        FFRoute(
          name: 'amos_08',
          path: '/amos08',
          builder: (context, params) => const Amos08Widget(),
        ),
        FFRoute(
          name: 'amos_09',
          path: '/amos09',
          builder: (context, params) => const Amos09Widget(),
        ),
        FFRoute(
          name: 'Jonas_02',
          path: '/jonas02',
          builder: (context, params) => const Jonas02Widget(),
        ),
        FFRoute(
          name: 'Jonas_03',
          path: '/jonas03',
          builder: (context, params) => const Jonas03Widget(),
        ),
        FFRoute(
          name: 'Jonas_04',
          path: '/jonas04',
          builder: (context, params) => const Jonas04Widget(),
        ),
        FFRoute(
          name: 'miqueias_02',
          path: '/miqueias02',
          builder: (context, params) => const Miqueias02Widget(),
        ),
        FFRoute(
          name: 'miqueias_03',
          path: '/miqueias03',
          builder: (context, params) => const Miqueias03Widget(),
        ),
        FFRoute(
          name: 'miqueias_04',
          path: '/miqueias04',
          builder: (context, params) => const Miqueias04Widget(),
        ),
        FFRoute(
          name: 'miqueias_05',
          path: '/miqueias05',
          builder: (context, params) => const Miqueias05Widget(),
        ),
        FFRoute(
          name: 'miqueias_06',
          path: '/miqueias06',
          builder: (context, params) => const Miqueias06Widget(),
        ),
        FFRoute(
          name: 'miqueias_07',
          path: '/miqueias07',
          builder: (context, params) => const Miqueias07Widget(),
        ),
        FFRoute(
          name: 'naum_02',
          path: '/naum02',
          builder: (context, params) => const Naum02Widget(),
        ),
        FFRoute(
          name: 'naum_03',
          path: '/naum03',
          builder: (context, params) => const Naum03Widget(),
        ),
        FFRoute(
          name: 'habacuque_03',
          path: '/habacuque03',
          builder: (context, params) => const Habacuque03Widget(),
        ),
        FFRoute(
          name: 'habacuque_02',
          path: '/habacuque02',
          builder: (context, params) => const Habacuque02Widget(),
        ),
        FFRoute(
          name: 'sofonias_02',
          path: '/sofonias02',
          builder: (context, params) => const Sofonias02Widget(),
        ),
        FFRoute(
          name: 'sofonias_03',
          path: '/sofonias03',
          builder: (context, params) => const Sofonias03Widget(),
        ),
        FFRoute(
          name: 'ageu_02',
          path: '/ageu02',
          builder: (context, params) => const Ageu02Widget(),
        ),
        FFRoute(
          name: 'zacarias_02',
          path: '/zacarias02',
          builder: (context, params) => const Zacarias02Widget(),
        ),
        FFRoute(
          name: 'zacarias_06',
          path: '/zacarias06',
          builder: (context, params) => const Zacarias06Widget(),
        ),
        FFRoute(
          name: 'zacarias_08',
          path: '/zacarias08',
          builder: (context, params) => const Zacarias08Widget(),
        ),
        FFRoute(
          name: 'zacarias_11',
          path: '/zacarias11',
          builder: (context, params) => const Zacarias11Widget(),
        ),
        FFRoute(
          name: 'zacarias_03',
          path: '/zacarias03',
          builder: (context, params) => const Zacarias03Widget(),
        ),
        FFRoute(
          name: 'zacarias_09',
          path: '/zacarias09',
          builder: (context, params) => const Zacarias09Widget(),
        ),
        FFRoute(
          name: 'zacarias_14',
          path: '/zacarias14',
          builder: (context, params) => const Zacarias14Widget(),
        ),
        FFRoute(
          name: 'zacarias_07',
          path: '/zacarias07',
          builder: (context, params) => const Zacarias07Widget(),
        ),
        FFRoute(
          name: 'zacarias_12',
          path: '/zacarias12',
          builder: (context, params) => const Zacarias12Widget(),
        ),
        FFRoute(
          name: 'zacarias_10',
          path: '/zacarias10',
          builder: (context, params) => const Zacarias10Widget(),
        ),
        FFRoute(
          name: 'zacarias_13',
          path: '/zacarias13',
          builder: (context, params) => const Zacarias13Widget(),
        ),
        FFRoute(
          name: 'zacarias_04',
          path: '/zacarias04',
          builder: (context, params) => const Zacarias04Widget(),
        ),
        FFRoute(
          name: 'zacarias_05',
          path: '/zacarias05',
          builder: (context, params) => const Zacarias05Widget(),
        ),
        FFRoute(
          name: 'malaquias_02',
          path: '/malaquias02',
          builder: (context, params) => const Malaquias02Widget(),
        ),
        FFRoute(
          name: 'malaquias_03',
          path: '/malaquias03',
          builder: (context, params) => const Malaquias03Widget(),
        ),
        FFRoute(
          name: 'malaquias_04',
          path: '/malaquias04',
          builder: (context, params) => const Malaquias04Widget(),
        ),
        FFRoute(
          name: 'EBD24',
          path: '/ebd24',
          builder: (context, params) => const Ebd24Widget(),
        ),
        FFRoute(
          name: 'PEBD1_2024_01',
          path: '/pebd1202401',
          builder: (context, params) => const Pebd1202401Widget(),
        ),
        FFRoute(
          name: 'PEBD1_2024_02',
          path: '/pebd1202402',
          builder: (context, params) => const Pebd1202402Widget(),
        ),
        FFRoute(
          name: 'PEBD1_2024_03',
          path: '/pebd1202403',
          builder: (context, params) => const Pebd1202403Widget(),
        ),
        FFRoute(
          name: 'PEBD1_2024_04',
          path: '/pebd1202404',
          builder: (context, params) => const Pebd1202404Widget(),
        ),
        FFRoute(
          name: 'PEBD1_2024_05',
          path: '/pebd1202405',
          builder: (context, params) => const Pebd1202405Widget(),
        ),
        FFRoute(
          name: 'PEBD1_2024_06',
          path: '/pebd1202406',
          builder: (context, params) => const Pebd1202406Widget(),
        ),
        FFRoute(
          name: 'PEBD1_2024_07',
          path: '/pebd1202407',
          builder: (context, params) => const Pebd1202407Widget(),
        ),
        FFRoute(
          name: 'PEBD1_2024_08',
          path: '/pebd1202408',
          builder: (context, params) => const Pebd1202408Widget(),
        ),
        FFRoute(
          name: 'PEBD1_2024_09',
          path: '/pebd1202409',
          builder: (context, params) => const Pebd1202409Widget(),
        ),
        FFRoute(
          name: 'PEBD1_2024_10',
          path: '/pebd1202410',
          builder: (context, params) => const Pebd1202410Widget(),
        ),
        FFRoute(
          name: 'Romanos_01',
          path: '/romanos01',
          builder: (context, params) => const Romanos01Widget(),
        ),
        FFRoute(
          name: 'Menu_01_Mateus',
          path: '/menu01Mateus',
          builder: (context, params) => const Menu01MateusWidget(),
        ),
        FFRoute(
          name: 'Mateus_01',
          path: '/mateus01',
          builder: (context, params) => const Mateus01Widget(),
        ),
        FFRoute(
          name: 'Mateus_02',
          path: '/mateus02',
          builder: (context, params) => const Mateus02Widget(),
        ),
        FFRoute(
          name: 'Mateus_13',
          path: '/mateus13',
          builder: (context, params) => const Mateus13Widget(),
        ),
        FFRoute(
          name: 'Mateus_25',
          path: '/mateus25',
          builder: (context, params) => const Mateus25Widget(),
        ),
        FFRoute(
          name: 'Mateus_24',
          path: '/mateus24',
          builder: (context, params) => const Mateus24Widget(),
        ),
        FFRoute(
          name: 'Mateus_23',
          path: '/mateus23',
          builder: (context, params) => const Mateus23Widget(),
        ),
        FFRoute(
          name: 'Mateus_19',
          path: '/mateus19',
          builder: (context, params) => const Mateus19Widget(),
        ),
        FFRoute(
          name: 'Mateus_20',
          path: '/mateus20',
          builder: (context, params) => const Mateus20Widget(),
        ),
        FFRoute(
          name: 'Mateus_21',
          path: '/mateus21',
          builder: (context, params) => const Mateus21Widget(),
        ),
        FFRoute(
          name: 'Mateus_22',
          path: '/mateus22',
          builder: (context, params) => const Mateus22Widget(),
        ),
        FFRoute(
          name: 'Mateus_03',
          path: '/mateus03',
          builder: (context, params) => const Mateus03Widget(),
        ),
        FFRoute(
          name: 'Mateus_04',
          path: '/mateus04',
          builder: (context, params) => const Mateus04Widget(),
        ),
        FFRoute(
          name: 'Mateus_06',
          path: '/mateus06',
          builder: (context, params) => const Mateus06Widget(),
        ),
        FFRoute(
          name: 'Mateus_05',
          path: '/mateus05',
          builder: (context, params) => const Mateus05Widget(),
        ),
        FFRoute(
          name: 'Mateus_07',
          path: '/mateus07',
          builder: (context, params) => const Mateus07Widget(),
        ),
        FFRoute(
          name: 'Mateus_08',
          path: '/mateus08',
          builder: (context, params) => const Mateus08Widget(),
        ),
        FFRoute(
          name: 'Mateus_09',
          path: '/mateus09',
          builder: (context, params) => const Mateus09Widget(),
        ),
        FFRoute(
          name: 'Mateus_10',
          path: '/mateus10',
          builder: (context, params) => const Mateus10Widget(),
        ),
        FFRoute(
          name: 'Mateus_11',
          path: '/mateus11',
          builder: (context, params) => const Mateus11Widget(),
        ),
        FFRoute(
          name: 'Mateus_12',
          path: '/mateus12',
          builder: (context, params) => const Mateus12Widget(),
        ),
        FFRoute(
          name: 'Mateus_14',
          path: '/mateus14',
          builder: (context, params) => const Mateus14Widget(),
        ),
        FFRoute(
          name: 'Mateus_15',
          path: '/mateus15',
          builder: (context, params) => const Mateus15Widget(),
        ),
        FFRoute(
          name: 'Mateus_16',
          path: '/mateus16',
          builder: (context, params) => const Mateus16Widget(),
        ),
        FFRoute(
          name: 'Mateus_17',
          path: '/mateus17',
          builder: (context, params) => const Mateus17Widget(),
        ),
        FFRoute(
          name: 'Mateus_18',
          path: '/mateus18',
          builder: (context, params) => const Mateus18Widget(),
        ),
        FFRoute(
          name: 'Mateus_28',
          path: '/mateus28',
          builder: (context, params) => const Mateus28Widget(),
        ),
        FFRoute(
          name: 'Mateus_27',
          path: '/mateus27',
          builder: (context, params) => const Mateus27Widget(),
        ),
        FFRoute(
          name: 'Mateus_26',
          path: '/mateus26',
          builder: (context, params) => const Mateus26Widget(),
        ),
        FFRoute(
          name: 'Menu_02_Marcos',
          path: '/menu02Marcos',
          builder: (context, params) => const Menu02MarcosWidget(),
        ),
        FFRoute(
          name: 'Marcos_01',
          path: '/marcos01',
          builder: (context, params) => const Marcos01Widget(),
        ),
        FFRoute(
          name: 'Marcos_02',
          path: '/marcos02',
          builder: (context, params) => const Marcos02Widget(),
        ),
        FFRoute(
          name: 'Marcos_14',
          path: '/marcos14',
          builder: (context, params) => const Marcos14Widget(),
        ),
        FFRoute(
          name: 'Marcos_13',
          path: '/marcos13',
          builder: (context, params) => const Marcos13Widget(),
        ),
        FFRoute(
          name: 'Marcos_12',
          path: '/marcos12',
          builder: (context, params) => const Marcos12Widget(),
        ),
        FFRoute(
          name: 'Marcos_11',
          path: '/marcos11',
          builder: (context, params) => const Marcos11Widget(),
        ),
        FFRoute(
          name: 'Marcos_10',
          path: '/marcos10',
          builder: (context, params) => const Marcos10Widget(),
        ),
        FFRoute(
          name: 'Marcos_09',
          path: '/marcos09',
          builder: (context, params) => const Marcos09Widget(),
        ),
        FFRoute(
          name: 'Marcos_07',
          path: '/marcos07',
          builder: (context, params) => const Marcos07Widget(),
        ),
        FFRoute(
          name: 'Marcos_08',
          path: '/marcos08',
          builder: (context, params) => const Marcos08Widget(),
        ),
        FFRoute(
          name: 'Marcos_03',
          path: '/marcos03',
          builder: (context, params) => const Marcos03Widget(),
        ),
        FFRoute(
          name: 'Marcos_04',
          path: '/marcos04',
          builder: (context, params) => const Marcos04Widget(),
        ),
        FFRoute(
          name: 'Marcos_05',
          path: '/marcos05',
          builder: (context, params) => const Marcos05Widget(),
        ),
        FFRoute(
          name: 'Marcos_06',
          path: '/marcos06',
          builder: (context, params) => const Marcos06Widget(),
        ),
        FFRoute(
          name: 'Marcos_16',
          path: '/marcos16',
          builder: (context, params) => const Marcos16Widget(),
        ),
        FFRoute(
          name: 'Marcos_15',
          path: '/marcos15',
          builder: (context, params) => const Marcos15Widget(),
        ),
        FFRoute(
          name: 'Lucas_01',
          path: '/lucas01',
          builder: (context, params) => const Lucas01Widget(),
        ),
        FFRoute(
          name: 'Menu_3_Lucas',
          path: '/menu3Lucas',
          builder: (context, params) => const Menu3LucasWidget(),
        ),
        FFRoute(
          name: 'Lucas_24',
          path: '/lucas24',
          builder: (context, params) => const Lucas24Widget(),
        ),
        FFRoute(
          name: 'Lucas_13',
          path: '/lucas13',
          builder: (context, params) => const Lucas13Widget(),
        ),
        FFRoute(
          name: 'Lucas_08',
          path: '/lucas08',
          builder: (context, params) => const Lucas08Widget(),
        ),
        FFRoute(
          name: 'Lucas_07',
          path: '/lucas07',
          builder: (context, params) => const Lucas07Widget(),
        ),
        FFRoute(
          name: 'Lucas_06',
          path: '/lucas06',
          builder: (context, params) => const Lucas06Widget(),
        ),
        FFRoute(
          name: 'Lucas_05',
          path: '/lucas05',
          builder: (context, params) => const Lucas05Widget(),
        ),
        FFRoute(
          name: 'Lucas_04',
          path: '/lucas04',
          builder: (context, params) => const Lucas04Widget(),
        ),
        FFRoute(
          name: 'Lucas_03',
          path: '/lucas03',
          builder: (context, params) => const Lucas03Widget(),
        ),
        FFRoute(
          name: 'Lucas_02',
          path: '/lucas02',
          builder: (context, params) => const Lucas02Widget(),
        ),
        FFRoute(
          name: 'Lucas_23',
          path: '/lucas23',
          builder: (context, params) => const Lucas23Widget(),
        ),
        FFRoute(
          name: 'Lucas_22',
          path: '/lucas22',
          builder: (context, params) => const Lucas22Widget(),
        ),
        FFRoute(
          name: 'Lucas_21',
          path: '/lucas21',
          builder: (context, params) => const Lucas21Widget(),
        ),
        FFRoute(
          name: 'Lucas_20',
          path: '/lucas20',
          builder: (context, params) => const Lucas20Widget(),
        ),
        FFRoute(
          name: 'Lucas_19',
          path: '/lucas19',
          builder: (context, params) => const Lucas19Widget(),
        ),
        FFRoute(
          name: 'Lucas_18',
          path: '/lucas18',
          builder: (context, params) => const Lucas18Widget(),
        ),
        FFRoute(
          name: 'Lucas_17',
          path: '/lucas17',
          builder: (context, params) => const Lucas17Widget(),
        ),
        FFRoute(
          name: 'Lucas_16',
          path: '/lucas16',
          builder: (context, params) => const Lucas16Widget(),
        ),
        FFRoute(
          name: 'Lucas_15',
          path: '/lucas15',
          builder: (context, params) => const Lucas15Widget(),
        ),
        FFRoute(
          name: 'Lucas_14',
          path: '/lucas14',
          builder: (context, params) => const Lucas14Widget(),
        ),
        FFRoute(
          name: 'Lucas_12',
          path: '/lucas12',
          builder: (context, params) => const Lucas12Widget(),
        ),
        FFRoute(
          name: 'Lucas_11',
          path: '/lucas11',
          builder: (context, params) => const Lucas11Widget(),
        ),
        FFRoute(
          name: 'Lucas_10',
          path: '/lucas10',
          builder: (context, params) => const Lucas10Widget(),
        ),
        FFRoute(
          name: 'Lucas_09',
          path: '/lucas09',
          builder: (context, params) => const Lucas09Widget(),
        ),
        FFRoute(
          name: 'Menu_04_joao',
          path: '/menu04Joao',
          builder: (context, params) => const Menu04JoaoWidget(),
        ),
        FFRoute(
          name: 'Joao_01',
          path: '/joao01',
          builder: (context, params) => const Joao01Widget(),
        ),
        FFRoute(
          name: 'Joao_21',
          path: '/joao21',
          builder: (context, params) => const Joao21Widget(),
        ),
        FFRoute(
          name: 'Joao_10',
          path: '/joao10',
          builder: (context, params) => const Joao10Widget(),
        ),
        FFRoute(
          name: 'Joao_08',
          path: '/joao08',
          builder: (context, params) => const Joao08Widget(),
        ),
        FFRoute(
          name: 'Joao_07',
          path: '/joao07',
          builder: (context, params) => const Joao07Widget(),
        ),
        FFRoute(
          name: 'Joao_06',
          path: '/joao06',
          builder: (context, params) => const Joao06Widget(),
        ),
        FFRoute(
          name: 'Joao_02',
          path: '/joao02',
          builder: (context, params) => const Joao02Widget(),
        ),
        FFRoute(
          name: 'Joao_03',
          path: '/joao03',
          builder: (context, params) => const Joao03Widget(),
        ),
        FFRoute(
          name: 'Joao_04',
          path: '/joao04',
          builder: (context, params) => const Joao04Widget(),
        ),
        FFRoute(
          name: 'Joao_05',
          path: '/joao05',
          builder: (context, params) => const Joao05Widget(),
        ),
        FFRoute(
          name: 'Joao_19',
          path: '/joao19',
          builder: (context, params) => const Joao19Widget(),
        ),
        FFRoute(
          name: 'Joao_18',
          path: '/joao18',
          builder: (context, params) => const Joao18Widget(),
        ),
        FFRoute(
          name: 'Joao_17',
          path: '/joao17',
          builder: (context, params) => const Joao17Widget(),
        ),
        FFRoute(
          name: 'Joao_20',
          path: '/joao20',
          builder: (context, params) => const Joao20Widget(),
        ),
        FFRoute(
          name: 'Joao_16',
          path: '/joao16',
          builder: (context, params) => const Joao16Widget(),
        ),
        FFRoute(
          name: 'Joao_15',
          path: '/joao15',
          builder: (context, params) => const Joao15Widget(),
        ),
        FFRoute(
          name: 'Joao_14',
          path: '/joao14',
          builder: (context, params) => const Joao14Widget(),
        ),
        FFRoute(
          name: 'Joao_13',
          path: '/joao13',
          builder: (context, params) => const Joao13Widget(),
        ),
        FFRoute(
          name: 'Joao_12',
          path: '/joao12',
          builder: (context, params) => const Joao12Widget(),
        ),
        FFRoute(
          name: 'Joao_11',
          path: '/joao11',
          builder: (context, params) => const Joao11Widget(),
        ),
        FFRoute(
          name: 'Joao_09',
          path: '/joao09',
          builder: (context, params) => const Joao09Widget(),
        ),
        FFRoute(
          name: 'Atos_01',
          path: '/atos01',
          builder: (context, params) => const Atos01Widget(),
        ),
        FFRoute(
          name: 'Menu_05_Atos',
          path: '/menu05Atos',
          builder: (context, params) => const Menu05AtosWidget(),
        ),
        FFRoute(
          name: 'Atos_28',
          path: '/atos28',
          builder: (context, params) => const Atos28Widget(),
        ),
        FFRoute(
          name: 'Atos_17',
          path: '/atos17',
          builder: (context, params) => const Atos17Widget(),
        ),
        FFRoute(
          name: 'Atos_08',
          path: '/atos08',
          builder: (context, params) => const Atos08Widget(),
        ),
        FFRoute(
          name: 'Atos_07',
          path: '/atos07',
          builder: (context, params) => const Atos07Widget(),
        ),
        FFRoute(
          name: 'Atos_06',
          path: '/atos06',
          builder: (context, params) => const Atos06Widget(),
        ),
        FFRoute(
          name: 'Atos_05',
          path: '/atos05',
          builder: (context, params) => const Atos05Widget(),
        ),
        FFRoute(
          name: 'Atos_04',
          path: '/atos04',
          builder: (context, params) => const Atos04Widget(),
        ),
        FFRoute(
          name: 'Atos_03',
          path: '/atos03',
          builder: (context, params) => const Atos03Widget(),
        ),
        FFRoute(
          name: 'Atos_02',
          path: '/atos02',
          builder: (context, params) => const Atos02Widget(),
        ),
        FFRoute(
          name: 'Atos_27',
          path: '/atos27',
          builder: (context, params) => const Atos27Widget(),
        ),
        FFRoute(
          name: 'Atos_26',
          path: '/atos26',
          builder: (context, params) => const Atos26Widget(),
        ),
        FFRoute(
          name: 'Atos_25',
          path: '/atos25',
          builder: (context, params) => const Atos25Widget(),
        ),
        FFRoute(
          name: 'Atos_24',
          path: '/atos24',
          builder: (context, params) => const Atos24Widget(),
        ),
        FFRoute(
          name: 'Atos_23',
          path: '/atos23',
          builder: (context, params) => const Atos23Widget(),
        ),
        FFRoute(
          name: 'Atos_22',
          path: '/atos22',
          builder: (context, params) => const Atos22Widget(),
        ),
        FFRoute(
          name: 'Atos_21',
          path: '/atos21',
          builder: (context, params) => const Atos21Widget(),
        ),
        FFRoute(
          name: 'Atos_20',
          path: '/atos20',
          builder: (context, params) => const Atos20Widget(),
        ),
        FFRoute(
          name: 'Atos_19',
          path: '/atos19',
          builder: (context, params) => const Atos19Widget(),
        ),
        FFRoute(
          name: 'Atos_18',
          path: '/atos18',
          builder: (context, params) => const Atos18Widget(),
        ),
        FFRoute(
          name: 'Atos_16',
          path: '/atos16',
          builder: (context, params) => const Atos16Widget(),
        ),
        FFRoute(
          name: 'Atos_15',
          path: '/atos15',
          builder: (context, params) => const Atos15Widget(),
        ),
        FFRoute(
          name: 'Atos_14',
          path: '/atos14',
          builder: (context, params) => const Atos14Widget(),
        ),
        FFRoute(
          name: 'Atos_13',
          path: '/atos13',
          builder: (context, params) => const Atos13Widget(),
        ),
        FFRoute(
          name: 'Atos_12',
          path: '/atos12',
          builder: (context, params) => const Atos12Widget(),
        ),
        FFRoute(
          name: 'Atos_11',
          path: '/atos11',
          builder: (context, params) => const Atos11Widget(),
        ),
        FFRoute(
          name: 'Atos_10',
          path: '/atos10',
          builder: (context, params) => const Atos10Widget(),
        ),
        FFRoute(
          name: 'Atos_09',
          path: '/atos09',
          builder: (context, params) => const Atos09Widget(),
        ),
        FFRoute(
          name: 'Menu_07_Corintios1',
          path: '/menu07Corintios1',
          builder: (context, params) => const Menu07Corintios1Widget(),
        ),
        FFRoute(
          name: 'Corintios1_01',
          path: '/corintios101',
          builder: (context, params) => const Corintios101Widget(),
        ),
        FFRoute(
          name: 'Corintios2_01',
          path: '/corintios201',
          builder: (context, params) => const Corintios201Widget(),
        ),
        FFRoute(
          name: 'Menu_08_Corintios2',
          path: '/menu08Corintios2',
          builder: (context, params) => const Menu08Corintios2Widget(),
        ),
        FFRoute(
          name: 'Menu_09_Galatas',
          path: '/menu09Galatas',
          builder: (context, params) => const Menu09GalatasWidget(),
        ),
        FFRoute(
          name: 'Galatas_01',
          path: '/galatas01',
          builder: (context, params) => const Galatas01Widget(),
        ),
        FFRoute(
          name: 'Menu_10_Efesios',
          path: '/menu10Efesios',
          builder: (context, params) => const Menu10EfesiosWidget(),
        ),
        FFRoute(
          name: 'Efesios_01',
          path: '/efesios01',
          builder: (context, params) => const Efesios01Widget(),
        ),
        FFRoute(
          name: 'Menu_11_Filipenses',
          path: '/menu11Filipenses',
          builder: (context, params) => const Menu11FilipensesWidget(),
        ),
        FFRoute(
          name: 'Filipenses_01',
          path: '/filipenses01',
          builder: (context, params) => const Filipenses01Widget(),
        ),
        FFRoute(
          name: 'Menu_12_Colos',
          path: '/menu12Colos',
          builder: (context, params) => const Menu12ColosWidget(),
        ),
        FFRoute(
          name: 'Colossenses_01',
          path: '/colossenses01',
          builder: (context, params) => const Colossenses01Widget(),
        ),
        FFRoute(
          name: 'Tessalonicenses1_01',
          path: '/tessalonicenses101',
          builder: (context, params) => const Tessalonicenses101Widget(),
        ),
        FFRoute(
          name: 'Menu_13_1Tessalonicenses',
          path: '/menu131Tessalonicenses',
          builder: (context, params) => const Menu131TessalonicensesWidget(),
        ),
        FFRoute(
          name: 'Menu_14_2Tessalonicenses',
          path: '/menu142Tessalonicenses',
          builder: (context, params) => const Menu142TessalonicensesWidget(),
        ),
        FFRoute(
          name: 'Tessalonicenses2_01',
          path: '/tessalonicenses201',
          builder: (context, params) => const Tessalonicenses201Widget(),
        ),
        FFRoute(
          name: 'Timoteo1_01',
          path: '/timoteo101',
          builder: (context, params) => const Timoteo101Widget(),
        ),
        FFRoute(
          name: 'Menu_15_1Timoteo',
          path: '/menu151Timoteo',
          builder: (context, params) => const Menu151TimoteoWidget(),
        ),
        FFRoute(
          name: 'Menu_16_2Timoteo',
          path: '/menu162Timoteo',
          builder: (context, params) => const Menu162TimoteoWidget(),
        ),
        FFRoute(
          name: 'Timoteo2_01',
          path: '/timoteo201',
          builder: (context, params) => const Timoteo201Widget(),
        ),
        FFRoute(
          name: 'Menu_17_tito',
          path: '/menu17Tito',
          builder: (context, params) => const Menu17TitoWidget(),
        ),
        FFRoute(
          name: 'Tito_01',
          path: '/tito01',
          builder: (context, params) => const Tito01Widget(),
        ),
        FFRoute(
          name: 'Menu_18_Filemom',
          path: '/menu18Filemom',
          builder: (context, params) => const Menu18FilemomWidget(),
        ),
        FFRoute(
          name: 'Filemom_01',
          path: '/filemom01',
          builder: (context, params) => const Filemom01Widget(),
        ),
        FFRoute(
          name: 'Menu_19_Hebreus',
          path: '/menu19Hebreus',
          builder: (context, params) => const Menu19HebreusWidget(),
        ),
        FFRoute(
          name: 'Hebreus_01',
          path: '/hebreus01',
          builder: (context, params) => const Hebreus01Widget(),
        ),
        FFRoute(
          name: 'Tiago_01',
          path: '/tiago01',
          builder: (context, params) => const Tiago01Widget(),
        ),
        FFRoute(
          name: 'Menu_20_Tiago',
          path: '/menu20Tiago',
          builder: (context, params) => const Menu20TiagoWidget(),
        ),
        FFRoute(
          name: 'Pedro1_01',
          path: '/pedro101',
          builder: (context, params) => const Pedro101Widget(),
        ),
        FFRoute(
          name: 'Menu_21_Pedro1',
          path: '/menu21Pedro1',
          builder: (context, params) => const Menu21Pedro1Widget(),
        ),
        FFRoute(
          name: 'Menu_22_Pedro2',
          path: '/menu22Pedro2',
          builder: (context, params) => const Menu22Pedro2Widget(),
        ),
        FFRoute(
          name: 'Pedro2_01',
          path: '/pedro201',
          builder: (context, params) => const Pedro201Widget(),
        ),
        FFRoute(
          name: 'Menu_23_Joao1',
          path: '/menu23Joao1',
          builder: (context, params) => const Menu23Joao1Widget(),
        ),
        FFRoute(
          name: 'Joao1_01',
          path: '/joao101',
          builder: (context, params) => const Joao101Widget(),
        ),
        FFRoute(
          name: 'Joao2_01',
          path: '/joao201',
          builder: (context, params) => const Joao201Widget(),
        ),
        FFRoute(
          name: 'Menu_24_Joao2',
          path: '/menu24Joao2',
          builder: (context, params) => const Menu24Joao2Widget(),
        ),
        FFRoute(
          name: 'Joao3_01',
          path: '/joao301',
          builder: (context, params) => const Joao301Widget(),
        ),
        FFRoute(
          name: 'Menu_25_Joao3',
          path: '/menu25Joao3',
          builder: (context, params) => const Menu25Joao3Widget(),
        ),
        FFRoute(
          name: 'Judas_01',
          path: '/judas01',
          builder: (context, params) => const Judas01Widget(),
        ),
        FFRoute(
          name: 'Menu_26_Judas',
          path: '/menu26Judas',
          builder: (context, params) => const Menu26JudasWidget(),
        ),
        FFRoute(
          name: 'Menu_27_Apocalipse',
          path: '/menu27Apocalipse',
          builder: (context, params) => const Menu27ApocalipseWidget(),
        ),
        FFRoute(
          name: 'Apocalipse_01',
          path: '/apocalipse01',
          builder: (context, params) => const Apocalipse01Widget(),
        ),
        FFRoute(
          name: 'Apocalipse_02',
          path: '/apocalipse02',
          builder: (context, params) => const Apocalipse02Widget(),
        ),
        FFRoute(
          name: 'Apocalipse_13',
          path: '/apocalipse13',
          builder: (context, params) => const Apocalipse13Widget(),
        ),
        FFRoute(
          name: 'Apocalipse_16',
          path: '/apocalipse16',
          builder: (context, params) => const Apocalipse16Widget(),
        ),
        FFRoute(
          name: 'Apocalipse_22',
          path: '/apocalipse22',
          builder: (context, params) => const Apocalipse22Widget(),
        ),
        FFRoute(
          name: 'Apocalipse_21',
          path: '/apocalipse21',
          builder: (context, params) => const Apocalipse21Widget(),
        ),
        FFRoute(
          name: 'Apocalipse_20',
          path: '/apocalipse20',
          builder: (context, params) => const Apocalipse20Widget(),
        ),
        FFRoute(
          name: 'Apocalipse_19',
          path: '/apocalipse19',
          builder: (context, params) => const Apocalipse19Widget(),
        ),
        FFRoute(
          name: 'Apocalipse_18',
          path: '/apocalipse18',
          builder: (context, params) => const Apocalipse18Widget(),
        ),
        FFRoute(
          name: 'Apocalipse_17',
          path: '/apocalipse17',
          builder: (context, params) => const Apocalipse17Widget(),
        ),
        FFRoute(
          name: 'Apocalipse_03',
          path: '/apocalipse03',
          builder: (context, params) => const Apocalipse03Widget(),
        ),
        FFRoute(
          name: 'Apocalipse_04',
          path: '/apocalipse04',
          builder: (context, params) => const Apocalipse04Widget(),
        ),
        FFRoute(
          name: 'Apocalipse_05',
          path: '/apocalipse05',
          builder: (context, params) => const Apocalipse05Widget(),
        ),
        FFRoute(
          name: 'Apocalipse_06',
          path: '/apocalipse06',
          builder: (context, params) => const Apocalipse06Widget(),
        ),
        FFRoute(
          name: 'Apocalipse_07',
          path: '/apocalipse07',
          builder: (context, params) => const Apocalipse07Widget(),
        ),
        FFRoute(
          name: 'Apocalipse_08',
          path: '/apocalipse08',
          builder: (context, params) => const Apocalipse08Widget(),
        ),
        FFRoute(
          name: 'Apocalipse_09',
          path: '/apocalipse09',
          builder: (context, params) => const Apocalipse09Widget(),
        ),
        FFRoute(
          name: 'Apocalipse_10',
          path: '/apocalipse10',
          builder: (context, params) => const Apocalipse10Widget(),
        ),
        FFRoute(
          name: 'Apocalipse_11',
          path: '/apocalipse11',
          builder: (context, params) => const Apocalipse11Widget(),
        ),
        FFRoute(
          name: 'Apocalipse_12',
          path: '/apocalipse12',
          builder: (context, params) => const Apocalipse12Widget(),
        ),
        FFRoute(
          name: 'Apocalipse_14',
          path: '/apocalipse14',
          builder: (context, params) => const Apocalipse14Widget(),
        ),
        FFRoute(
          name: 'Apocalipse_15',
          path: '/apocalipse15',
          builder: (context, params) => const Apocalipse15Widget(),
        ),
        FFRoute(
          name: 'Romanos_02',
          path: '/romanos02',
          builder: (context, params) => const Romanos02Widget(),
        ),
        FFRoute(
          name: 'Romanos_09',
          path: '/romanos09',
          builder: (context, params) => const Romanos09Widget(),
        ),
        FFRoute(
          name: 'Romanos_10',
          path: '/romanos10',
          builder: (context, params) => const Romanos10Widget(),
        ),
        FFRoute(
          name: 'Romanos_11',
          path: '/romanos11',
          builder: (context, params) => const Romanos11Widget(),
        ),
        FFRoute(
          name: 'Romanos_12',
          path: '/romanos12',
          builder: (context, params) => const Romanos12Widget(),
        ),
        FFRoute(
          name: 'Romanos_13',
          path: '/romanos13',
          builder: (context, params) => const Romanos13Widget(),
        ),
        FFRoute(
          name: 'Romanos_14',
          path: '/romanos14',
          builder: (context, params) => const Romanos14Widget(),
        ),
        FFRoute(
          name: 'Romanos_15',
          path: '/romanos15',
          builder: (context, params) => const Romanos15Widget(),
        ),
        FFRoute(
          name: 'Romanos_16',
          path: '/romanos16',
          builder: (context, params) => const Romanos16Widget(),
        ),
        FFRoute(
          name: 'Romanos_03',
          path: '/romanos03',
          builder: (context, params) => const Romanos03Widget(),
        ),
        FFRoute(
          name: 'Romanos_04',
          path: '/romanos04',
          builder: (context, params) => const Romanos04Widget(),
        ),
        FFRoute(
          name: 'Romanos_05',
          path: '/romanos05',
          builder: (context, params) => const Romanos05Widget(),
        ),
        FFRoute(
          name: 'Romanos_06',
          path: '/romanos06',
          builder: (context, params) => const Romanos06Widget(),
        ),
        FFRoute(
          name: 'Romanos_07',
          path: '/romanos07',
          builder: (context, params) => const Romanos07Widget(),
        ),
        FFRoute(
          name: 'Romanos_08',
          path: '/romanos08',
          builder: (context, params) => const Romanos08Widget(),
        ),
        FFRoute(
          name: 'Corintios1_02',
          path: '/corintios102',
          builder: (context, params) => const Corintios102Widget(),
        ),
        FFRoute(
          name: 'Corintios1_09',
          path: '/corintios109',
          builder: (context, params) => const Corintios109Widget(),
        ),
        FFRoute(
          name: 'Corintios1_10',
          path: '/corintios110',
          builder: (context, params) => const Corintios110Widget(),
        ),
        FFRoute(
          name: 'Corintios1_11',
          path: '/corintios111',
          builder: (context, params) => const Corintios111Widget(),
        ),
        FFRoute(
          name: 'Corintios1_12',
          path: '/corintios112',
          builder: (context, params) => const Corintios112Widget(),
        ),
        FFRoute(
          name: 'Corintios1_13',
          path: '/corintios113',
          builder: (context, params) => const Corintios113Widget(),
        ),
        FFRoute(
          name: 'Corintios1_14',
          path: '/corintios114',
          builder: (context, params) => const Corintios114Widget(),
        ),
        FFRoute(
          name: 'Corintios1_15',
          path: '/corintios115',
          builder: (context, params) => const Corintios115Widget(),
        ),
        FFRoute(
          name: 'Corintios1_16',
          path: '/corintios116',
          builder: (context, params) => const Corintios116Widget(),
        ),
        FFRoute(
          name: 'Corintios1_03',
          path: '/corintios103',
          builder: (context, params) => const Corintios103Widget(),
        ),
        FFRoute(
          name: 'Corintios1_04',
          path: '/corintios104',
          builder: (context, params) => const Corintios104Widget(),
        ),
        FFRoute(
          name: 'Corintios1_05',
          path: '/corintios105',
          builder: (context, params) => const Corintios105Widget(),
        ),
        FFRoute(
          name: 'Corintios1_06',
          path: '/corintios106',
          builder: (context, params) => const Corintios106Widget(),
        ),
        FFRoute(
          name: 'Corintios1_08',
          path: '/corintios108',
          builder: (context, params) => const Corintios108Widget(),
        ),
        FFRoute(
          name: 'Corintios1_07',
          path: '/corintios107',
          builder: (context, params) => const Corintios107Widget(),
        ),
        FFRoute(
          name: 'Corintios2_02',
          path: '/corintios202',
          builder: (context, params) => const Corintios202Widget(),
        ),
        FFRoute(
          name: 'Corintios2_06',
          path: '/corintios206',
          builder: (context, params) => const Corintios206Widget(),
        ),
        FFRoute(
          name: 'Corintios2_07',
          path: '/corintios207',
          builder: (context, params) => const Corintios207Widget(),
        ),
        FFRoute(
          name: 'Corintios2_08',
          path: '/corintios208',
          builder: (context, params) => const Corintios208Widget(),
        ),
        FFRoute(
          name: 'Corintios2_09',
          path: '/corintios209',
          builder: (context, params) => const Corintios209Widget(),
        ),
        FFRoute(
          name: 'Corintios2_10',
          path: '/corintios210',
          builder: (context, params) => const Corintios210Widget(),
        ),
        FFRoute(
          name: 'Corintios2_11',
          path: '/corintios211',
          builder: (context, params) => const Corintios211Widget(),
        ),
        FFRoute(
          name: 'Corintios2_12',
          path: '/corintios212',
          builder: (context, params) => const Corintios212Widget(),
        ),
        FFRoute(
          name: 'Corintios2_13',
          path: '/corintios213',
          builder: (context, params) => const Corintios213Widget(),
        ),
        FFRoute(
          name: 'Corintios2_03',
          path: '/corintios203',
          builder: (context, params) => const Corintios203Widget(),
        ),
        FFRoute(
          name: 'Corintios2_04',
          path: '/corintios204',
          builder: (context, params) => const Corintios204Widget(),
        ),
        FFRoute(
          name: 'Corintios2_05',
          path: '/corintios205',
          builder: (context, params) => const Corintios205Widget(),
        ),
        FFRoute(
          name: 'Galatas_02',
          path: '/galatas02',
          builder: (context, params) => const Galatas02Widget(),
        ),
        FFRoute(
          name: 'Galatas_03',
          path: '/galatas03',
          builder: (context, params) => const Galatas03Widget(),
        ),
        FFRoute(
          name: 'Galatas_04',
          path: '/galatas04',
          builder: (context, params) => const Galatas04Widget(),
        ),
        FFRoute(
          name: 'Galatas_05',
          path: '/galatas05',
          builder: (context, params) => const Galatas05Widget(),
        ),
        FFRoute(
          name: 'Galatas_06',
          path: '/galatas06',
          builder: (context, params) => const Galatas06Widget(),
        ),
        FFRoute(
          name: 'Efesios_02',
          path: '/efesios02',
          builder: (context, params) => const Efesios02Widget(),
        ),
        FFRoute(
          name: 'Efesios_03',
          path: '/efesios03',
          builder: (context, params) => const Efesios03Widget(),
        ),
        FFRoute(
          name: 'Efesios_04',
          path: '/efesios04',
          builder: (context, params) => const Efesios04Widget(),
        ),
        FFRoute(
          name: 'Efesios_05',
          path: '/efesios05',
          builder: (context, params) => const Efesios05Widget(),
        ),
        FFRoute(
          name: 'Efesios_06',
          path: '/efesios06',
          builder: (context, params) => const Efesios06Widget(),
        ),
        FFRoute(
          name: 'Filipenses_02',
          path: '/filipenses02',
          builder: (context, params) => const Filipenses02Widget(),
        ),
        FFRoute(
          name: 'Filipenses_03',
          path: '/filipenses03',
          builder: (context, params) => const Filipenses03Widget(),
        ),
        FFRoute(
          name: 'Filipenses_04',
          path: '/filipenses04',
          builder: (context, params) => const Filipenses04Widget(),
        ),
        FFRoute(
          name: 'Colossenses_02',
          path: '/colossenses02',
          builder: (context, params) => const Colossenses02Widget(),
        ),
        FFRoute(
          name: 'Colossenses_03',
          path: '/colossenses03',
          builder: (context, params) => const Colossenses03Widget(),
        ),
        FFRoute(
          name: 'Colossenses_04',
          path: '/colossenses04',
          builder: (context, params) => const Colossenses04Widget(),
        ),
        FFRoute(
          name: 'Tessalonicenses1_02',
          path: '/tessalonicenses102',
          builder: (context, params) => const Tessalonicenses102Widget(),
        ),
        FFRoute(
          name: 'Tessalonicenses1_03',
          path: '/tessalonicenses103',
          builder: (context, params) => const Tessalonicenses103Widget(),
        ),
        FFRoute(
          name: 'Tessalonicenses1_04',
          path: '/tessalonicenses104',
          builder: (context, params) => const Tessalonicenses104Widget(),
        ),
        FFRoute(
          name: 'Tessalonicenses1_05',
          path: '/tessalonicenses105',
          builder: (context, params) => const Tessalonicenses105Widget(),
        ),
        FFRoute(
          name: 'Tessalonicenses2_02',
          path: '/tessalonicenses202',
          builder: (context, params) => const Tessalonicenses202Widget(),
        ),
        FFRoute(
          name: 'Tessalonicenses2_03',
          path: '/tessalonicenses203',
          builder: (context, params) => const Tessalonicenses203Widget(),
        ),
        FFRoute(
          name: 'Timoteo1_02',
          path: '/timoteo102',
          builder: (context, params) => const Timoteo102Widget(),
        ),
        FFRoute(
          name: 'Timoteo1_03',
          path: '/timoteo103',
          builder: (context, params) => const Timoteo103Widget(),
        ),
        FFRoute(
          name: 'Timoteo1_04',
          path: '/timoteo104',
          builder: (context, params) => const Timoteo104Widget(),
        ),
        FFRoute(
          name: 'Timoteo1_05',
          path: '/timoteo105',
          builder: (context, params) => const Timoteo105Widget(),
        ),
        FFRoute(
          name: 'Timoteo1_06',
          path: '/timoteo106',
          builder: (context, params) => const Timoteo106Widget(),
        ),
        FFRoute(
          name: 'Timoteo2_02',
          path: '/timoteo202',
          builder: (context, params) => const Timoteo202Widget(),
        ),
        FFRoute(
          name: 'Timoteo2_03',
          path: '/timoteo203',
          builder: (context, params) => const Timoteo203Widget(),
        ),
        FFRoute(
          name: 'Timoteo2_04',
          path: '/timoteo204',
          builder: (context, params) => const Timoteo204Widget(),
        ),
        FFRoute(
          name: 'Tito_02',
          path: '/tito02',
          builder: (context, params) => const Tito02Widget(),
        ),
        FFRoute(
          name: 'Tito_03',
          path: '/tito03',
          builder: (context, params) => const Tito03Widget(),
        ),
        FFRoute(
          name: 'Hebreus_02',
          path: '/hebreus02',
          builder: (context, params) => const Hebreus02Widget(),
        ),
        FFRoute(
          name: 'Hebreus_06',
          path: '/hebreus06',
          builder: (context, params) => const Hebreus06Widget(),
        ),
        FFRoute(
          name: 'Hebreus_07',
          path: '/hebreus07',
          builder: (context, params) => const Hebreus07Widget(),
        ),
        FFRoute(
          name: 'Hebreus_08',
          path: '/hebreus08',
          builder: (context, params) => const Hebreus08Widget(),
        ),
        FFRoute(
          name: 'Hebreus_09',
          path: '/hebreus09',
          builder: (context, params) => const Hebreus09Widget(),
        ),
        FFRoute(
          name: 'Hebreus_10',
          path: '/hebreus10',
          builder: (context, params) => const Hebreus10Widget(),
        ),
        FFRoute(
          name: 'Hebreus_11',
          path: '/hebreus11',
          builder: (context, params) => const Hebreus11Widget(),
        ),
        FFRoute(
          name: 'Hebreus_12',
          path: '/hebreus12',
          builder: (context, params) => const Hebreus12Widget(),
        ),
        FFRoute(
          name: 'Hebreus_13',
          path: '/hebreus13',
          builder: (context, params) => const Hebreus13Widget(),
        ),
        FFRoute(
          name: 'Hebreus_03',
          path: '/hebreus03',
          builder: (context, params) => const Hebreus03Widget(),
        ),
        FFRoute(
          name: 'Hebreus_04',
          path: '/hebreus04',
          builder: (context, params) => const Hebreus04Widget(),
        ),
        FFRoute(
          name: 'Hebreus_05',
          path: '/hebreus05',
          builder: (context, params) => const Hebreus05Widget(),
        ),
        FFRoute(
          name: 'Tiago_02',
          path: '/tiago02',
          builder: (context, params) => const Tiago02Widget(),
        ),
        FFRoute(
          name: 'Tiago_03',
          path: '/tiago03',
          builder: (context, params) => const Tiago03Widget(),
        ),
        FFRoute(
          name: 'Tiago_04',
          path: '/tiago04',
          builder: (context, params) => const Tiago04Widget(),
        ),
        FFRoute(
          name: 'Tiago_05',
          path: '/tiago05',
          builder: (context, params) => const Tiago05Widget(),
        ),
        FFRoute(
          name: 'Pedro1_02',
          path: '/pedro102',
          builder: (context, params) => const Pedro102Widget(),
        ),
        FFRoute(
          name: 'Pedro1_03',
          path: '/pedro103',
          builder: (context, params) => const Pedro103Widget(),
        ),
        FFRoute(
          name: 'Pedro1_04',
          path: '/pedro104',
          builder: (context, params) => const Pedro104Widget(),
        ),
        FFRoute(
          name: 'Pedro1_05',
          path: '/pedro105',
          builder: (context, params) => const Pedro105Widget(),
        ),
        FFRoute(
          name: 'Pedro2_02',
          path: '/pedro202',
          builder: (context, params) => const Pedro202Widget(),
        ),
        FFRoute(
          name: 'Pedro2_03',
          path: '/pedro203',
          builder: (context, params) => const Pedro203Widget(),
        ),
        FFRoute(
          name: 'Joao1_02',
          path: '/joao102',
          builder: (context, params) => const Joao102Widget(),
        ),
        FFRoute(
          name: 'Joao1_03',
          path: '/joao103',
          builder: (context, params) => const Joao103Widget(),
        ),
        FFRoute(
          name: 'Joao1_04',
          path: '/joao104',
          builder: (context, params) => const Joao104Widget(),
        ),
        FFRoute(
          name: 'Joao1_05',
          path: '/joao105',
          builder: (context, params) => const Joao105Widget(),
        ),
        FFRoute(
          name: 'issuureader',
          path: '/issuureader',
          builder: (context, params) => const IssuureaderWidget(),
        ),
        FFRoute(
          name: 'salmos_098',
          path: '/salmos098',
          builder: (context, params) => const Salmos098Widget(),
        ),
        FFRoute(
          name: 'salmos_088',
          path: '/salmos088',
          builder: (context, params) => const Salmos088Widget(),
        ),
        FFRoute(
          name: 'salmos_077',
          path: '/salmos077',
          builder: (context, params) => const Salmos077Widget(),
        ),
        FFRoute(
          name: 'salmos_069',
          path: '/salmos069',
          builder: (context, params) => const Salmos069Widget(),
        ),
        FFRoute(
          name: 'salmos_048',
          path: '/salmos048',
          builder: (context, params) => const Salmos048Widget(),
        ),
        FFRoute(
          name: 'salmos_054',
          path: '/salmos054',
          builder: (context, params) => const Salmos054Widget(),
        ),
        FFRoute(
          name: 'salmos_032',
          path: '/salmos032',
          builder: (context, params) => const Salmos032Widget(),
        ),
        FFRoute(
          name: 'salmos_022',
          path: '/salmos022',
          builder: (context, params) => const Salmos022Widget(),
        ),
        FFRoute(
          name: 'salmos_011',
          path: '/salmos011',
          builder: (context, params) => const Salmos011Widget(),
        ),
        FFRoute(
          name: 'salmos_005',
          path: '/salmos005',
          builder: (context, params) => const Salmos005Widget(),
        ),
        FFRoute(
          name: 'salmos_097',
          path: '/salmos097',
          builder: (context, params) => const Salmos097Widget(),
        ),
        FFRoute(
          name: 'salmos_096',
          path: '/salmos096',
          builder: (context, params) => const Salmos096Widget(),
        ),
        FFRoute(
          name: 'salmos_095',
          path: '/salmos095',
          builder: (context, params) => const Salmos095Widget(),
        ),
        FFRoute(
          name: 'salmos_094',
          path: '/salmos094',
          builder: (context, params) => const Salmos094Widget(),
        ),
        FFRoute(
          name: 'salmos_093',
          path: '/salmos093',
          builder: (context, params) => const Salmos093Widget(),
        ),
        FFRoute(
          name: 'salmos_092',
          path: '/salmos092',
          builder: (context, params) => const Salmos092Widget(),
        ),
        FFRoute(
          name: 'salmos_091',
          path: '/salmos091',
          builder: (context, params) => const Salmos091Widget(),
        ),
        FFRoute(
          name: 'salmos_090',
          path: '/salmos090',
          builder: (context, params) => const Salmos090Widget(),
        ),
        FFRoute(
          name: 'salmos_089',
          path: '/salmos089',
          builder: (context, params) => const Salmos089Widget(),
        ),
        FFRoute(
          name: 'salmos_087',
          path: '/salmos087',
          builder: (context, params) => const Salmos087Widget(),
        ),
        FFRoute(
          name: 'salmos_086',
          path: '/salmos086',
          builder: (context, params) => const Salmos086Widget(),
        ),
        FFRoute(
          name: 'salmos_085',
          path: '/salmos085',
          builder: (context, params) => const Salmos085Widget(),
        ),
        FFRoute(
          name: 'salmos_084',
          path: '/salmos084',
          builder: (context, params) => const Salmos084Widget(),
        ),
        FFRoute(
          name: 'salmos_083',
          path: '/salmos083',
          builder: (context, params) => const Salmos083Widget(),
        ),
        FFRoute(
          name: 'salmos_082',
          path: '/salmos082',
          builder: (context, params) => const Salmos082Widget(),
        ),
        FFRoute(
          name: 'salmos_081',
          path: '/salmos081',
          builder: (context, params) => const Salmos081Widget(),
        ),
        FFRoute(
          name: 'salmos_080',
          path: '/salmos080',
          builder: (context, params) => const Salmos080Widget(),
        ),
        FFRoute(
          name: 'salmos_079',
          path: '/salmos079',
          builder: (context, params) => const Salmos079Widget(),
        ),
        FFRoute(
          name: 'salmos_004',
          path: '/salmos004',
          builder: (context, params) => const Salmos004Widget(),
        ),
        FFRoute(
          name: 'salmos_078',
          path: '/salmos078',
          builder: (context, params) => const Salmos078Widget(),
        ),
        FFRoute(
          name: 'salmos_003',
          path: '/salmos003',
          builder: (context, params) => const Salmos003Widget(),
        ),
        FFRoute(
          name: 'salmos_071',
          path: '/salmos071',
          builder: (context, params) => const Salmos071Widget(),
        ),
        FFRoute(
          name: 'salmos_072',
          path: '/salmos072',
          builder: (context, params) => const Salmos072Widget(),
        ),
        FFRoute(
          name: 'salmos_073',
          path: '/salmos073',
          builder: (context, params) => const Salmos073Widget(),
        ),
        FFRoute(
          name: 'salmos_074',
          path: '/salmos074',
          builder: (context, params) => const Salmos074Widget(),
        ),
        FFRoute(
          name: 'salmos_075',
          path: '/salmos075',
          builder: (context, params) => const Salmos075Widget(),
        ),
        FFRoute(
          name: 'salmos_070',
          path: '/salmos070',
          builder: (context, params) => const Salmos070Widget(),
        ),
        FFRoute(
          name: 'salmos_066',
          path: '/salmos066',
          builder: (context, params) => const Salmos066Widget(),
        ),
        FFRoute(
          name: 'salmos_067',
          path: '/salmos067',
          builder: (context, params) => const Salmos067Widget(),
        ),
        FFRoute(
          name: 'salmos_068',
          path: '/salmos068',
          builder: (context, params) => const Salmos068Widget(),
        ),
        FFRoute(
          name: 'salmos_076',
          path: '/salmos076',
          builder: (context, params) => const Salmos076Widget(),
        ),
        FFRoute(
          name: 'salmos_065',
          path: '/salmos065',
          builder: (context, params) => const Salmos065Widget(),
        ),
        FFRoute(
          name: 'salmos_064',
          path: '/salmos064',
          builder: (context, params) => const Salmos064Widget(),
        ),
        FFRoute(
          name: 'salmos_063',
          path: '/salmos063',
          builder: (context, params) => const Salmos063Widget(),
        ),
        FFRoute(
          name: 'salmos_062',
          path: '/salmos062',
          builder: (context, params) => const Salmos062Widget(),
        ),
        FFRoute(
          name: 'salmos_061',
          path: '/salmos061',
          builder: (context, params) => const Salmos061Widget(),
        ),
        FFRoute(
          name: 'salmos_060',
          path: '/salmos060',
          builder: (context, params) => const Salmos060Widget(),
        ),
        FFRoute(
          name: 'salmos_059',
          path: '/salmos059',
          builder: (context, params) => const Salmos059Widget(),
        ),
        FFRoute(
          name: 'salmos_058',
          path: '/salmos058',
          builder: (context, params) => const Salmos058Widget(),
        ),
        FFRoute(
          name: 'salmos_056',
          path: '/salmos056',
          builder: (context, params) => const Salmos056Widget(),
        ),
        FFRoute(
          name: 'salmos_049',
          path: '/salmos049',
          builder: (context, params) => const Salmos049Widget(),
        ),
        FFRoute(
          name: 'salmos_050',
          path: '/salmos050',
          builder: (context, params) => const Salmos050Widget(),
        ),
        FFRoute(
          name: 'salmos_043',
          path: '/salmos043',
          builder: (context, params) => const Salmos043Widget(),
        ),
        FFRoute(
          name: 'salmos_044',
          path: '/salmos044',
          builder: (context, params) => const Salmos044Widget(),
        ),
        FFRoute(
          name: 'salmos_045',
          path: '/salmos045',
          builder: (context, params) => const Salmos045Widget(),
        ),
        FFRoute(
          name: 'salmos_046',
          path: '/salmos046',
          builder: (context, params) => const Salmos046Widget(),
        ),
        FFRoute(
          name: 'salmos_047',
          path: '/salmos047',
          builder: (context, params) => const Salmos047Widget(),
        ),
        FFRoute(
          name: 'salmos_051',
          path: '/salmos051',
          builder: (context, params) => const Salmos051Widget(),
        ),
        FFRoute(
          name: 'salmos_052',
          path: '/salmos052',
          builder: (context, params) => const Salmos052Widget(),
        ),
        FFRoute(
          name: 'salmos_053',
          path: '/salmos053',
          builder: (context, params) => const Salmos053Widget(),
        ),
        FFRoute(
          name: 'salmos_042',
          path: '/salmos042',
          builder: (context, params) => const Salmos042Widget(),
        ),
        FFRoute(
          name: 'salmos_041',
          path: '/salmos041',
          builder: (context, params) => const Salmos041Widget(),
        ),
        FFRoute(
          name: 'salmos_040',
          path: '/salmos040',
          builder: (context, params) => const Salmos040Widget(),
        ),
        FFRoute(
          name: 'salmos_039',
          path: '/salmos039',
          builder: (context, params) => const Salmos039Widget(),
        ),
        FFRoute(
          name: 'salmos_038',
          path: '/salmos038',
          builder: (context, params) => const Salmos038Widget(),
        ),
        FFRoute(
          name: 'salmos_037',
          path: '/salmos037',
          builder: (context, params) => const Salmos037Widget(),
        ),
        FFRoute(
          name: 'salmos_036',
          path: '/salmos036',
          builder: (context, params) => const Salmos036Widget(),
        ),
        FFRoute(
          name: 'salmos_035',
          path: '/salmos035',
          builder: (context, params) => const Salmos035Widget(),
        ),
        FFRoute(
          name: 'salmos_034',
          path: '/salmos034',
          builder: (context, params) => const Salmos034Widget(),
        ),
        FFRoute(
          name: 'salmos_033',
          path: '/salmos033',
          builder: (context, params) => const Salmos033Widget(),
        ),
        FFRoute(
          name: 'salmos_031',
          path: '/salmos031',
          builder: (context, params) => const Salmos031Widget(),
        ),
        FFRoute(
          name: 'salmos_030',
          path: '/salmos030',
          builder: (context, params) => const Salmos030Widget(),
        ),
        FFRoute(
          name: 'salmos_029',
          path: '/salmos029',
          builder: (context, params) => const Salmos029Widget(),
        ),
        FFRoute(
          name: 'salmos_099',
          path: '/salmos099',
          builder: (context, params) => const Salmos099Widget(),
        ),
        FFRoute(
          name: 'salmos_028',
          path: '/salmos028',
          builder: (context, params) => const Salmos028Widget(),
        ),
        FFRoute(
          name: 'salmos_027',
          path: '/salmos027',
          builder: (context, params) => const Salmos027Widget(),
        ),
        FFRoute(
          name: 'salmos_026',
          path: '/salmos026',
          builder: (context, params) => const Salmos026Widget(),
        ),
        FFRoute(
          name: 'salmos_025',
          path: '/salmos025',
          builder: (context, params) => const Salmos025Widget(),
        ),
        FFRoute(
          name: 'salmos_024',
          path: '/salmos024',
          builder: (context, params) => const Salmos024Widget(),
        ),
        FFRoute(
          name: 'salmos_023',
          path: '/salmos023',
          builder: (context, params) => const Salmos023Widget(),
        ),
        FFRoute(
          name: 'salmos_021',
          path: '/salmos021',
          builder: (context, params) => const Salmos021Widget(),
        ),
        FFRoute(
          name: 'salmos_020',
          path: '/salmos020',
          builder: (context, params) => const Salmos020Widget(),
        ),
        FFRoute(
          name: 'salmos_019',
          path: '/salmos019',
          builder: (context, params) => const Salmos019Widget(),
        ),
        FFRoute(
          name: 'salmos_018',
          path: '/salmos018',
          builder: (context, params) => const Salmos018Widget(),
        ),
        FFRoute(
          name: 'salmos_017',
          path: '/salmos017',
          builder: (context, params) => const Salmos017Widget(),
        ),
        FFRoute(
          name: 'salmos_016',
          path: '/salmos016',
          builder: (context, params) => const Salmos016Widget(),
        ),
        FFRoute(
          name: 'salmos_015',
          path: '/salmos015',
          builder: (context, params) => const Salmos015Widget(),
        ),
        FFRoute(
          name: 'salmos_014',
          path: '/salmos014',
          builder: (context, params) => const Salmos014Widget(),
        ),
        FFRoute(
          name: 'salmos_013',
          path: '/salmos013',
          builder: (context, params) => const Salmos013Widget(),
        ),
        FFRoute(
          name: 'salmos_012',
          path: '/salmos012',
          builder: (context, params) => const Salmos012Widget(),
        ),
        FFRoute(
          name: 'salmos_010',
          path: '/salmos010',
          builder: (context, params) => const Salmos010Widget(),
        ),
        FFRoute(
          name: 'salmos_009',
          path: '/salmos009',
          builder: (context, params) => const Salmos009Widget(),
        ),
        FFRoute(
          name: 'salmos_008',
          path: '/salmos008',
          builder: (context, params) => const Salmos008Widget(),
        ),
        FFRoute(
          name: 'salmos_007',
          path: '/salmos007',
          builder: (context, params) => const Salmos007Widget(),
        ),
        FFRoute(
          name: 'salmos_006',
          path: '/salmos006',
          builder: (context, params) => const Salmos006Widget(),
        ),
        FFRoute(
          name: 'salmos_002',
          path: '/salmos002',
          builder: (context, params) => const Salmos002Widget(),
        ),
        FFRoute(
          name: 'salmos_100',
          path: '/salmos100',
          builder: (context, params) => const Salmos100Widget(),
        ),
        FFRoute(
          name: 'salmos_101',
          path: '/salmos101',
          builder: (context, params) => const Salmos101Widget(),
        ),
        FFRoute(
          name: 'salmos_112',
          path: '/salmos112',
          builder: (context, params) => const Salmos112Widget(),
        ),
        FFRoute(
          name: 'salmos_122',
          path: '/salmos122',
          builder: (context, params) => const Salmos122Widget(),
        ),
        FFRoute(
          name: 'salmos_123',
          path: '/salmos123',
          builder: (context, params) => const Salmos123Widget(),
        ),
        FFRoute(
          name: 'salmos_124',
          path: '/salmos124',
          builder: (context, params) => const Salmos124Widget(),
        ),
        FFRoute(
          name: 'salmos_125',
          path: '/salmos125',
          builder: (context, params) => const Salmos125Widget(),
        ),
        FFRoute(
          name: 'salmos_126',
          path: '/salmos126',
          builder: (context, params) => const Salmos126Widget(),
        ),
        FFRoute(
          name: 'salmos_128',
          path: '/salmos128',
          builder: (context, params) => const Salmos128Widget(),
        ),
        FFRoute(
          name: 'salmos_129',
          path: '/salmos129',
          builder: (context, params) => const Salmos129Widget(),
        ),
        FFRoute(
          name: 'salmos_102',
          path: '/salmos102',
          builder: (context, params) => const Salmos102Widget(),
        ),
        FFRoute(
          name: 'salmos_103',
          path: '/salmos103',
          builder: (context, params) => const Salmos103Widget(),
        ),
        FFRoute(
          name: 'salmos_130',
          path: '/salmos130',
          builder: (context, params) => const Salmos130Widget(),
        ),
        FFRoute(
          name: 'salmos_104',
          path: '/salmos104',
          builder: (context, params) => const Salmos104Widget(),
        ),
        FFRoute(
          name: 'salmos_105',
          path: '/salmos105',
          builder: (context, params) => const Salmos105Widget(),
        ),
        FFRoute(
          name: 'salmos_106',
          path: '/salmos106',
          builder: (context, params) => const Salmos106Widget(),
        ),
        FFRoute(
          name: 'salmos_107',
          path: '/salmos107',
          builder: (context, params) => const Salmos107Widget(),
        ),
        FFRoute(
          name: 'salmos_108',
          path: '/salmos108',
          builder: (context, params) => const Salmos108Widget(),
        ),
        FFRoute(
          name: 'salmos_109',
          path: '/salmos109',
          builder: (context, params) => const Salmos109Widget(),
        ),
        FFRoute(
          name: 'salmos_110',
          path: '/salmos110',
          builder: (context, params) => const Salmos110Widget(),
        ),
        FFRoute(
          name: 'salmos_111',
          path: '/salmos111',
          builder: (context, params) => const Salmos111Widget(),
        ),
        FFRoute(
          name: 'salmos_113',
          path: '/salmos113',
          builder: (context, params) => const Salmos113Widget(),
        ),
        FFRoute(
          name: 'salmos_114',
          path: '/salmos114',
          builder: (context, params) => const Salmos114Widget(),
        ),
        FFRoute(
          name: 'salmos_115',
          path: '/salmos115',
          builder: (context, params) => const Salmos115Widget(),
        ),
        FFRoute(
          name: 'salmos_116',
          path: '/salmos116',
          builder: (context, params) => const Salmos116Widget(),
        ),
        FFRoute(
          name: 'salmos_117',
          path: '/salmos117',
          builder: (context, params) => const Salmos117Widget(),
        ),
        FFRoute(
          name: 'salmos_118',
          path: '/salmos118',
          builder: (context, params) => const Salmos118Widget(),
        ),
        FFRoute(
          name: 'salmos_119',
          path: '/salmos119',
          builder: (context, params) => const Salmos119Widget(),
        ),
        FFRoute(
          name: 'salmos_120',
          path: '/salmos120',
          builder: (context, params) => const Salmos120Widget(),
        ),
        FFRoute(
          name: 'salmos_121',
          path: '/salmos121',
          builder: (context, params) => const Salmos121Widget(),
        ),
        FFRoute(
          name: 'salmos_127',
          path: '/salmos127',
          builder: (context, params) => const Salmos127Widget(),
        ),
        FFRoute(
          name: 'salmos_131',
          path: '/salmos131',
          builder: (context, params) => const Salmos131Widget(),
        ),
        FFRoute(
          name: 'salmos_142',
          path: '/salmos142',
          builder: (context, params) => const Salmos142Widget(),
        ),
        FFRoute(
          name: 'salmos_144',
          path: '/salmos144',
          builder: (context, params) => const Salmos144Widget(),
        ),
        FFRoute(
          name: 'salmos_145',
          path: '/salmos145',
          builder: (context, params) => const Salmos145Widget(),
        ),
        FFRoute(
          name: 'salmos_146',
          path: '/salmos146',
          builder: (context, params) => const Salmos146Widget(),
        ),
        FFRoute(
          name: 'salmos_147',
          path: '/salmos147',
          builder: (context, params) => const Salmos147Widget(),
        ),
        FFRoute(
          name: 'salmos_148',
          path: '/salmos148',
          builder: (context, params) => const Salmos148Widget(),
        ),
        FFRoute(
          name: 'salmos_149',
          path: '/salmos149',
          builder: (context, params) => const Salmos149Widget(),
        ),
        FFRoute(
          name: 'salmos_150',
          path: '/salmos150',
          builder: (context, params) => const Salmos150Widget(),
        ),
        FFRoute(
          name: 'salmos_132',
          path: '/salmos132',
          builder: (context, params) => const Salmos132Widget(),
        ),
        FFRoute(
          name: 'salmos_133',
          path: '/salmos133',
          builder: (context, params) => const Salmos133Widget(),
        ),
        FFRoute(
          name: 'salmos_134',
          path: '/salmos134',
          builder: (context, params) => const Salmos134Widget(),
        ),
        FFRoute(
          name: 'salmos_135',
          path: '/salmos135',
          builder: (context, params) => const Salmos135Widget(),
        ),
        FFRoute(
          name: 'salmos_136',
          path: '/salmos136',
          builder: (context, params) => const Salmos136Widget(),
        ),
        FFRoute(
          name: 'salmos_137',
          path: '/salmos137',
          builder: (context, params) => const Salmos137Widget(),
        ),
        FFRoute(
          name: 'salmos_138',
          path: '/salmos138',
          builder: (context, params) => const Salmos138Widget(),
        ),
        FFRoute(
          name: 'salmos_139',
          path: '/salmos139',
          builder: (context, params) => const Salmos139Widget(),
        ),
        FFRoute(
          name: 'salmos_140',
          path: '/salmos140',
          builder: (context, params) => const Salmos140Widget(),
        ),
        FFRoute(
          name: 'salmos_141',
          path: '/salmos141',
          builder: (context, params) => const Salmos141Widget(),
        ),
        FFRoute(
          name: 'salmos_143',
          path: '/salmos143',
          builder: (context, params) => const Salmos143Widget(),
        ),
        FFRoute(
          name: 'Agenda_2024',
          path: '/agenda2024',
          builder: (context, params) => const Agenda2024Widget(),
        ),
        FFRoute(
          name: 'Agenda_2023',
          path: '/agenda2023',
          builder: (context, params) => const Agenda2023Widget(),
        ),
        FFRoute(
          name: 'salmos_055',
          path: '/salmos055',
          builder: (context, params) => const Salmos055Widget(),
        ),
        FFRoute(
          name: 'salmos_057',
          path: '/salmos057',
          builder: (context, params) => const Salmos057Widget(),
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
          fixStatusBarOniOS16AndBelow(context);
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
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
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

  static TransitionInfo appDefault() => const TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouter.of(context).location;
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}
