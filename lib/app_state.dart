import 'package:flutter/material.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  String _QuebraLinha = '';
  String get QuebraLinha => _QuebraLinha;
  set QuebraLinha(String value) {
    _QuebraLinha = value;
  }

  LatLng? _localSede = const LatLng(-23.5871319, -46.4059184);
  LatLng? get localSede => _localSede;
  set localSede(LatLng? value) {
    _localSede = value;
  }

  LatLng? _localCityConceicao = const LatLng(-23.5780541, -46.39195840000001);
  LatLng? get localCityConceicao => _localCityConceicao;
  set localCityConceicao(LatLng? value) {
    _localCityConceicao = value;
  }

  LatLng? _localBarroBranco = const LatLng(-23.5823485, -46.39173379999999);
  LatLng? get localBarroBranco => _localBarroBranco;
  set localBarroBranco(LatLng? value) {
    _localBarroBranco = value;
  }

  LatLng? _localCachoeiraDaSorte = const LatLng(-23.5835485, -46.3985272);
  LatLng? get localCachoeiraDaSorte => _localCachoeiraDaSorte;
  set localCachoeiraDaSorte(LatLng? value) {
    _localCachoeiraDaSorte = value;
  }

  LatLng? _localCastroAlves = const LatLng(-23.5791204, -46.4044832);
  LatLng? get localCastroAlves => _localCastroAlves;
  set localCastroAlves(LatLng? value) {
    _localCastroAlves = value;
  }

  LatLng? _localCastro2 = const LatLng(-23.5807408, -46.4037797);
  LatLng? get localCastro2 => _localCastro2;
  set localCastro2(LatLng? value) {
    _localCastro2 = value;
  }

  LatLng? _localCohabEtelvina = const LatLng(-23.5897692, -46.4118857);
  LatLng? get localCohabEtelvina => _localCohabEtelvina;
  set localCohabEtelvina(LatLng? value) {
    _localCohabEtelvina = value;
  }

  LatLng? _localCongPrestesMaia = const LatLng(-23.5663739, -46.4104963);
  LatLng? get localCongPrestesMaia => _localCongPrestesMaia;
  set localCongPrestesMaia(LatLng? value) {
    _localCongPrestesMaia = value;
  }

  LatLng? _localCongFazendaDoCarmo = const LatLng(-23.571094, -46.41684840000001);
  LatLng? get localCongFazendaDoCarmo => _localCongFazendaDoCarmo;
  set localCongFazendaDoCarmo(LatLng? value) {
    _localCongFazendaDoCarmo = value;
  }

  LatLng? _localInacioMonteiro = const LatLng(-23.5703435, -46.398421);
  LatLng? get localInacioMonteiro => _localInacioMonteiro;
  set localInacioMonteiro(LatLng? value) {
    _localInacioMonteiro = value;
  }

  LatLng? _localJardimPaulistinha = const LatLng(-23.5803924, -46.4090159);
  LatLng? get localJardimPaulistinha => _localJardimPaulistinha;
  set localJardimPaulistinha(LatLng? value) {
    _localJardimPaulistinha = value;
  }

  LatLng? _localJardimPedraBranca = const LatLng(-23.5772875, -46.418171);
  LatLng? get localJardimPedraBranca => _localJardimPedraBranca;
  set localJardimPedraBranca(LatLng? value) {
    _localJardimPedraBranca = value;
  }

  LatLng? _localJardimPerola = const LatLng(-23.5862336, -46.38324619999999);
  LatLng? get localJardimPerola => _localJardimPerola;
  set localJardimPerola(LatLng? value) {
    _localJardimPerola = value;
  }

  LatLng? _localJSouzaRamos = const LatLng(-23.5857172, -46.41282289999999);
  LatLng? get localJSouzaRamos => _localJSouzaRamos;
  set localJSouzaRamos(LatLng? value) {
    _localJSouzaRamos = value;
  }

  LatLng? _localJVitoria = const LatLng(-23.589339, -46.38908109999999);
  LatLng? get localJVitoria => _localJVitoria;
  set localJVitoria(LatLng? value) {
    _localJVitoria = value;
  }

  LatLng? _localJWilmaFlor = const LatLng(-23.5738364, -46.395832);
  LatLng? get localJWilmaFlor => _localJWilmaFlor;
  set localJWilmaFlor(LatLng? value) {
    _localJWilmaFlor = value;
  }

  LatLng? _localSerraDagua = const LatLng(-23.5869691, -46.3783986);
  LatLng? get localSerraDagua => _localSerraDagua;
  set localSerraDagua(LatLng? value) {
    _localSerraDagua = value;
  }

  LatLng? _localTiradentes15C = const LatLng(-23.6022324, -46.3995026);
  LatLng? get localTiradentes15C => _localTiradentes15C;
  set localTiradentes15C(LatLng? value) {
    _localTiradentes15C = value;
  }

  LatLng? _localTiradentesDG = const LatLng(-23.5866137, -46.4016944);
  LatLng? get localTiradentesDG => _localTiradentesDG;
  set localTiradentesDG(LatLng? value) {
    _localTiradentesDG = value;
  }

  LatLng? _localTiradentesFerroviarios = const LatLng(-23.6007067, -46.3938251);
  LatLng? get localTiradentesFerroviarios => _localTiradentesFerroviarios;
  set localTiradentesFerroviarios(LatLng? value) {
    _localTiradentesFerroviarios = value;
  }

  LatLng? _localVila1DeMaio = const LatLng(-23.5803416, -46.3839683);
  LatLng? get localVila1DeMaio => _localVila1DeMaio;
  set localVila1DeMaio(LatLng? value) {
    _localVila1DeMaio = value;
  }

  LatLng? _localFonteNova = const LatLng(-23.5763466, -46.3908567);
  LatLng? get localFonteNova => _localFonteNova;
  set localFonteNova(LatLng? value) {
    _localFonteNova = value;
  }

  LatLng? _localFerreiraDaRocha = const LatLng(-23.5777332, -46.3861015);
  LatLng? get localFerreiraDaRocha => _localFerreiraDaRocha;
  set localFerreiraDaRocha(LatLng? value) {
    _localFerreiraDaRocha = value;
  }
}
