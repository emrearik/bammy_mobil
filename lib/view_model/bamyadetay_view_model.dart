import 'dart:convert';

import 'package:bammy_mobil/models/bamya_detay.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:mobx/mobx.dart';
part 'bamyadetay_view_model.g.dart';

class BamyaDetayViewModel = _BamyaDetayViewModelBase with _$BamyaDetayViewModel;

abstract class _BamyaDetayViewModelBase with Store {
  @observable
  List<BamyaDetay> bamyaDetayListesi = [];

  @observable
  bool isServiceRequrestLoading = false;

  @action
  Future<List> veriKaynaginiOku() async {
    changeRequest();
    var gelenJson = await rootBundle.loadString("assets/json/bamyaDetay.json");
    List<dynamic> decodedJson = json.decode(gelenJson);

    bamyaDetayListesi =
        decodedJson.map((bamya) => BamyaDetay.fromJson(bamya)).toList();

    changeRequest();
    return bamyaDetayListesi;
  }

  @action
  void changeRequest() {
    isServiceRequrestLoading = !isServiceRequrestLoading;
  }
}
