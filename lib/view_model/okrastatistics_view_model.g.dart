// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'okrastatistics_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$OkraStatisticsViewModel on _OkraStatisticsViewModelBase, Store {
  final _$okraStatisticsListAtom =
      Atom(name: '_OkraStatisticsViewModelBase.okraStatisticsList');

  @override
  List<OkraStatistics> get okraStatisticsList {
    _$okraStatisticsListAtom.reportRead();
    return super.okraStatisticsList;
  }

  @override
  set okraStatisticsList(List<OkraStatistics> value) {
    _$okraStatisticsListAtom.reportWrite(value, super.okraStatisticsList, () {
      super.okraStatisticsList = value;
    });
  }

  final _$readDataAsyncAction =
      AsyncAction('_OkraStatisticsViewModelBase.readData');

  @override
  Future<List<dynamic>> readData() {
    return _$readDataAsyncAction.run(() => super.readData());
  }

  @override
  String toString() {
    return '''
okraStatisticsList: ${okraStatisticsList}
    ''';
  }
}
