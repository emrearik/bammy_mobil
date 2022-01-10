import 'dart:convert';

import 'package:bammy_mobil/models/okra_statistics.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';

import 'package:mobx/mobx.dart';
part 'okrastatistics_view_model.g.dart';

class OkraStatisticsViewModel = _OkraStatisticsViewModelBase
    with _$OkraStatisticsViewModel;

abstract class _OkraStatisticsViewModelBase with Store {
  @observable
  List<OkraStatistics> okraStatisticsList = [];

  @action
  Future<List> readData() async {
    List<dynamic> decodedJson =
        json.decode(await rootBundle.loadString("assets/json/statistics.json"));

    okraStatisticsList =
        decodedJson.map((okra) => OkraStatistics.fromJson(okra)).toList();

    return okraStatisticsList;
  }
}
