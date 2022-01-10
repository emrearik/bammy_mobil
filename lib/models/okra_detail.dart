// To parse this JSON data, do
//
//     final okraDetail = okraDetailFromJson(jsonString);

import 'dart:convert';

List<OkraDetail> okraDetailFromJson(String str) =>
    List<OkraDetail>.from(json.decode(str).map((x) => OkraDetail.fromJson(x)));

String okraDetailToJson(List<OkraDetail> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class OkraDetail {
  OkraDetail({
    this.okraType,
    this.okraImage,
    this.okraDetail,
  });

  String? okraType;
  String? okraImage;
  String? okraDetail;

  factory OkraDetail.fromJson(Map<String, dynamic> json) => OkraDetail(
        okraType: json["okra_type"],
        okraImage: json["okra_image"],
        okraDetail: json["okra_detail"],
      );

  Map<String, dynamic> toJson() => {
        "okra_type": okraType,
        "okra_image": okraImage,
        "okra_detail": okraDetail,
      };
}
