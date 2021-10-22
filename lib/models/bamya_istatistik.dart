// To parse this JSON data, do
//
//     final okraStatistics = okraStatisticsFromJson(jsonString);

import 'dart:convert';

List<OkraStatistics> okraStatisticsFromJson(String str) =>
    List<OkraStatistics>.from(
        json.decode(str).map((x) => OkraStatistics.fromJson(x)));

String okraStatisticsToJson(List<OkraStatistics> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class OkraStatistics {
  OkraStatistics({
    this.bamyaTuru,
    this.bamyaResim,
    this.toplamaTarihi,
    this.toplamaSuresi,
    this.toplamaMiktari,
    this.sonrakiToplamaTarihi,
  });

  String? bamyaTuru;
  String? bamyaResim;
  String? toplamaTarihi;
  String? toplamaSuresi;
  String? toplamaMiktari;
  String? sonrakiToplamaTarihi;

  factory OkraStatistics.fromJson(Map<String, dynamic> json) => OkraStatistics(
        bamyaTuru: json["bamya_turu"],
        bamyaResim: json["bamya_resim"],
        toplamaTarihi: json["toplama_tarihi"],
        toplamaSuresi: json["toplama_suresi"],
        toplamaMiktari: json["toplama_miktari"],
        sonrakiToplamaTarihi: json["sonraki_toplama_tarihi"],
      );

  Map<String, dynamic> toJson() => {
        "bamya_turu": bamyaTuru,
        "bamya_resim": bamyaResim,
        "toplama_tarihi": toplamaTarihi,
        "toplama_suresi": toplamaSuresi,
        "toplama_miktari": toplamaMiktari,
        "sonraki_toplama_tarihi": sonrakiToplamaTarihi,
      };
}
