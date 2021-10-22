// To parse this JSON data, do
//
//     final bamyaDetay = bamyaDetayFromJson(jsonString);

import 'dart:convert';

List<BamyaDetay> bamyaDetayFromJson(String str) =>
    List<BamyaDetay>.from(json.decode(str).map((x) => BamyaDetay.fromJson(x)));

String bamyaDetayToJson(List<BamyaDetay> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class BamyaDetay {
  BamyaDetay({
    this.bamyaTuru,
    this.bamyaResim,
    this.bamyaDetay,
  });

  String? bamyaTuru;
  String? bamyaResim;
  String? bamyaDetay;

  factory BamyaDetay.fromJson(Map<String, dynamic> json) => BamyaDetay(
        bamyaTuru: json["bamya_turu"],
        bamyaResim: json["bamya_resim"],
        bamyaDetay: json["bamya_detay"],
      );

  Map<String, dynamic> toJson() => {
        "bamya_turu": bamyaTuru,
        "bamya_resim": bamyaResim,
        "bamya_detay": bamyaDetay,
      };
}
