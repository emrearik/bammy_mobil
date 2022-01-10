// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'okradetail_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$OkraDetailViewModel on _OkraDetailViewModelBase, Store {
  final _$okraDetailsListAtom =
      Atom(name: '_OkraDetailViewModelBase.okraDetailsList');

  @override
  List<OkraDetail> get okraDetailsList {
    _$okraDetailsListAtom.reportRead();
    return super.okraDetailsList;
  }

  @override
  set okraDetailsList(List<OkraDetail> value) {
    _$okraDetailsListAtom.reportWrite(value, super.okraDetailsList, () {
      super.okraDetailsList = value;
    });
  }

  final _$isServiceRequestLoadingAtom =
      Atom(name: '_OkraDetailViewModelBase.isServiceRequestLoading');

  @override
  bool get isServiceRequestLoading {
    _$isServiceRequestLoadingAtom.reportRead();
    return super.isServiceRequestLoading;
  }

  @override
  set isServiceRequestLoading(bool value) {
    _$isServiceRequestLoadingAtom
        .reportWrite(value, super.isServiceRequestLoading, () {
      super.isServiceRequestLoading = value;
    });
  }

  final _$getDataSourceAsyncAction =
      AsyncAction('_OkraDetailViewModelBase.getDataSource');

  @override
  Future<List<dynamic>> getDataSource() {
    return _$getDataSourceAsyncAction.run(() => super.getDataSource());
  }

  final _$_OkraDetailViewModelBaseActionController =
      ActionController(name: '_OkraDetailViewModelBase');

  @override
  void changeRequest() {
    final _$actionInfo = _$_OkraDetailViewModelBaseActionController.startAction(
        name: '_OkraDetailViewModelBase.changeRequest');
    try {
      return super.changeRequest();
    } finally {
      _$_OkraDetailViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
okraDetailsList: ${okraDetailsList},
isServiceRequestLoading: ${isServiceRequestLoading}
    ''';
  }
}
