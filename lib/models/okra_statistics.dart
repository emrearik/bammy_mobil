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
    this.okraType,
    this.okraImage,
    this.collectedDate,
    this.collectedTime,
    this.collectedAmount,
    this.nextCollectedDate,
  });

  String? okraType;
  String? okraImage;
  String? collectedDate;
  String? collectedTime;
  String? collectedAmount;
  String? nextCollectedDate;

  factory OkraStatistics.fromJson(Map<String, dynamic> json) => OkraStatistics(
        okraType: json["okra_type"],
        okraImage: json["okra_image"],
        collectedDate: json["collected_date"],
        collectedTime: json["collected_time"],
        collectedAmount: json["collected_amount"],
        nextCollectedDate: json["next_collected_date"],
      );

  Map<String, dynamic> toJson() => {
        "okra_type": okraType,
        "okra_image": okraImage,
        "collected_date": collectedDate,
        "collected_time": collectedTime,
        "collected_amount": collectedAmount,
        "next_collected_date": nextCollectedDate,
      };
}
