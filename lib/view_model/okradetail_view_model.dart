import 'dart:convert';

import 'package:bammy_mobil/models/okra_detail.dart';
import 'package:flutter/services.dart';
import 'package:mobx/mobx.dart';
part 'okradetail_view_model.g.dart';

class OkraDetailViewModel = _OkraDetailViewModelBase with _$OkraDetailViewModel;

abstract class _OkraDetailViewModelBase with Store {
  @observable
  List<OkraDetail> okraDetailsList = [];

  @observable
  bool isServiceRequestLoading = false;

  @action
  Future<List> getDataSource() async {
    changeRequest();
    var jsonData = await rootBundle.loadString("assets/json/okra_detail.json");
    List<dynamic> decodedJson = json.decode(jsonData);

    okraDetailsList =
        decodedJson.map((okra) => OkraDetail.fromJson(okra)).toList();

    changeRequest();
    return okraDetailsList;
  }

  @action
  void changeRequest() {
    isServiceRequestLoading = !isServiceRequestLoading;
  }
}
