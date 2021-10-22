// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bamyadetay_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$BamyaDetayViewModel on _BamyaDetayViewModelBase, Store {
  final _$bamyaDetayListesiAtom =
      Atom(name: '_BamyaDetayViewModelBase.bamyaDetayListesi');

  @override
  List<BamyaDetay> get bamyaDetayListesi {
    _$bamyaDetayListesiAtom.reportRead();
    return super.bamyaDetayListesi;
  }

  @override
  set bamyaDetayListesi(List<BamyaDetay> value) {
    _$bamyaDetayListesiAtom.reportWrite(value, super.bamyaDetayListesi, () {
      super.bamyaDetayListesi = value;
    });
  }

  final _$isServiceRequrestLoadingAtom =
      Atom(name: '_BamyaDetayViewModelBase.isServiceRequrestLoading');

  @override
  bool get isServiceRequrestLoading {
    _$isServiceRequrestLoadingAtom.reportRead();
    return super.isServiceRequrestLoading;
  }

  @override
  set isServiceRequrestLoading(bool value) {
    _$isServiceRequrestLoadingAtom
        .reportWrite(value, super.isServiceRequrestLoading, () {
      super.isServiceRequrestLoading = value;
    });
  }

  final _$veriKaynaginiOkuAsyncAction =
      AsyncAction('_BamyaDetayViewModelBase.veriKaynaginiOku');

  @override
  Future<List<dynamic>> veriKaynaginiOku() {
    return _$veriKaynaginiOkuAsyncAction.run(() => super.veriKaynaginiOku());
  }

  final _$_BamyaDetayViewModelBaseActionController =
      ActionController(name: '_BamyaDetayViewModelBase');

  @override
  void changeRequest() {
    final _$actionInfo = _$_BamyaDetayViewModelBaseActionController.startAction(
        name: '_BamyaDetayViewModelBase.changeRequest');
    try {
      return super.changeRequest();
    } finally {
      _$_BamyaDetayViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
bamyaDetayListesi: ${bamyaDetayListesi},
isServiceRequrestLoading: ${isServiceRequrestLoading}
    ''';
  }
}
