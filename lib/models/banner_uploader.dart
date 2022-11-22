// To parse this JSON data, do
//
//     final bannerUploaderModel = bannerUploaderModelFromJson(jsonString);

import 'dart:convert';

BannerUploaderModel bannerUploaderModelFromJson(String str) => BannerUploaderModel.fromJson(json.decode(str));

String bannerUploaderModelToJson(BannerUploaderModel data) => json.encode(data.toJson());

class BannerUploaderModel {
  BannerUploaderModel({
    this.res,
  });

  String? res;

  factory BannerUploaderModel.fromJson(Map<String, dynamic> json) => BannerUploaderModel(
    res: json["res"] == null ? null : json["res"],
  );

  Map<String, dynamic> toJson() => {
    "res": res == null ? null : res,
  };
}
